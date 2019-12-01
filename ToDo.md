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
- [ ] Protocols for how I create/edit summaries, a style guide / template.
- [ ] Implement a tag-based system rather than categories, so that multiple standard descriptors can be used for each item.
<<<<<<< HEAD
    - [ ] Also tags for programming language/platform.
    - Using tabletop.js à-la https://github.com/nafergo/archaeoware/ [???]
    - Alternatively, see the 'MySQLicious' solution, as documented at http://howto.philippkeller.com/2005/04/24/Tags-Database-schemas/ (but this is probably overly complicated)
        - A controlled vocabulary needs to be devised to ensure that the tags visible to the user correspond with what's in the table
        - Selected tags would be parsed and used slotted into the appropriate SQL statements:
                          ```SQL
            SELECT *
            FROM `Items`
            WHERE Tags LIKE "%Lists%"
            AND Tags LIKE "%Writing%"
            AND Tags LIKE "%Web scrapers%"

            SELECT *
            FROM `Items`
            WHERE Tags LIKE "%Lists%"
            OR Tags LIKE "%Writing%"
            OR Tags LIKE "%Web scrapers%"

            SELECT *
            FROM `Items`
            WHERE Tags LIKE "%Lists%"
            AND Tags LIKE "%Writing%"
            AND Tags NOT LIKE "%Web scrapers%"
            ```
            
- [ ] Track the maintenance status of each item, including tags such as 'active' or 'unmaintained', or even version numbers of the latest release (but version numbers are not really that commonly used in this domain).
    - Time since most recent commit can be automatically checked, but noting whether things are broken must involve active engagement with the software.
    
    1. Identify CSS elements/modules where this info is kept:
    
    |Service   |Element|
|----------|-------|
|GitHub:   |       |
|GitLab:   |       |
|BitBucket:|       |
|CRAN:     |       |
|PyPy:     |       |
|WordPress:|       |
|LaunchPad:|       |
    
=======
  - [ ] Also tags for programming language/platform.
  - Using tabletop.js à-la https://github.com/nafergo/archaeoware/ [???]
  - Alternatively, see the 'MySQLicious' solution, as documented at http://howto.philippkeller.com/2005/04/24/Tags-Database-schemas/ (but this is probably overly complicated)
    - A controlled vocabulary needs to be devised to ensure that the tags visible to the user correspond with what's in the table
    - Selected tags would be parsed and used slotted into the appropriate SQL statements:
      
      ```SQL
      SELECT *
      FROM `Items`
      WHERE Tags LIKE "%Lists%"
      AND Tags LIKE "%Writing%"
      AND Tags LIKE "%Web scrapers%"

      SELECT *
      FROM `Items`
      WHERE Tags LIKE "%Lists%"
      OR Tags LIKE "%Writing%"
      OR Tags LIKE "%Web scrapers%"

      SELECT *
      FROM `Items`
      WHERE Tags LIKE "%Lists%"
      AND Tags LIKE "%Writing%"
      AND Tags NOT LIKE "%Web scrapers%"
      ```
            
- [ ] Track the maintenance status of each item, including tags such as 'active' or 'unmaintained', or even version numbers of the latest release (but version numbers are not really that commonly used in this domain).
      - Time since most recent commit can be automatically checked, but noting whether things are broken must involve active engagement with the software:
    
    1. Identify CSS elements/modules where this info is kept:
>>>>>>> a6660148540c07e8a886ac02c0809121112afd73
    2. Extract this info and append it to the dataset
    3. Automate this process of checking in with the linked pages
    4. Calculate time since last update
    5. Keep tabs on CSS changes that would break this process
    
<<<<<<< HEAD
- [ ] Create separate table for people, which allows us to associate real names with user names on various platforms.
        - Inclusion of online identifying info should be opt-in to respect people's privacy, and to ensure that people share only what they want to share.
        - A simple `GROUPBY` function can be used to tabulate all the items contributed by an individual
        - The GitHub/GitLab/BitBucket/etc APIs can be tapped to obtain institutional info, profile pictures, etc
        
- [ ] Distinguish individuals authors from institutions or organizations
    - [ ] Hunt down authors' names for software published under organizational accounts
    - [ ] Identify whether there is institutional support, and if there is then add another visual element pertaining to each item's entry

- [ ] Translate into more languages.

- [ ] Figure out how to deploy this thing.
=======
    |Service   |Element|
    |----------|-------|
    |GitHub:   |       |
    |GitLab:   |       |
    |BitBucket:|       |
    |CRAN:     |       |
    |PyPy:     |       |
    |WordPress:|       |
    |LaunchPad:|       |
    
- [ ] Create separate table for people, which allows us to associate real names with user names on various platforms.
  - Inclusion of online identifying info should be opt-in to respect people's privacy, and to ensure that people share only what they want to share.
  - A simple `GROUPBY` function can be used to tabulate all the items contributed by an individual
  - The GitHub/GitLab/BitBucket/etc APIs can be tapped to obtain institutional info, profile pictures, etc
        
- [ ] Distinguish individuals authors from institutions or organizations
  - [ ] Hunt down authors' names for software published under organizational accounts
  - [ ] Identify whether there is institutional support, and if there is then add another visual element pertaining to each item's entry

- [ ] Translate into more languages.

- [ ] Figure out how to deploy this thing.
>>>>>>> a6660148540c07e8a886ac02c0809121112afd73
