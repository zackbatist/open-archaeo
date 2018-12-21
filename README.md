# Open Archaeology Resources

[![Join the chat at https://gitter.im/open-archaeo/Lobby](https://badges.gitter.im/open-archaeo/Lobby.svg)](https://gitter.im/open-archaeo/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A curated list of open resources created with archaeological practices in mind.

See [ToDo.md](https://github.com/zackbatist/open-archaeo/blob/master/ToDo.md) for a list of tools or resources that are in demand, but which currently do not exist or need to be significantly improved.

**Contents:**

+ Tools for General Use
  + Compiled Software
  + R Packages
  + R Scripts
  + Other Scripts
  + Plugins & Extensions
    + QGIS
    + ArcGIS
    + AudoCAD
  + R Shiny
  + Unsorted
+ Datasets
  + Packeged for R
+ Snippets, Templates & Example Code
+ Complete Analyses / Demonstrations
+ Platforms & Initiatives
+ Educational Tools
+ Conference & Workshop Repos
+ Lists


## Tools for General Use
### Compiled Software
+ [archiedb](https://github.com/archiedb/) / [archie](https://github.com/archiedb/archie) - a light-weight database application designed to standardize and simplify data entry of archaeological or historical artifacts
+ [Big-Ancient-Mediterranean](https://github.com/Big-Ancient-Mediterranean/) / [BAM](https://github.com/Big-Ancient-Mediterranean/BAM) - A tool for the geospatial analysis, literary network visualization, and plot mapping of ancient texts
+ [anatolian](https://github.com/anatolian/) / [field-photographs](https://github.com/anatolian/field-photographs) - Android apps for archaeology that enable photography during field work
+ [anatolian](https://github.com/anatolian/) / [archaeology-object-data-collector-app](https://github.com/anatolian/archaeology-object-data-collector-app) - Android App for remotely controlling camera, weight scale and connecting to database for recording data on archaeology objects
+ [anatolian](https://github.com/anatolian/) / [archaeological-survey-location-collector](https://github.com/anatolian/archaeological-survey-location-collector) - An app for use in archaeological field survey to collect high-accurate point locations, photographs, and other data
+ [andredebuisne](https://github.com/andredebuisne/) / [AIS](https://github.com/andredebuisne/AIS) - Archaeological Information System
+ [arklab](https://gitlab.com/arklab/) / [ArkMatrix](https://gitlab.com/arklab/ArkMatrix) - A tool for creating and manipulating Harris Matrices, part of the Archaeological Recording Kit (ARK) >> [also on GitHub](https://github.com/lparchaeology/ArkMatrix)

### R Packages
+ [ISAAKiel](https://github.com/ISAAKiel/) / [recexcavAAR](https://github.com/ISAAKiel/recexcavAAR/) ([CRAN]()) - R package for 3D reconstruction of archaeological excavations
+ [ISAAKiel](https://github.com/ISAAKiel/) / [pathAAR](https://github.com/ISAAKiel/pathAAR) ([CRAN]()) - R Package to reconstruct paths using archaeological monuments, model parameters of infrastructure and evaluate those parameters
+ [ISAAKiel](https://github.com/ISAAKiel/) / [shapAAR](https://github.com/ISAAKiel/shapAAR) ([CRAN]()) - An R package for the extraction, analysis and classification of (not only) archaeological objects from scanned images
+ [ISAAKiel](https://github.com/ISAAKiel/) / [aoristAAR](https://github.com/ISAAKiel/aoristAAR) ([CRAN]()) - A R package for the aoristic analysis of archaeological data
+ [andrewcparnell](https://github.com/andrewcparnell/) / [Bchron](https://github.com/andrewcparnell/Bchron) ([CRAN](https://cran.rstudio.com/web/packages/Bchron/index.html)) - Radiocarbon Dating, Age-Depth Modelling, Relative Sea Level Rate Estimation, and Non-Parametric Phase Modelling
+ [marieannevibet](https://github.com/marieannevibet/) / [ArchaeoPhases](https://github.com/marieannevibet/ArchaeoPhases) ([CRAN](https://cran.r-project.org/web/packages/ArchaeoPhases/index.html)) - Post-Processing of the Markov Chain Simulated by 'ChronoModel', 'Oxcal' or 'BCal'
+ zooaRch ([CRAN](https://cran.r-project.org/web/packages/zooaRch/)) - The zooaRch package provides analytical tools to make inferences on zooarchaeological data
+ [ahb108](https://github.com/ahb108/) / [rcarbon](https://github.com/ahb108/rcarbon) ([CRAN]()) - Methods for calibrating and analysing radiocarbon dates


### R Scripts
+ [benmarwick](https://github.com/benmarwick/) / [munsell-plot.R](https://gist.github.com/benmarwick/f32cbc2fe7297ec9f276b52c118a249a) - Make a stratigraphic-style plot-schematic of sediment colour using munsell values
+ [benmarwick](https://github.com/benmarwick/) / [osl_calibration.r](https://gist.github.com/benmarwick/5f996a0f52ba1d92f76968119f941bd8)
+ [benmarwick](https://github.com/benmarwick/) / [archaeology_on_wikipedia.R](https://gist.github.com/benmarwick/0d5e6526604e755b556f) - How does wikipedia see archaeology?
+ [benmarwick](https://github.com/benmarwick/) / [tweet-edits-to-archaeology-articles.R](https://gist.github.com/benmarwick/ac394fd61f481393b0ae) - Using R with wikipedia for various things
+ [benmarwick](https://github.com/benmarwick/) / [artefact-morpho.R](https://gist.github.com/benmarwick/6260541) - R code for converting B&W jpgs of artefact silhouettes to matrices and computing basic Elliptical Fourier statistics, including PCA and MANOVA
+ [anatolian](https://github.com/anatolian/) / [ceramic-computation](https://github.com/anatolian/ceramic-computation) - R scripts for digitizing, processing, analyzing, and comparing archaeological ceramic 2d profile drawings, photographs, and other data
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Bootstrap-Correspondence-Analysis](https://github.com/mpeeples2008/Bootstrap-Correspondence-Analysis) - R-script for conducting and evaluating bootstrapped correspondence analyses following methods published by Peeples and Schachner (2012) in the Journal of Archaeological Science
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Mean-Ceramic-Date-and-Error-Estimation](https://github.com/mpeeples2008/Mean-Ceramic-Date-and-Error-Estimation) - Script for calculating mean ceramic dates based on tabular data. This script also estimates sampling error using a bootstrapping procedure
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Brainerd-Robinson-Similarity-Coefficient-and-Sampling-Error-Assessment](https://github.com/mpeeples2008/Brainerd-Robinson-Similarity-Coefficient-and-Sampling-Error-Assessment) - Script for calculating Brainerd-Robinson coefficients based on tabular count or percent data. This script also estimates the probability that a given difference between two samples is the product of sampling error
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Kmeans](https://github.com/mpeeples2008/Kmeans) - Script for conducting K-means cluster analysis using R. This script provides output designed to help the user select an appropriate cluster solution
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Ford-Diagram](https://github.com/mpeeples2008/Ford-Diagram) - This R Function creates a simple Ford diagram for archaeological seriation with error bars determined based on sample size were count data are given
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Ceramic-Frequency-Date-Plot](https://github.com/mpeeples2008/Ceramic-Frequency-Date-Plot) - This R script produces a exploratory visual for assessing site date ranges originally suggested to me by Wesley Bernardini (Redlands University)
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Binomial-Co-occurrence-Assessment](https://github.com/mpeeples2008/Binomial-Co-occurrence-Assessment) - The R-script implements a means for statistically assessing the degree of co-occurrence between classes within a dataset based on an idea origially suggested by James Allison at BYU and published by Keith Kintigh in 2006


+ [Matt Peeples](http://www.mattpeeples.net) / [mcd](http://www.mattpeeples.net/mcd.html) - R Script for Calculating Mean Ceramic Dates and Estimating Error
+ [Matt Peeples](http://www.mattpeeples.net) / [BR](http://www.mattpeeples.net/BR.html) - R Script for Calculating the Brainerd-Robinson Coefficient of Similarity and Assessing Sampling Error
+ [Matt Peeples](http://www.mattpeeples.net) / [ca](http://www.mattpeeples.net/ca.html) - R Script for Seriation Using Correspondence Analysis
+ [Matt Peeples](http://www.mattpeeples.net) / [kmeans](http://www.mattpeeples.net/kmeans.html) - R Script for K-Means Cluster Analysis

### Other Scripts
+ [tsdye](https://github.com/tsdye/) / [harris-matrix](https://github.com/tsdye/harris-matrix/) - Write Graphviz dot files for archaeological sequence diagrams and Bayesian chronological models

### Plugins & Extensions
#### QGIS
+ [ISAAKiel](https://github.com/ISAAKiel/) / [profileAAR](https://github.com/ISAAKiel/profileAAR) - python qgis plugin of recexcavAAR's archprofile

#### ArcGIS
+ [gianmarcoalberti](https://github.com/gianmarcoalberti/) / [TRANSIT](https://github.com/gianmarcoalberti/TRANSIT) - GIS toolbox for estimating the duration of ancient sail-powered navigation
+ [gianmarcoalberti](https://github.com/gianmarcoalberti/) / [FuzzyViewshed](https://github.com/gianmarcoalberti/FuzzyViewshed) - ArcGIS toolbox for fuzzy viewshed calculation

#### AutoCAD
+ [ISAAKiel](https://github.com/ISAAKiel/) / [ArchJobCAD](https://github.com/ISAAKiel/ArchJobCAD) - Tasks for Excavations in AutoCAD


### R Shiny
+ [mpeeples2008](https://github.com/mpeeples2008/) / [NAA analytical dashboard](https://github.com/mpeeples2008/NAA_analytical_dashboard) - Analytical Dashboard for conducting various analysis to group and assess groupings for Neutron Activation Analytical chemical compositional data

### Unsorted
+ [davidcorton](https://github.com/davidcorton/) / [archSeries](https://github.com/davidcorton/archSeries) - Frequency time-series tools for archaeology {R}
+ [davidcorton](https://github.com/davidcorton/) / [osteoGIS](https://github.com/davidcorton/osteoGIS) - Plot data on skeletal templates quickly
+ [ISAAKiel](https://github.com/ISAAKiel/) / [quantAAR](https://github.com/ISAAKiel/quantAAR) - R Library for Quantitative Analysis in Archaeology
+ [ISAAKiel](https://github.com/ISAAKiel/) / [magAAR](https://github.com/ISAAKiel/magAAR) - Analyse geomagnetic data from archaeological context
+ [ISAAKiel](https://github.com/ISAAKiel/) / [mortAAR](https://github.com/ISAAKiel/mortAAR) - Analysis of Archaeological Mortality Data
+ [tipom](https://bitbucket.org/iosa/tipom) / [iosa](https://bitbucket.org/iosa/) - A program for the typometry of the lithic industries {R}
+ [joeroe](https://github.com/joeroe/) / [fieldwalkr](https://github.com/joeroe/fieldwalkr) - Spatial Sampling and Survey Simulation Tools
+ [munsell](https://cran.r-project.org/web/packages/munsell/index.html) - Provides easy access to, and manipulation of, the Munsell colours {R}
+ [http://www.mattpeeples.net/caboot.html](http://www.mattpeeples.net/caboot.html) - Additional instructions for running bootstrapped correspondence analysis R
+ [tabula](https://github.com/nfrerebeau/tabula) - Analysis, Seriation and Visualization of Archaeological Count Data
+ [khroma](https://github.com/nfrerebeau/khroma) - Colour Schemes for Archaeological Data Visualization
+ [stratigraphr](https://github.com/joeroe/stratigraphr) - R package for archaeological stratigraphy and chronological sequences
+ [CAinterprTools](https://github.com/gianmarcoalberti/CAinterprTools) -  R package to help interpreting Correspondence Analysis’ results
+ [CAseriation](https://github.com/gianmarcoalberti/CAseriation) - R Package for contingency tables seriation via Correspondence Analysis 

## Datasets
+ [binford](https://github.com/benmarwick/binford) / [benmarwick](https://github.com/benmarwick/) - Datasets used in Binford's 2001 book "Constructing Frames of Reference: An Analytical Method for Archaeological Theory Building Using Ethnographic and Environmental Data Sets
+ [evoarchdata](https://github.com/benmarwick/evoarchdata) / [benmarwick](https://github.com/benmarwick/) - Datasets from studies of cultural evolution in Archaeology
+ [1989-excavation-report-Madjedbebe](https://github.com/benmarwick/1989-excavation-report-Madjedbebe) / [benmarwick](https://github.com/benmarwick/) - Text, data and code to accompany the analysis of the 1989 excavation data
+ [DObsiSS](https://github.com/zackbatist/DObsiSS) / [zackbatist](https://github.com/zackbatist/) - The Database of Obsidian Sourcing Studies
+ [roman-empire](https://github.com/klokantech/roman-empire) - Map of the Roman Empire made with vector tiles
+ [photogrammetry_datasets](https://github.com/natowi/photogrammetry_datasets) / [natowi](https://github.com/natowi/) - This is a collection of datasets for photogrammetry
+ [R-Scripts](https://github.com/isaacullah/R-Scripts) / [isaacullah](https://github.com/isaacullah/) This contains a set of data about human mobility, subsistance, population, and environmental productivity derived from the Standard Cross Cultural Sample

### R Data
+ [cawd](https://github.com/sfsheath/cawd) / [sfsheath](https://github.com/sfsheath/) - An R package that collects together data for the ancient world
+ [shkrdata](https://github.com/ISAAKiel/shkrdata) / [ISAAKiel](https://github.com/ISAAKiel/) - Package for downloading and preparing shkr data for archaeological analysis
+ [archdata](https://cran.rstudio.com/web/packages/archdata/index.html) - The archdata package provides several types of data that are typically used in archaeological research << CRAN

## Snippets, Templates & Example Code
+ [DroneSurveyPlanner](https://github.com/isaacullah/DroneSurveyPlanner) / [isaacullah](https://github.com/isaacullah/) - This is a LibreOffice Calc spreadsheet designed to help you plan an aerial drone mapping survey mission
> [More at the author's blog](http://isaacullah.github.io/DroneSurveyPlanner/)

+ [benmarwick / opencontext.r](https://gist.github.com/benmarwick/50aa4c39b7d955d0ec40) - Experimenting with the opencontext.org API using R
+ [benmarwick / DY-XYZ-data-on-an-irregular-grid-to-an-interpolated-raster.r](https://gist.github.com/benmarwick/7331879) - Plotting remote sensing data, especially how to go from XYZ data on an irregular grid to an interpolated raster

## Complete Analyses / Demonstrations
+ [benmarwick](https://github.com/benmarwick/) / [benwarwick/dayofarchaeology](https://github.com/benmarwick/dayofarchaeology) - A Distant Reading of the Day of Archaeology
+ [Matt Peeples - LISA](http://www.mattpeeples.net/modules/LISA.html) - Moran’s I and Getis-Ord G* Analysis
+ [Matt Peeples - PLC](http://www.mattpeeples.net/modules/PLC.html) - Cluster Analysis - Pure Locational Clustering
+ [mpeeples2008](https://github.com/mpeeples2008/) / [Measuring-Archaeological-Diversity-by-Comparing-to-Simulated-Assemblages](https://github.com/mpeeples2008/Measuring-Archaeological-Diversity-by-Comparing-to-Simulated-Assemblages) - This is an R script that replicates the analyses presented in : Kintigh, K. 1984. Measuring Archaeological Diversity by Comparison with Simulated Assemblages. American Antiquity 49: 44-54
+ [Matt Peeples - UnconstrainedClustering](http://www.mattpeeples.net/modules/UnconstrainedClustering.html) - Unconstrained Clustering
+ [Matt Peeples - BasicMapping](http://www.mattpeeples.net/modules/BasicMapping.html) - Working with map data in R
+ [Matt Peeples - PointPattern](http://www.mattpeeples.net/modules/PointPattern.html) - Point Pattern Analysis
+ [benmarwick] / [archaeology-grand-challenges.r](https://gist.github.com/benmarwick/d3eb3167ccb2116197ca) - Sketch of a look at the 'grand challenges' of Kintigh et al. 2014 (http://www.pnas.org/content/111/3/879.full) in five archaeology journals

## Platforms & Initiatives
+ [rekrei](https://github.com/rekrei/rekrei) - Platform for crowdsourcing the digital recreation of lost heritage
+ [archaeological-object-sharing](https://github.com/anatolian/archaeological-object-sharing) - An online space for sharing data, 3d models, etc about archaeological objects to enable the comparison of these objects
+ [Open Context](https://github.com/ekansa/open-context-py) - Open Context Python Code Repository

## Educational Tools
+ [AtlantGIS](https://github.com/kacebe/AtlantGIS) - Faked GIS-Datasets, simulating an island in the Atlantic for educational purposes in using GIS in archaeology
+ ODATE
+ [Digital Encyclopedia of Archaeologists](https://github.com/msu-anthropology/deoa) / [msu-anthropology](https://github.com/msu-anthropology/)
+ [https://github.com/isaacullah/GIS-Projects](https://github.com/isaacullah/GIS-Projects) / [isaacullah](https://github.com/isaacullah/) - GIS Projects for teaching and learning about Computational Archaeology
+ [A Mobile Data-Collection Workflow for Archaeologists](http://isaacullah.github.io/A-mobile-field-data-collection-workflow/)
+ [benmarwick / a-scientific-computing-environment-for-archaeology.txt](https://gist.github.com/benmarwick/11204658) - Scientific Computing Environment for archaeology: Installing R, Rstudio and other things on a lightweight Linux in a VirtualBox virtual machine

## Conference & Workshop Repos
+ https://github.com/FOSS4Arch/SAA2016
+ https://github.com/benmarwick/SAA2015-Open-Methods
+ https://github.com/ISAAKiel/LAC2018_Session_44C
+ https://github.com/ISAAKiel/SummerSchool_moin
+ https://github.com/ISAAKiel/r_tutorial_caa_2018
+ https://github.com/ISAAKiel/R-Tutorial_CAA2016
+ https://github.com/ISAAKiel/Mosaic
+ [https://github.com/mpeeples2008/Archaeological-Network-Uncertainty](https://github.com/mpeeples2008/Archaeological-Network-Uncertainty) - R Markdown document associated with the workshop at the Computer Applications and Quantitative Methods in Archaeology Meeting in Atlanta, GA (2017) hosted by Matt Peeples and Tom Brughmans. Network Science and Statistical Techniques for Dealing with Uncertainties in Archaeological Datasets. 

## Lists
+ [archaeology](https://github.com/steko/archaeology) / [steko](https://github.com/steko/) - A directory of GitHub projects by OR for archaeologists
+ [benmarwick/ctv-archaeology](https://github.com/benmarwick/ctv-archaeology) / [benmarwick](https://github.com/benmarwick/) - This CRAN Task View contains a list of packages useful for scientific work in Archaeology, grouped by topic
+ [openaccessarchaeology.org](http://www.openaccessarchaeology.org) / [@OpenAccessArch](https://twitter.com/OpenAccessArch)
+ [Tools for Quantitative Archaeology](http://tfqa.com/) / Keith Kintigh - Tools for Quantitative Archaeology (TFQA) is a package of more than 45 PC programs developed to satisfy several unusual analytical needs of archaeologists _<<not open source_
+ [Isaac's List of FOSS tools for academics... and what to use them for!](http://isaacullah.github.io/List-of-FOSS-tools-for-academics/)

