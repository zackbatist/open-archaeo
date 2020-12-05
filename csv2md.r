library(glue)
library(dplyr)
library(readr)
x <- readr::read_csv("open-archaeo.csv")
x <- arrange(x, item_name)

# put it all together
lapply(seq_along(x), function(i){
  tags1 <- x$tag1[[i]]
  tags2 <- x$tag2[[i]]
  tags3 <- x$tag3[[i]]
  tags4 <- x$tag4[[i]]
  tags5 <- x$tag5[[i]]
  tags1 <- gsub("[", "", tags1, fixed = TRUE)
  tags2 <- gsub("[", "", tags2, fixed = TRUE)
  tags3 <- gsub("[", "", tags3, fixed = TRUE)
  tags4 <- gsub("[", "", tags4, fixed = TRUE)
  tags5 <- gsub("[", "", tags5, fixed = TRUE)
  tags1 <- gsub("]", "", tags1, fixed = TRUE)
  tags2 <- gsub("]", "", tags2, fixed = TRUE)
  tags3 <- gsub("]", "", tags3, fixed = TRUE)
  tags4 <- gsub("]", "", tags4, fixed = TRUE)
  tags5 <- gsub("]", "", tags5, fixed = TRUE)
  
  authors1 <- x$author1_name[[i]]
  authors2 <- x$author2_name[[i]]
  authors3 <- x$author3_name[[i]]
  authors4 <- x$author4_name[[i]]
  authors5 <- x$author5_name[[i]]
  
  zz <- glue("
            +++
            title = \"{x$item_name[[i]]}\"
            tags = [
              \"{tags1}\",
              \"{tags2}\",
              \"{tags3}\",
              \"{tags4}\",
              \"{tags5}\",
            ]
            authors = [
              \"{authors1}\",
              \"{authors2}\",
              \"{authors3}\",
              \"{authors4}\",
              \"{authors5}\",
            ]
            github = [
              \"{x$github[[i]]}\",
            ]
            gist = [
              \"{x$gist[[i]]}\",
            ]
            gitlab = [
              \"{x$gitlab[[i]]}\",
            ]
            bitbucket = [
              \"{x$bitbucket[[i]]}\",
            ]
            launchpad = [
              \"{x$launchpad[[i]]}\",
            ]
            twitter = [
              \"{x$twitter[[i]]}\",
            ]
            blogpost = [
              \"{x$blogpost[[i]]}\",
            ]
            cran = [
              \"{x$cran[[i]]}\",
            ]
            pypi = [
              \"{x$pypi[[i]]}\",
            ]
            website = [
              \"{x$website[[i]]}\",
            ]
            publication = [
              \"{x$publication[[i]]}\",
            ]
            doi = [
              \"{x$doi[[i]]}\",
            ]
            +++
            {x$description[[i]]}
            
              ")
  
  zz <- gsub("\n  \"NA\",", "", zz, fixed = TRUE)
  zz <- gsub("github = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("gist = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("gitlab = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("bitbucket = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("launchpad = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("twitter = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("blogpost = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("cran = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("pypi = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("website = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("publication = [\n]\n", "", zz, fixed = TRUE)
  zz <- gsub("doi = [\n]\n", "", zz, fixed = TRUE)
  
  postName <- x$item_name[[i]]
  directoryName <- paste0("content/post/",postName,".md")
  fileConn<-file(directoryName)
  writeLines(zz, fileConn)
  close(fileConn)
  })

## create config.toml
all_tags <- coalesce(x$tag1, x$tag2, x$tag3, x$tag4, x$tag5)
all_tags <- unique(all_tags)
all_tags <- all_tags[!is.na(all_tags)]
all_tags <- gsub("[", "", all_tags, fixed = TRUE)
all_tags <- gsub("]", "", all_tags, fixed = TRUE)
all_tags <- sort(all_tags)

basics <- "## Basic Configuration
publishDir = \"docs\"
baseurl = \"https://open-archaeo.info/\"
languageCode = \"en\"

title = \"open-archaeo\"
theme = \"hyde-hyde\"

## Hugo Built-in Features
# disqusShortname = \"your-disqus-shortname\"
# googleAnalytics = \"your-google-analytics-id\"
# enableRobotsTXT = true

# summarylength = 30

#paginate = 5

## Site Settings
[params]
    author = \"Author\"
    title = \"Title\"
    description = \"A list of open source archaeological software and resources\"
    #authorimage = \"/img/hugo.png\"
    dateformat = \"Jan 2, 2006\"

    # sidebar, copyright & license
    #logoimage = \"/img/hugo.png\"
    copyright = \"zackbatist\"
    since = 2018
    license = \"CC0 1.0\"
    licenseURL = \"https://creativecommons.org/publicdomain/zero/1.0/\"
    showBuiltWith = true

    # https://highlightjs.org
    highlightjs = true
    highlightjsstyle = \"github\"
    
    # please choose either GraphComment or Disqus or Utterances
    #GraphCommentId = \"...\"
    #UtterancesRepo = \"...\" # https://utteranc.es/
    #UtterancesIssueTerm = \"...\" # pathname, url, title, og:title
    #UtterancesTheme = \"...\" # github-light or github-dark

    # Table of contents
    #toc = none, \"hugo\", or \"tocbot\"
    
    

## Social Accounts
[params.social]
     github = \"zackbatist/open-archaeo\"
#    instagram = \"<username>\"
#    xing = \"<username>\"
#    linkedin = \"<username>\"
#    twitter = \"<username>\"
#    facebook = \"<username>\"
#    microblog = \"<username>\"
#    stackoverflow = \"<username>\"
#    telegram = \"<username>\"
#    orcid = \"<xxxx-xxxx-xxxx-xxxx>\"
#    email = \"your-email@example.com\"
#    gravatar = \"your-email@example.com\"
#    pgpkey = \"<path-to-your-key-in-/static>\"

## Main Menu
"

w <- glue("
[[menu.main]]
    name = \"{all_tags}\"
    weight = 100
    identifier = \"{all_tags}\"
    url = \"/tags/{all_tags}\"
")

fileConn<-file("config.toml")
writeLines(w, fileConn)
close(fileConn)

e <- read_file("config.toml")
config <- paste(basics,e, sep="\n")

fileConn<-file("config.toml")
writeLines(config, fileConn)
close(fileConn)
