library(glue)
library(stringr)
library(dplyr)
library(purrr)
library(readr)
library(jsonlite)
library(fs)
source("R/site.R")

open_archaeo <- readr::read_csv("open-archaeo.csv")

# Generate URL-friendly, unique slugs (lowercase, without spaces etc.)
open_archaeo %>% 
  mutate(slug = clean_slug(item_name)) %>% 
  group_by(slug) %>% 
  mutate(slug = unique_slug(cur_data_all())) ->
  open_archaeo

# Merge multiple columns
open_archaeo %>% 
  rowwise() %>% 
  mutate(
    links = list(as.list(cnotna(
      GitHub = github,
      gist = gist,
      GitLab = gitlab,
      BitBucket = bitbucket,
      Launchpad = launchpad,
      Twitter = twitter,
      `blog post` = blogpost,
      CRAN = cran,
      PyPi = pypi,
      Website = website,
      Publication = publication
    ))),
    authors = list(cnotna(author1_name, author2_name, author3_name, 
                          author4_name, author5_name)),
    tags = list(cnotna(tag1, tag2, tag3, tag4, tag5))
  ) %>% 
  ungroup() %>%
  select(slug, item_name, description, links, authors, categories = category,
         tags, doi = DOI) ->
  open_archaeo

# Generate .md files
open_archaeo %>% 
  rename(title = item_name) %>% 
  pmap(generate_post_md, path = "content/post/") %>% 
  invisible()

