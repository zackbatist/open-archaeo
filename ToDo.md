# To do
This is a list of tools or resources that are in demand, but which currently do not exist or need to be significantly improved.

- [ ] Bayesian stratigraphic modelling in R
- [ ] Harris matrices R package
  - This is being worked on at [stratigraphr](https://github.com/joeroe/stratigraphr)
- [ ] TFQA (Tools for Quantitative Archaeology) development
- [ ] R packages for analysizng publication / professional metrics
- [ ] Software (maybe a command line tool or an R package) that shows astronomical relations if given a coordinate, a coordinate and an angle, or two coordinates in eyeshot. It should allow to get a quick estimation if a certain location or man made structure was build with respect to astronomical features as discussed in [Cultural Astronomy](https://en.wikipedia.org/wiki/Cultural_astronomy). Despite the obvious problem that correlation does not mean causation, for some contexts, like for example ritual architecture in the European Metal Ages, astronomical obervations seemed to be very relevant. This software package should allow the user to get a quick overview about possible relations like solstices, lunistice, planet rises, etc..
- [ ] R package to download data from open dendro data archives. Something like [c14bazAAR](https://github.com/ISAAKiel/c14bazAAR) but for dendro dates.

## Improvements to open-archaeo
- [ ] Implement a tag-based system rather than categories, so that multiple standard descriptors can be used for each item.
    - [ ] Also tags for programming language/platform.
    - @zackbatist working on it.
- [ ] Track the maintenance status of each item, including tags such as 'active' or 'unmaintained', or even version numbers of the latest release (but version numbers are not really that commonly used in this domain).
    - Time since most recent commit can be automatically checked, but noting whether things are broken must involve active engagement with the software.
- [ ] Highlight authorship information.
    - [ ] Create separate table for people, which allows us to associate real names with user names on various platforms.
        - Inclusion of online identifying info should be opt-in to respect people's privacy, and to ensure that people share only what they want to share.
    - [ ] Create separate table for organizations, which allows us to distinguish authorship from institutional support.
        - What about software published by organisations or collectives rather than under people's own names? Will have to hunt for those names.
    - @zackbatist working on it.
- [ ] Translate into multiple languages.
- [ ] Web interface. Bought a domain and made a static page (https://open-archaeo.info/) but could be improved quite a bit (see https://github.com/nafergo/archaeoware/issues/1).
    - @zackbatist working on it.