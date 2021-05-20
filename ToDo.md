# To do

## Improvements to open-archaeo

General improvements to open-archaeo that would enhance the richness and utility of the information it contains.

- [ ] Nicer theme
  - See the [clarity](https://github.com/zackbatist/open-archaeo/tree/clarity) branch
- [ ] Draft a formal conceptual model
- [x] Clean up and define scopes of tags
- [ ] Clean up and define scopes of categories
- [ ] Make author attributions more consistant (i.e. convert real names to usernames, where they exist)
- [ ] GitHub action to build site when the dataset is updated
- [ ] Update the data wrangling pathway so that the primary input is a series of TOML files
  - TOML files are better than CSV for storing extensible and nested data
  - Automatically generate csv, readme, markdown and hugo-generated html files using GitHub actions


## Deep dives

Archaeology involves many specialist communities who hold unique knowledge about the sets of tools and methods at their disposal. More specifically, specialists may have access to knowledge about what tools exist, whether they are designed specifically for addressing archaeological concerns, how they might be classified, and the identities of unlisted authors or contributors. We therefore invite specialists to provide comprehensive 'deep dives' into the software developed in their respective fields. If you would like to contribute in this way, please follow these guidelines:

- Create a GitHub issue identifying the field you intent to cover. This will serve as a working thread where links to new items can be stored and organized, and where discussion about the topic can be held.
- Identify and define some key terms that you use to distinguish various kinds of tools or resources, which may be used as tags.
- Peacefully engage with other contributors who might hold different positions, and try to reach a consensus.
- Invite others to participate, especially people who share knowledge about the domain.
- Create a pull request when you (and any other contributors involved) are satisfied with the completeness of the list.

Here are some fields that might benefit from a deep dive. Feel free to add others not included here!

- [x] [Bioarchaeology and archaeogenetics](https://github.com/zackbatist/open-archaeo/issues/20)
- [ ] Palaeoenvironment reconstruction
- [ ] Compositional analysis (i.e. XRF, NAA, etc)
- [ ] Absolute dating
- [ ] Aerial imaging

## Tools or resources in demand

This is a list of tools or resources that are in demand, but which currently do not exist or need to be significantly improved.

- [ ] Bayesian stratigraphic modelling in R
- [x] Harris matrices R package
  - This is being worked on at [stratigraphr](https://github.com/joeroe/stratigraphr)
- [x] TFQA (Tools for Quantitative Archaeology) development
  - This is being worked on at [tfqar](https://github.com/sslarch/tfqar)
- [ ] R packages for analysizng publication / professional metrics
- [ ] Software for displaying astronomical visibility at a given place and time
  - Shows astronomical relations if given a coordinate, a coordinate and an angle, or two coordinates in eyeshot
  - It should allow to get a quick estimation if a certain location or man made structure was build with respect to astronomical features as discussed in [Cultural Astronomy](https://en.wikipedia.org/wiki/Cultural_astronomy)
  - Despite the obvious problem that correlation does not mean causation, for some contexts, like for example ritual architecture in the European Metal Ages, astronomical obervations seemed to be very relevant
  - This software package should allow the user to get a quick overview about possible relations like solstices, lunistice, planet rises, etc
- [ ] R package to download data from open dendro data archives. Something like [c14bazAAR](https://github.com/ISAAKiel/c14bazAAR) but for dendro dates.
