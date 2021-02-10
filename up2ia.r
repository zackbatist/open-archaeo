# This code batch uploads git repositories hosted on GitHub onto the Internet Archive

# Requires https://github.com/gdamdam/iagitup to be installed locally
# Run iagitup at least once outside R to authenticate archive.org username and password
# iagitup currently only works with git repos hosted on GitHub, need to explore other options for alternative hosts

library(dplyr)
library(readr)
library(stringr)
library(internetarchive)

open_archaeo <- readr::read_csv("open-archaeo.csv")
open_archaeo_gh <- filter(open_archaeo,github!="")
open_archaeo_gh <- tail(open_archaeo_gh, -10)

for (i in open_archaeo_gh$github) {
  system(paste0("iagitup ",i))
}

user <- basename(dirname(open_archaeo_gh$github))
repo <- basename(open_archaeo_gh$github)
for (i in open_archaeo_gh$github) {
  ia_keyword <- paste0("github.com-",user,"-",repo)
}

for (i in ia_keyword) {
  ia_title <- as.character(ia_keyword_search(ia_keyword[i], num_results = 1))
  ia_url <- paste0("https://archive.org/details/",ia_title)
  open_archaeo_gh$ia[i] <- ia_url
}

open_archaeo$ia[!is.na(open_archaeo$github)] <- open_archaeo_gh$ia
readr::write_csv(open_archaeo, "open-archaeo.csv")


