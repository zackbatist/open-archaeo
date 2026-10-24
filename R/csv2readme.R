library(glue)
library(dplyr)
library(readr)
x <- readr::read_csv("open-archaeo.csv")
x <- arrange(x, item_name)

# Helper to format a vector of strings in English list format: "A", "A and B", "A, B and C"
format_and_list <- function(items) {
  items <- items[!is.na(items) & items != ""]
  n <- length(items)
  if (n == 0) return("")
  if (n == 1) return(items[1])
  if (n == 2) return(paste(items[1], "and", items[2]))
  paste0(paste(items[1:(n - 1)], collapse = ", "), " and ", items[n])
}

# concatenate authors dynamically
author_cols <- grep("^author[0-9]+_name$", names(x), value = TRUE)
x$author_list <- apply(as.data.frame(x[, author_cols]), 1, format_and_list)

# concatenate links
x$github <- paste("[GitHub](",x$github,")", sep = "")
x$gist <- paste("[Gist](",x$gist,")", sep = "")
x$gitlab <- paste("[GitLab](",x$gitlab,")", sep = "")
x$bitbucket <- paste("[BitBucket](",x$bitbucket,")", sep = "")
x$launchpad <- paste("[LaunchPad](",x$launchpad,")", sep = "")
x$twitter <- paste("[Twitter](",x$twitter,")", sep = "")
x$youtube <- paste("[YouTube](",x$youtube,")", sep = "")
x$blogpost <- paste("[Blog Post](",x$blogpost,")", sep = "")
x$cran <- paste("[CRAN](",x$cran,")", sep = "")
x$pypi <- paste("[PyPi](",x$pypi,")", sep = "")
x$codeberg <- paste("[Codeberg](",x$codeberg,")", sep = "")
x$website <- paste("[Website](",x$website,")", sep = "")
x$publication <- paste("[Publication](",x$publication,")", sep = "")
x$DOI <- paste("[DOI](https://doi.org/",x$DOI,")", sep = "")

x$github <- gsub("[GitHub](NA)",NA,x$github, fixed = TRUE)
x$gist <- gsub("[Gist](NA)",NA,x$gist, fixed = TRUE)
x$gitlab <- gsub("[GitLab](NA)",NA,x$gitlab, fixed = TRUE)
x$bitbucket <- gsub("[BitBucket](NA)",NA,x$bitbucket, fixed = TRUE)
x$launchpad <- gsub("[LaunchPad](NA)",NA,x$launchpad, fixed = TRUE)
x$twitter <- gsub("[Twitter](NA)",NA,x$twitter, fixed = TRUE)
x$youtube <- gsub("[YouTube](NA)",NA,x$youtube, fixed = TRUE)
x$blogpost <- gsub("[Blog Post](NA)",NA,x$blogpost, fixed = TRUE)
x$cran <- gsub("[CRAN](NA)",NA,x$cran, fixed = TRUE)
x$pypi <- gsub("[PyPi](NA)",NA,x$pypi, fixed = TRUE)
x$codeberg <- gsub("[Codeberg](NA)",NA,x$codeberg, fixed = TRUE)
x$website <- gsub("[Website](NA)",NA,x$website, fixed = TRUE)
x$publication <- gsub("[Publication](NA)",NA,x$publication, fixed = TRUE)
x$DOI <- gsub("[DOI](https://doi.org/NA)",NA,x$DOI, fixed = TRUE)

x$link_list <- paste(x$github, x$gist, x$gitlab, x$bitbucket, x$launchpad, x$twitter, x$youtube, x$blogpost, x$cran, x$pypi, x$codeberg, x$website, x$publication, x$DOI)
x$link_list <- gsub("NA","",x$link_list,fixed = TRUE)
x$link_list <- gsub(")][[",")] | [[",x$link_list,fixed = TRUE)
x$link_list <- trimws(x$link_list)

# concatenate tags dynamically
format_tag_list <- function(tags) {
  tags <- tags[!is.na(tags) & tags != ""]
  if (length(tags) == 0) return("")
  format_and_list(paste0("[", tags, "]"))
}

tag_cols <- grep("^tag[0-9]+$", names(x), value = TRUE)
x$tag_list <- apply(as.data.frame(x[, tag_cols]), 1, format_tag_list)

# put it all together
z <- glue("
* **{x$item_name}**: {x$description}
  * by: {x$author_list}
  * links: {x$link_list}
  * tags: {x$tag_list}
  
----

")

intro <- read_file("ABOUT.md")

# export
fileConn<-file("list.md")
writeLines(z, fileConn)
close(fileConn)

plainList <- read_file("list.md")
readme <- paste(intro,plainList, sep="\n")

fileConn<-file("README.md")
writeLines(readme, fileConn)
close(fileConn)
