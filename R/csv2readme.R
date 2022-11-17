library(glue)
library(dplyr)
library(readr)
x <- readr::read_csv("open-archaeo.csv")
x <- arrange(x, item_name)

# concatenate authors
x$author_list1 <- ifelse(!is.na(x$author1_name) &
                           is.na(x$author2_name) &
                           is.na(x$author3_name) &
                           is.na(x$author4_name) &
                           is.na(x$author5_name),
                         paste(x$author1_name),
                         NA)

x$author_list2 <- ifelse(!is.na(x$author1_name) &
                           !is.na(x$author2_name) &
                           is.na(x$author3_name) &
                           is.na(x$author4_name) &
                           is.na(x$author5_name),
                         paste(x$author1_name," and ",x$author2_name, sep = ""),
                         NA)

x$author_list3 <- ifelse(!is.na(x$author1_name) &
                           !is.na(x$author2_name) &
                           !is.na(x$author3_name) &
                           is.na(x$author4_name) &
                           is.na(x$author5_name),
                         paste(x$author1_name,", ",x$author2_name," and ",x$author3_name, sep = ""),
                         NA)

x$author_list4 <- ifelse(!is.na(x$author1_name) &
                           !is.na(x$author2_name) &
                           !is.na(x$author3_name) &
                           !is.na(x$author4_name) &
                           is.na(x$author5_name),
                         paste(x$author1_name,", ",x$author2_name,", ",x$author3_name," and ",x$author4_name, sep = ""),
                         NA)

x$author_list5 <- ifelse(!is.na(x$author1_name) &
                           !is.na(x$author2_name) &
                           !is.na(x$author3_name) &
                           !is.na(x$author4_name) &
                           !is.na(x$author5_name),
                         paste(x$author1_name,", ",x$author2_name,", ",x$author3_name,", ",x$author4_name, " and ", x$author5_name, sep = ""),
                         NA)

x$author_list <- coalesce(x$author_list1, x$author_list2, x$author_list3, x$author_list4, x$author_list5)

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


x$link_list <- paste(x$github, x$gist, x$gitlab, x$bitbucket, x$launchpad, x$twitter, x$youtube, x$blogpost, x$cran, x$pypi, x$codeberg, x$website, x$DOI)
x$link_list <- gsub("NA","",x$link_list,fixed = TRUE)
x$link_list <- gsub(")][[",")] | [[",x$link_list,fixed = TRUE)
x$link_list <- trimws(x$link_list)

# concatenate tags
x$tag1 <- paste("[",x$tag1,"]", sep = "")
x$tag2 <- paste("[",x$tag2,"]", sep = "")
x$tag3 <- paste("[",x$tag3,"]", sep = "")
x$tag4 <- paste("[",x$tag4,"]", sep = "")
x$tag5 <- paste("[",x$tag5,"]", sep = "")

x$tag1 <- gsub("[NA]",NA,x$tag1)
x$tag2 <- gsub("[NA]",NA,x$tag2)
x$tag3 <- gsub("[NA]",NA,x$tag3)
x$tag4 <- gsub("[NA]",NA,x$tag4)
x$tag5 <- gsub("[NA]",NA,x$tag5)


x$tag_list1 <- ifelse(!is.na(x$tag1) &
                        is.na(x$tag2) &
                        is.na(x$tag3) &
                        is.na(x$tag4) &
                        is.na(x$tag5),
                      paste(x$tag1),
                      NA)

x$tag_list2 <- ifelse(!is.na(x$tag1) &
                        !is.na(x$tag2) &
                        is.na(x$tag3) &
                        is.na(x$tag4) &
                        is.na(x$tag5),
                      paste(x$tag1," and ",x$tag2, sep = ""),
                      NA)

x$tag_list3 <- ifelse(!is.na(x$tag1) &
                        !is.na(x$tag2) &
                        !is.na(x$tag3) &
                        is.na(x$tag4) &
                        is.na(x$tag5),
                      paste(x$tag1,", ",x$tag2," and ",x$tag3, sep = ""),
                      NA)

x$tag_list4 <- ifelse(!is.na(x$tag1) &
                        !is.na(x$tag2) &
                        !is.na(x$tag3) &
                        !is.na(x$tag4) &
                        is.na(x$tag5),
                      paste(x$tag1,", ",x$tag2,", ",x$tag3," and ",x$tag4, sep = ""),
                      NA)

x$tag_list5 <- ifelse(!is.na(x$tag1) &
                        !is.na(x$tag2) &
                        !is.na(x$tag3) &
                        !is.na(x$tag4) &
                        !is.na(x$tag5),
                      paste(x$tag1,", ",x$tag2,", ",x$tag3,", ",x$tag4, " and ", x$tag5, sep = ""),
                      NA)

x$tag_list <- coalesce(x$tag_list1, x$tag_list2, x$tag_list3, x$tag_list4, x$tag_list5)

x$tag_list[is.na(x$tag_list)] = ""

# put it all together
z <- glue("
* **{x$item_name}**: {x$description}
  * by: {x$author_list}
  * links: {x$link_list}
  * tags: {x$tag_list}
  
----

")

intro <- "# Open Archaeology Software & Resources
A list of open source archaeological software and resources

See [ToDo.md](https://github.com/zackbatist/open-archaeo/blob/master/ToDo.md) for a list of tools or resources that are in demand, but which currently do not exist or need to be significantly improved. See [tags.md](https://github.com/zackbatist/open-archaeo/blob/master/tags.md) for a description of all tags.

This readme and the [web interface](https://open-archaeo.info) are automatically generated from data stored in [open-archaeo.csv](https://github.com/zackbatist/open-archaeo/blob/master/open-archaeo.csv). Please update the csv when submitting a pull request.

---
"

# export
fileConn<-file("list.md")
writeLines(z, fileConn)
close(fileConn)

plainList <- read_file("list.md")
readme <- paste(intro,plainList, sep="\n")

fileConn<-file("README.md")
writeLines(readme, fileConn)
close(fileConn)
