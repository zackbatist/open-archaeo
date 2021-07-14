# ##############################
#      open-archaeo
#      Pull Internet Archive Metadata via API and Join to Website Data
#      Dean Arcega
#      July 7, 2021
# ##############################

rm(list=ls())

# # Install packages --------------
# # Download internetarchive package tarball from CRAN archive
# url <- "https://cran.r-project.org/src/contrib/Archive/internetarchive/internetarchive_0.1.6.tar.gz"
# pkgFile <- "internetarchive_0.1.6.tar.gz"
# download.file(url = url, destfile = pkgFile)
# 
# # Install dependencies
# install.packages(c("R6", "askpass", "cli", "crayon,", "curl", "dplyr", 
#                    "ellipsis", "fansi", "generics", "glue", "httr", "jsonlite",
#                    "lifecycle", "magrittr", "mime", "openssl", "pillar", 
#                    "pkgconfig", "purrr", "rlang", "sys", "tibble", "tidyselect", 
#                    "utf8", "vctrs"))
# 
# # Install package
# install.packages(pkgs=pkgFile, type="source", repos=NULL)
# 
# # Delete package tarball
# unlink(pkgFile)

library(internetarchive)
library(reshape)
library("dplyr", warn.conflicts = FALSE)

# Read open-archaeo masterlist from github --------------------------------
git_csv <- "https://raw.githubusercontent.com/zackbatist/open-archaeo/master/open-archaeo.csv"
open_archaeo <- as_tibble(read.csv(git_csv)) 
open_archaeo <- mutate(open_archaeo, 
                       rownumber = as.numeric(rownames(open_archaeo)))

#Drop misentries
open_archaeo <- open_archaeo[!grepl("ArchJobCAD", open_archaeo$item_name) | !grepl("chrinne", open_archaeo$author1_name),]
query_total <- nrow(open_archaeo) #number of query results for internet archive API

#URL redirects
open_archaeo$github <- gsub("https://github.com/RLumSK/Al2O3_AnalysisApp", "https://github.com/crp2a/Al2O3_AnalysisApp", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/ahb108/rtefact", "https://github.com/ahb108/rtfact", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/Arothron/Arothron", "https://github.com/AProfico/Arothron", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/steko/archaeology", "https://github.com/archaeology/archaeology", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/steko/archvocab", "https://github.com/archaeology/archvocab", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/R-Lum/BayLum", "https://github.com/crp2a/BayLum", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/paleocore/paleocore", "https://github.com/paleocore/paleocore-retired", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/paleolimbot/mudata", "https://github.com/paleolimbot/mudata2", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/poseidon-framework", "https://github.com/poseidon-framework/poseidon-hs", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/R-Lum/Rcarb", "https://github.com/R-Lum/RCarb", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/ISAAKiel/c14bazAAR", "https://github.com/ropensci/c14bazAAR", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/adammertel/gods_on_the_barge", "https://github.com/adammertel/gods-on-the-barge", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/paleolimbot/xrf", "https://github.com/paleolimbot/xrftools", open_archaeo$github) 

#URL variations
open_archaeo$github <- gsub("https://github.com/dstreble/shiny_Tldating", "https://github.com/dstreble/shiny_TLdating", open_archaeo$github) 
open_archaeo$github <- gsub("https://github.com/dstreble/Tldating", "https://github.com/dstreble/TLdating", open_archaeo$github) 

#Deprecated URLs
open_archaeo$github <- gsub("https://github.com/paleocore/paleocore-retiredR", "https://github.com/paleocore/paleocoreR", open_archaeo$github) 

#Wrong URLs
open_archaeo$github <- ifelse(grepl("Ark2", open_archaeo$item_name), gsub("https://github.com/lparchaeology/ARK1", "https://github.com/lparchaeology/ARK2", open_archaeo$github), open_archaeo$github)

# Create internet archive metadataset via API -----------------------------
#Generate metadataset from open-archaeo collection
metadata <- ia_search(c(collection = "open-archaeo"), num_results = query_total) %>% #query results
  ia_get_items() %>% 
  ia_metadata() %>% #pull metadata
  as_tibble()

#Reshape  
metadata <- cast(metadata, id~field, value = metadata$value)

#Create internet archive link column
metadata <- mutate(metadata, internetarchive = paste0("https://archive.org/details/", id))

#Keep only relevant columns and observations
metadata <- metadata[!grepl("github.com-ISAAKiel-ArchJobCAD_-_2016-06-17_06-08-09", metadata$id),] %>% #older version, there is a newer one
  subset(select = c(id, creator, originalurl, internetarchive)) 

#Deprecated URL
metadata$originalurl <- gsub("https://github.com/apeltzer/EAGER-GUI", "https://github.com/nf-core/eager", metadata$originalurl)

#URL redirects
metadata$originalurl <- ifelse(grepl("benmarwick", metadata$creator), gsub("https://gist.github.com/", "https://gist.github.com/benmarwick/", metadata$originalurl), metadata$originalurl)
  
# Join by URLs -------------------------------------------------
#Create link id key
open_archaeo <- open_archaeo %>%
  mutate(originalurl = github) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", gitlab, originalurl)) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", codeberg, originalurl))%>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", gist, originalurl)) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", website, originalurl)) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", bitbucket, originalurl)) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", cran, originalurl)) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", blogpost, originalurl)) %>%
  mutate(open_archaeo, originalurl = ifelse(originalurl %in% "", launchpad, originalurl))

#Remove trailing /
open_archaeo$originalurl <- gsub('\\/$', '', open_archaeo$originalurl)

#Check if no missing links and all unique
stopifnot(sum(open_archaeo$originalurl == "") == 0)

# dups <- open_archaeo[open_archaeo$originalurl %in% open_archaeo$originalurl
#                 [duplicated(open_archaeo$originalurl)],]
#write.csv(dups, "C:/Users/Dean/Desktop/open-archaeo_duplicate_urls.csv")

#Subset non-missings
open_archaeo_link <- subset(open_archaeo, open_archaeo$originalurl != "")

#Duplicate count
sum(duplicated(metadata$originalurl)) #ID
sum(duplicated(open_archaeo_link)) #No dups 
## No dups, so they are both unique IDs!

#Join by links
open_archaeo_link <- left_join(open_archaeo, metadata, by = "originalurl")

#Subset failed matches
open_archaeo_link_miss <- subset(open_archaeo_link, is.na(open_archaeo_link$internetarchive)) %>%
  subset(select = -c(id, creator, originalurl, internetarchive)) #These have yet to be uploaded to IA/have mismatched URLs

metadata_link <- left_join(metadata, open_archaeo, by = "originalurl")
metadata_link <-  subset(metadata_link, is.na(metadata_link$item_name)) %>%
  subset(select = c(id, creator, originalurl, internetarchive)) 

#Check that all IA items have been matched
stopifnot(nrow(metadata_link) == 0)
rm(metadata_link)

#Check if no missing IA links
#stopifnot(sum(is.na(open_archaeo_link$internetarchive)) == 0)
open_ia <- subset(open_archaeo_link, !is.na(open_archaeo_link$internetarchive))
stopifnot(nrow(open_ia) == nrow(open_archaeo_link))
rm(open_archaeo_link)

# Quality Checks ----------------------------------------------------------
#No IA duplicate
stopifnot(sum(duplicated(open_ia$internetarchive)) == 0)

# dups <- open_ia[open_ia$internetarchive %in% open_ia$internetarchive
#                 [duplicated(open_ia$internetarchive)],]

#Bind those with no IA metadata yet
open_ia <- bind_rows(open_ia, open_archaeo_link_miss)
stopifnot(nrow(open_archaeo) == nrow(open_ia))
stopifnot(sum(duplicated(open_archaeo$rownumber)) == 0)

#Finalize dataset
open_ia <- open_ia[order(open_ia$rownumber),] %>%
  subset(select = -c(rownumber, originalurl, id, creator))

#Save to file
write.csv(open_ia, "C:/Users/Dean/Desktop/open-archaeo_internet-archive.csv", na = "")


# Trash Code --------------------------------------------------------------
### Round 2: Creator and Title ###
# #Subset to only unmatched after round 1
# open_archaeo_link_miss
# 
# sum(duplicated(open_archaeo_creator$author1_name)) #check if there are duplicates
# 
# #Subset IA metadata to unique authors
# metadata_creator <- metadata[!duplicated(metadata$creator),]
# 
# metadata_link 
# 
# sum(duplicated(metadata_creator$creator)) #check if there are duplicates
# 
# #Join by creator/author and namne? (Creates dups if only creator)
# open_archaeo_creator <- left_join(open_archaeo_creator, metadata_creator, by = c("author1_name" = "creator"))
# 
# #Subset failed matches
# open_archaeo_creator_miss <- subset(open_archaeo_creator, is.na(open_archaeo_creator$internetarchive)) %>%
#   subset(select = -c(internetarchive)) 
# 
# #Subset successful matches
# open_archaeo_creator <- subset(open_archaeo_creator, !is.na(open_archaeo_creator$internetarchive))
# 
### Patch all back together ###
# open_ia <- bind_rows(open_archaeo_link, open_archaeo_creator)
# sum(is.na(open_ia$internetarchive)) #Check if no missing IA links
# 
# open_ia <- bind_rows(open_ia, open_archaeo_creator_miss)
# sum(is.na(open_ia$internetarchive)) #Check if matches number of obs in open_archaeo_creator_miss
# 
# #What didn't get matched
# open_ia_miss <- open_ia[is.na(open_ia$internetarchive),] #Remaining unmatched remains to be uploaded to IA
# 
# #Why are there 4 extra observations?
# check <- left_join(metadata, open_ia, by = "internetarchive")
# 
# 
# 
# duplicated(open_ia[!is.na(open_ia$internetarchive),]$internetarchive)
# 
# dups <- open_ia[open_ia$internetarchive %in% open_ia$internetarchive
#                 [duplicated(open_ia$internetarchive)],]
# 
# dups <- dups[order(dups$internetarchive),]

