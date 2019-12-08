library(DBI)
library(RMariaDB)
library(pool)
library(dplyr)
library(plyr)

conn <- DBI::dbConnect(RMariaDB::MariaDB(),
                       dbname = "open-archaeo",
                       host = "138.197.151.78",
                       port = 3306,
                       user = "zack",
                       password = "batist90"
)


items <- dbReadTable(conn, 'items')
items
people <- dbReadTable(conn, 'people')
people
collectives <- dbReadTable(conn, 'collectives')
collectives
items$url1_service <- "Website"
items$url2_service <- "Website"
toMatch <- c("https://github.com/", "https://bitbucket.org/")

for (i in (1:length(items))) {
  matches <- unique(grep(paste(toMatch,collapse="|"),items$url1, value=FALSE))
}


for (i in (1:length(items))) {
  #  items$url1_service <- "Website"
    unique(grep(j <- as.character("https://github.com/"), items$url, value = TRUE)) {
      items$url1_service <<- "GitHub"
    }
}
  z <<- paste0(items$name," - ",items$description," / [",items$url1_service,"](",items$url1,")")

    # if (length(grep(as.character(".github.io/"), items$url1))) {
    #   items$url1_service[i] <- "Website"
    # }
    # if (length(grep(as.character("https://bitbucket.org/"), items$url1))) {
    #   items$url1_service[i] <- "BitBucket"
    # }
    # if (length(grep(as.character("https://gitlab.com/"), items$url1))) {
    #   items$url1_service[i] <- "GitLab"
    # }
    # if (length(grep(as.character("https://cran."), items$url1))) {
    #   items$url1_service[i] <- "CRAN"
    # }
    # if (length(grep(as.character("https://gist.github.com/"), items$url1))) {
    #   items$url1_service[i] <- "Gist"
    # }
    # if (length(grep(as.character("https://pypi.org/"), items$url1))) {
    #   items$url1_service[i] <- "PyPI"
    # }
    # else {
    #   items$url1_service[i] <- "Website"
    # }
  
  
  # if (length(items$url2[i])) {
  #   if (length(grep(as.character("https://github.com/"), items$url2))) {
  #     items$url2_service[i] <- "GitHub"
  #   }
  #   # if (length(j <- grep(as.character(".github.io/"), items$url2))) {
  #   #   items$url2_service[i] <- "Website"
  #   # }
  #   if (length(grep(as.character("https://bitbucket.org/"), items$url2))) {
  #     items$url2_service[i] <- "BitBucket"
  #   }
  #   if (length(grep(as.character("https://gitlab.com/"), items$url2))) {
  #     items$url2_service[i] <- "GitLab"
  #   }
  #   if (length(grep(as.character("https://cran."), items$url2))) {
  #     items$url2_service[i] <- "CRAN"
  #   }
  #   if (length(grep(as.character("https://gist.github.com/"), items$url2))) {
  #     items$url2_service[i] <- "Gist"
  #   }
  #   if (length(grep(as.character("https://pypi.org/"), items$url2))) {
  #     items$url2_service[i] <- "PyPI"
  #   }
  #   else {
  #     items$url2_service[i] <- "Website"
  #   }
  # }
  
  # if (length(items$url2_service)) {
  # z <<- paste0(items$name[i]," - ",items$description[i]," / [",items$url1_service[i],"](",items$url1[i],") / [",items$url2_service[i],"](",items$url2[i],")")
  # }
#  else {
  
#  }


