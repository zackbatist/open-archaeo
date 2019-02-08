# Open Archaeology Resources

[![Join the chat at https://gitter.im/open-archaeo/Lobby](https://badges.gitter.im/open-archaeo/Lobby.svg)](https://gitter.im/open-archaeo/Lobby?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

A curated list of open resources created with archaeological practices in mind.

See [ToDo.md](https://github.com/zackbatist/open-archaeo/blob/master/ToDo.md) for a list of tools or resources that are in demand, but which currently do not exist or need to be significantly improved.

**Contents:**

+ [Tools for General Use](#tools-for-general-use)
  + [Compiled Software](#compiled-software)
  + [R Packages](#r-packages)
  + [R Scripts](#r-scripts)
  + [Other Scripts](#other-scripts)
  + [Plugins & Extensions](#plugins-and-extensions)
    + [QGIS](#qgis)
    + [ArcGIS](#arcgis)
    + [AudoCAD](#autocad)
  + [R Shiny](#r-shiny)
  + [Unsorted](#unsorted)
+ [Datasets](#datasets)
  + [Packaged for R](#packaged-for-r)
+ [Snippets, Templates and Example Code](#snippets-templates-and-example-code)
+ [Complete Analyses and Demonstrations](#complete-analyses-and-demonstrations)
+ [Platforms and Initiatives](#platforms-and-initiatives)
+ [Educational Tools](#educational-tools)
+ [Conference and Workshop Repos](#conference-and-workshop-repos)
+ [Lists](#lists)

## Tools for General Use

### Compiled Software

- archiedb / archie / [GitHub](https://github.com/archiedb/archie) - A light-weight database application designed to standardize and simplify data entry of archaeological or historical artifacts
- Big-Ancient-Mediterranean / BAM / [GitHub](https://github.com/Big-Ancient-Mediterranean/BAM) - A tool for the geospatial analysis, literary network visualization, and plot mapping of ancient texts
- anatolian / field-photographs / [GitHub](https://github.com/anatolian/field-photographs) - Android apps for archaeology that enable photography during field work
- anatolian / archaeology-object-data-collector-app / [GitHub](https://github.com/anatolian/archaeology-object-data-collector-app) - Android App for remotely controlling camera, weight scale and connecting to database for recording data on archaeology objects
- anatolian / archaeological-survey-location-collector / [GitHub](https://github.com/anatolian/archaeological-survey-location-collector) - An app for use in archaeological field survey to collect high-accurate point locations, photographs, and other data
- andredebuisne / AIS / [GitHub](https://github.com/andredebuisne/AIS) - Archaeological Information System
- arklab / ArkMatrix / [GitLab](https://gitlab.com/arklab/ArkMatrix) - A tool for creating and manipulating Harris Matrices, part of the Archaeological Recording Kit ARK
- L-P Archaeology / ArkScan / [GitHub](https://github.com/lparchaeology/ArkScan) - A simple gui app to simplify scanning single context plans
- L-P Archaeology / ARK1 / [GitHub](https://github.com/lparchaeology/ARK1) - The ARK v1.1.2 Stable Release. ARK (The Archaeological Recording Kit) is a web-based ‘toolkit’ for the collection, storage and dissemination of archaeological data. It includes data-editing, data-creation, data-viewing and data-sharing tools, all of which are delivered using a web-based front-end.
- L-P Archaeology / Ark2 / [GitHub](https://github.com/lparchaeology/ARK1) - ARK (The Archaeological Recording Kit) 2.0 Development Repository. ARK (The Archaeological Recording Kit) is a web-based ‘toolkit’ for the collection, storage and dissemination of archaeological data. It includes data-editing, data-creation, data-viewing and data-sharing tools, all of which are delivered using a web-based front-end.
- fradeve / ark-addons / [GitHub](https://github.com/fradeve/ark-addons) - This is a Django project to obtain statistical information from
  an [ARK](http://ark.lparchaeology.com) (Archaeological Recording Kit) project. It is aimed to mine data from archaeological databases and create customizable visualizations, querying both text and geographical data.
- emeeks / orbis_stanford / [GitHub](https://github.com/emeeks/orbis_stanford) - The code that is used in ORBIS: The Stanford Geospatial Network Model of the Roman World
- emeeks / orbis_v2 / [GitHub](https://github.com/emeeks/orbis_v2) - This is a pure D3.js version of ORBIS ( <http://orbis.stanford.edu> ) that introduces several new features.
- Chronomodel / chronomodel / [GitHub](https://github.com/Chronomodel/chronomodel) / [Website](https://chronomodel.com/) - Chronological Modelling of Archaeological Data using Bayesian Statistics

### R Packages

+ ISAAKiel / recexcavAAR / [GitHub](https://github.com/ISAAKiel/recexcavAAR/) / [CRAN]() - R package for 3D reconstruction of archaeological excavations
+ ISAAKiel / pathAAR / [GitHub](https://github.com/ISAAKiel/pathAAR) / [CRAN]() - R Package to reconstruct paths using archaeological monuments, model parameters of infrastructure and evaluate those parameters, model parameters of infrastructure and evaluate those parameters
+ ISAAKiel / shapAAR / [GitHub](https://github.com/ISAAKiel/shapAAR) / [CRAN]() - An R package for the extraction, analysis and classification of not only, archaeological objects from scanned images, archaeological objects from scanned images
+ ISAAKiel / aoristAAR / [GitHub](https://github.com/ISAAKiel/aoristAAR) / [CRAN]() - A R package for the aoristic analysis of archaeological data
+ andrewcparnell / Bchron / [GitHub](https://github.com/andrewcparnell/Bchron) / [CRAN](https://cran.rstudio.com/web/packages/Bchron/index.html) - Radiocarbon Dating, Age-Depth Modelling, Relative Sea Level Rate Estimation, and Non-Parametric Phase Modelling
+ marieannevibet / ArchaeoPhases / [GitHub](https://github.com/marieannevibet/ArchaeoPhases) / [CRAN](https://cran.r-project.org/web/packages/ArchaeoPhases/index.html) - Post-Processing of the Markov Chain Simulated by 'ChronoModel', 'Oxcal' or 'BCal'
+ Erik Otarola-Castillo, Jesse Wolfhagen, Max D. Price / zooaRch / [CRAN](https://cran.r-project.org/web/packages/zooaRch/) - The zooaRch package provides analytical tools to make inferences on zooarchaeological data
+ zooaRchGUI / zooaRchGUI / [GitHub](https://github.com/zooaRchGUI/zooaRchGUI) / [Project Page](http://www.zooarchgui.org/) - The zooaRchGUI package provides a Graphical User Interface (GUI) to analytical tools for zooarchaeological data in the R package
+ ahb108 / rcarbon / [GitHub](https://github.com/ahb108/rcarbon) / [CRAN]() - Methods for calibrating and analysing radiocarbon dates

### R Scripts

+ benmarwick / munsell-plot.R / [Gist](https://gist.github.com/benmarwick/f32cbc2fe7297ec9f276b52c118a249a) - Make a stratigraphic-style plot-schematic of sediment colour using munsell values
+ benmarwick / osl_calibration.r / [Gist](https://gist.github.com/benmarwick/5f996a0f52ba1d92f76968119f941bd8) - 
+ benmarwick / archaeology_on_wikipedia.R / [Gist](https://gist.github.com/benmarwick/0d5e6526604e755b556f) - How does wikipedia see archaeology?
+ benmarwick / tweet-edits-to-archaeology-articles.R / [Gist](https://gist.github.com/benmarwick/ac394fd61f481393b0ae) - Using R with wikipedia for various things
+ benmarwick / artefact-morpho.R / [Gist](https://gist.github.com/benmarwick/6260541) - R code for converting B&W jpgs of artefact silhouettes to matrices and computing basic Elliptical Fourier statistics, including PCA and MANOVA
+ anatolian / ceramic-computation / [GitHub](https://github.com/anatolian/ceramic-computation) - R scripts for digitizing, processing, analyzing, and comparing archaeological ceramic 2d profile drawings, photographs, and other data
+ mpeeples2008 / Bootstrap-Correspondence-Analysis / [GitHub](https://github.com/mpeeples2008/Bootstrap-Correspondence-Analysis) - R-script for conducting and evaluating bootstrapped correspondence analyses following methods published by Peeples and Schachner 2012, in the Journal of Archaeological Science
+ mpeeples2008 / Mean-Ceramic-Date-and-Error-Estimation / [GitHub](https://github.com/mpeeples2008/Mean-Ceramic-Date-and-Error-Estimation) - Script for calculating mean ceramic dates based on tabular data. This script also estimates sampling error using a bootstrapping procedure, 
+ mpeeples2008 / Brainerd-Robinson-Similarity-Coefficient-and-Sampling-Error-Assessment / [GitHub](https://github.com/mpeeples2008/Brainerd-Robinson-Similarity-Coefficient-and-Sampling-Error-Assessment) - Script for calculating Brainerd-Robinson coefficients based on tabular count or percent data. This script also estimates the probability that a given difference between two samples is the product of sampling error
+ mpeeples2008 / Kmeans / [GitHub](https://github.com/mpeeples2008/Kmeans) - Script for conducting K-means cluster analysis using R. This script provides output designed to help the user select an appropriate cluster solution
+ mpeeples2008 / Ford-Diagram / [GitHub](https://github.com/mpeeples2008/Ford-Diagram) - This R Function creates a simple Ford diagram for archaeological seriation with error bars determined based on sample size were count data are given
+ mpeeples2008 / Ceramic-Frequency-Date-Plot / [GitHub](https://github.com/mpeeples2008/Ceramic-Frequency-Date-Plot) - This R script produces a exploratory visual for assessing site date ranges originally suggested to me by Wesley Bernardini Redlands University
+ mpeeples2008 / Binomial-Co-occurrence-Assessment / [GitHub](https://github.com/mpeeples2008/Binomial-Co-occurrence-Assessment) - The R-script implements a means for statistically assessing the degree of co-occurrence between classes within a dataset based on an idea origially suggested by James Allison at BYU and published by Keith Kintigh in 2006
+ Matt Peeples / mcd / [Website](http://www.mattpeeples.net/mcd.html) - R Script for Calculating Mean Ceramic Dates and Estimating Error
+ Matt Peeples / BR / [Website](http://www.mattpeeples.net/BR.html) - R Script for Calculating the Brainerd-Robinson Coefficient of Similarity and Assessing Sampling Error
+ Matt Peeples / ca / [Website](http://www.mattpeeples.net/ca.html) - R Script for Seriation Using Correspondence Analysis
+ Matt Peeples / kmeans / [Website](http://www.mattpeeples.net/kmeans.html) - R Script for K-Means Cluster Analysis

### Other Scripts

+ tsdye / harris-matrix / [GitHub](https://github.com/tsdye/harris-matrix/) / [Website](http://tsdye.online/harris-matrix/homepage/) - Write Graphviz dot files for archaeological sequence diagrams and Bayesian chronological models
+ L-P Archaeology / harris2graph / [GitHub](https://github.com/lparchaeology/harris2graph/) / [GitHub](https://github.com/jlayt/harris2gv) - harris2graph is a script to help migrate data from the LST file format used by the BASP Harris, Stratify and ArchEd packages into modern graph file formats

### Plugins and Extensions

#### QGIS

+ ISAAKiel / profileAAR / [GitHub](https://github.com/ISAAKiel/profileAAR) - python qgis plugin of recexcavAAR's archprofile
+ L-P Archaeology / ArkSpatial / [GitHub](https://github.com/lparchaeology/ArkSpatial) - A QGIS plugin to simplfy digitization of archaeological plans drawn using the Museum of London Single Context Recording methodology
+ L-P Archaeology / ArkGrid / [GitHub](https://github.com/lparchaeology/ArkGrid) - A QGIS plugin for local site grids
+ Mike J. Johnson / trenchdrawer / [GitHub](https://github.com/MikeJJohnson/trenchdrawer) - Plugin for drawing trenches

#### ArcGIS

+ gianmarcoalberti / TRANSIT / [GitHub](https://github.com/gianmarcoalberti/TRANSIT) - GIS toolbox for estimating the duration of ancient sail-powered navigation
+ gianmarcoalberti / FuzzyViewshed / [GitHub](https://github.com/gianmarcoalberti/FuzzyViewshed) - ArcGIS toolbox for fuzzy viewshed calculation

#### AutoCAD

+ ISAAKiel / ArchJobCAD / [GitHub](https://github.com/ISAAKiel/ArchJobCAD) - Tasks for Excavations in AutoCAD

### R Shiny

+ mpeeples2008 / NAA analytical dashboard / [GitHub](https://github.com/mpeeples2008/NAA_analytical_dashboard) - Analytical Dashboard for conducting various analysis to group and assess groupings for Neutron Activation Analytical chemical compositional data

### Unsorted

+ davidcorton / archSeries / [GitHub](https://github.com/davidcorton/archSeries) - Frequency time-series tools for archaeology {R}
+ davidcorton / osteoGIS / [GitHub](https://github.com/davidcorton/osteoGIS) - Plot data on skeletal templates quickly
+ ISAAKiel / quantAAR / [GitHub](https://github.com/ISAAKiel/quantAAR) - R Library for Quantitative Analysis in Archaeology
+ ISAAKiel / magAAR / [GitHub](https://github.com/ISAAKiel/magAAR) - Analyse geomagnetic data from archaeological context
+ ISAAKiel / mortAAR / [GitHub](https://github.com/ISAAKiel/mortAAR) - Analysis of Archaeological Mortality Data
+ tipom / iosa / [BitBucket](https://bitbucket.org/iosa/) - A program for the typometry of the lithic industries {R}
+ joeroe / fieldwalkr / [GitHub](https://github.com/joeroe/fieldwalkr) - Spatial Sampling and Survey Simulation Tools
+ cwickham / munsell / [GitHub](https://github.com/cwickham/munsell/) / [CRAN](https://cran.r-project.org/web/packages/munsell/index.html) - Provides easy access to, and manipulation of, the Munsell colours
+ Matt Peeples /  / [Website](http://www.mattpeeples.net/caboot.html) - Additional instructions for running bootstrapped correspondence analysis R
+ nfrerebeau / tabula / [GitHub](https://github.com/nfrerebeau/tabula) - Analysis, Seriation and Visualization of Archaeological Count Data
+ nfrerebeau / khroma / [GitHub](https://github.com/nfrerebeau/khroma) - Colour Schemes for Archaeological Data Visualization
+ joeroe / stratigraphr / [GitHub](https://github.com/joeroe/stratigraphr) - R package for archaeological stratigraphy and chronological sequences
+ gianmarcoalberti / CAinterprTools / [GitHub](https://github.com/gianmarcoalberti/CAinterprTools) - R package to help interpreting Correspondence Analysis' results
+ gianmarcoalberti / CAseriation / [GitHub](https://github.com/gianmarcoalberti/CAseriation) - R Package for contingency tables seriation via Correspondence Analysis
+ MartinHinz / pollen_data_processing / [GitHub](https://github.com/MartinHinz/pollen_data_processing) - some tools in respect to pollen data processing.

## Datasets

+ benmarwick / binford / [GitHub](https://github.com/benmarwick/binford) - Datasets used in Binford's 2001 book "Constructing Frames of Reference: An Analytical Method for Archaeological Theory Building Using Ethnographic and Environmental Data Sets
+ benmarwick / evoarchdata / [GitHub](https://github.com/benmarwick/evoarchdata) - Datasets from studies of cultural evolution in Archaeology
+ benmarwick / 1989-excavation-report-Madjedbebe / [GitHub](https://github.com/benmarwick/1989-excavation-report-Madjedbebe) - Text, data and code to accompany the analysis of the 1989 excavation data
+ zackbatist / DObsiSS / [GitHub](https://github.com/zackbatist/DObsiSS) - The Database of Obsidian Sourcing Studies
+ klokantech / roman-empire / [GitHub](https://github.com/klokantech/roman-empire) - Map of the Roman Empire made with vector tiles
+ natowi / photogrammetry_datasets / [GitHub](https://github.com/natowi/photogrammetry_datasets) - This is a collection of datasets for photogrammetry
+ isaacullah / R-Scripts / [GitHub](https://github.com/isaacullah/R-Scripts) - This contains a set of data about human mobility, subsistance, population, and environmental productivity derived from the Standard Cross Cultural Sample
+ sfsheath / roman-amphitheaters / [GitHub](https://github.com/sfsheath/roman-amphitheaters) - A dataset and discussion relating to Roman amphitheaters
+ sfsheath / roman-maps / [GitHub](https://github.com/sfsheath/roman-maps) - These are geojson files relevant to Roman history. Initially they are all derived from the Ancient World Mapping Center's set of CC-BY-NC licensed shapefiles.
+ Ancient World Mapping Center / Map Files / [Website](http://awmc.unc.edu/wordpress/map-files/) / [Open Directory](http://awmc.unc.edu/awmc/map_data/) - This page presents an ever growing collection of resources for digital mapping.
+ sfsheath / gorbit / [GitHub](https://github.com/sfsheath/gorbit) - Making the freely available and excellent Orbis data just a little bit more easy to use.
+ sfsheath / rorbium / [GitHub](https://github.com/sfsheath/rorbium) - <http://orbis.stanford.edu> data as an R package.
+ archca / aca_data_collection / [GitHub](https://github.com/archca/aca_data_collection) - collection of archaeological data for training purposes.

### Packaged for R

+ sfsheath / cawd / [GitHub](https://github.com/sfsheath/cawd) - An R package that collects together data for the ancient world
+ ISAAKiel / shkrdata / [GitHub](https://github.com/ISAAKiel/shkrdata) - Package for downloading and preparing shkr data for archaeological analysis
+ David L. Carlson & Georg Roth / archdata / [CRAN](https://cran.rstudio.com/web/packages/archdata/index.html) - The archdata package provides several types of data that are typically used in archaeological research
+ sfsheath / ramphs / [GitHub](https://github.com/sfsheath/ramphs) - Roman amphitheater data as R package

## Snippets, Templates and Example Code

+ isaacullah / DroneSurveyPlanner / [GitHub](https://github.com/isaacullah/DroneSurveyPlanner) / [Website](http://isaacullah.github.io/DroneSurveyPlanner/) - This is a LibreOffice Calc spreadsheet designed to help you plan an aerial drone mapping survey mission
+ benmarwick / benmarwickopencontext.r / [Gist](https://gist.github.com/benmarwick/50aa4c39b7d955d0ec40) - Experimenting with the opencontext.org API using R
+ benmarwick / benmarwickDY-XYZ-data-on-an-irregular-grid-to-an-interpolated-raster.r / [Gist](https://gist.github.com/benmarwick/7331879) - Plotting remote sensing data, especially how to go from XYZ data on an irregular grid to an interpolated raster

## Complete Analyses and Demonstrations

+ benmarwick / dayofarchaeology / [GitHub](https://github.com/benmarwick/dayofarchaeology) - A Distant Reading of the Day of Archaeology
+ Matt Peeples / LISA / [Website](http://www.mattpeeples.net/modules/LISA.html) - Moran's I and Getis-Ord G* Analysis
+ Matt Peeples / PLC / [Website](http://www.mattpeeples.net/modules/PLC.html) - Cluster Analysis - Pure Locational Clustering
+ mpeeples2008 / Measuring-Archaeological-Diversity-by-Comparing-to-Simulated-Assemblages / [GitHub](https://github.com/mpeeples2008/Measuring-Archaeological-Diversity-by-Comparing-to-Simulated-Assemblages) - This is an R script that replicates the analyses presented in : Kintigh, K. 1984. Measuring Archaeological Diversity by Comparison with Simulated Assemblages. American Antiquity 49: 44-54
+ Matt Peeples / UnconstrainedClustering / [Website](http://www.mattpeeples.net/modules/UnconstrainedClustering.html) - Unconstrained Clustering
+ Matt Peeples / BasicMapping / [Website](http://www.mattpeeples.net/modules/BasicMapping.html) - Working with map data in R
+ Matt Peeples / PointPattern / [Website](http://www.mattpeeples.net/modules/PointPattern.html) - Point Pattern Analysis
+ benmarwick / archaeology-grand-challenges.r / [Gist](https://gist.github.com/benmarwick/d3eb3167ccb2116197ca) - Sketch of a look at the 'grand challenges' of Kintigh et al. 2014 http://www.pnas.org/content/111/3/879.full
+ gavinsimpson / frontiers-palaeo-additive-modelling / [GitHub](https://github.com/gavinsimpson/frontiers-palaeo-additive-modelling) - Modelling and feature detection in palaeoenvironmental time series using additive models
+ benmarwick / mjbtramp / [GitHub](https://github.com/benmarwick/mjbtramp) - 
+ nevrome / IfriElBaroud / [GitHub](https://github.com/nevrome/IfriElBaroud) - Research compendium for a contribution to ‘Human Occupation and Environmental Change in the Western Maghreb during the Last Glacial Maximum (LGM) and the Late Glacial. New Evidence from the Iberomaurusian Site Ifri El Baroud (North-east Morocco)’
+ adreinhard / cca / [GitHub](https://github.com/adreinhard/cca) - Colossal Cave Adventure digital palaeography and epigraphy project
+ fradeve / sipontomedievale / [GitHub](https://github.com/fradeve/sipontomedievale) - This repo contains the code running under [www.sipontomedievale.it](http://www.sipontomedievale.it),
  an interactive website based on solid open source software created to illustrate historical background, 
  findings and data of the Siponto excavation site (Manfredonia, FG -- 
  Italy).
+ aejolene / maacgis / [GitHub](https://github.com/aejolene/maacgis) / [Website](https://aejolene.github.io/maacgis/) - Climate Response and Virginia Archaeology: Maps from Different Points of View
+ aejolene / disastermap / [GitHub](https://github.com/aejolene/disastermap) / [Website](https://aejolene.github.io/disastermap/) - Proof of concept map for disaster response and archaeology.

## Platforms and Initiatives

+ rekrei / rekrei / [GitHub](https://github.com/rekrei/rekrei) - Platform for crowdsourcing the digital recreation of lost heritage
+ anatolian / archaeological-object-sharing / [GitHub](https://github.com/anatolian/archaeological-object-sharing) - An online space for sharing data, 3d models, etc about archaeological objects to enable the comparison of these objects
+ Open Context / Open Context Python Code Repository / [GitHub](https://github.com/ekansa/open-context-py) - 

## Educational Tools

+ kacebe / AtlantGIS / [GitHub](https://github.com/kacebe/AtlantGIS) - Faked GIS-Datasets, simulating an island in the Atlantic for educational purposes in using GIS in archaeology
+ o-date / ODATE / [GitHub](https://github.com/o-date/draft) / [Website](https://o-date.github.io/) - An introduction to the issues, methods, and techniques of digital archaeology, integrated with working code and virtual computing environments or 'notebooks' written in Python or R.
+ msu-anthropology / Digital Encyclopedia of Archaeologists / [GitHub](https://github.com/msu-anthropology/deoa) - 
+ isaacullah / GIS-Projects / [GitHub](https://github.com/isaacullah/GIS-Projects) - GIS Projects for teaching and learning about Computational Archaeology
+ isaacullah / [Website](http://isaacullah.github.io/A-mobile-field-data-collection-workflow/) - A Mobile Data-Collection Workflow for Archaeologists
+ benmarwick / benmarwicka-scientific-computing-environment-for-archaeology.txt / [Gist](https://gist.github.com/benmarwick/11204658) - Scientific Computing Environment for archaeology: Installing R, Rstudio and other things on a lightweight Linux in a VirtualBox virtual machine
+ fradeve / grass-arch / [GitHub](https://github.com/fradeve/grass-arch) - A LaTeX textbook devoted to explain how archaeologists can work with GRASS GIS
+ sfsheath / teaching-rome / [GitHub](https://github.com/sfsheath/teaching-rome) - A collection of texts, 3d models, and maybe other resources useful for teaching about the Roman Empire.
+ MartinHinz / vitutr / [GitHub](https://github.com/MartinHinz/vitutr) - A page for video tutorials on R, specifically for archaeology
+ archca / pred_map_tut / [GitHub](https://github.com/archca/pred_map_tut) / [Website](https://archca.github.io/pred_map_tut/index.html) - A tutorial for (archaeological) predictive mapping using r

## Conferences and Workshops

+ FOSS4Arch / SAA2016 / [GitHub](https://github.com/FOSS4Arch/SAA2016) - 
+ benmarwick / SAA2015-Open-Methods / [GitHub](https://github.com/benmarwick/SAA2015-Open-Methods) - 
+ ISAAKiel / LAC2018_Session_44C / [GitHub](https://github.com/ISAAKiel/LAC2018_Session_44C) - 
+ ISAAKiel / SummerSchool_moin / [GitHub](https://github.com/ISAAKiel/SummerSchool_moin) - 
+ ISAAKiel / SummerSchool_moin / [GitHub](https://github.com/ISAAKiel/r_tutorial_caa_2018) - 
+ ISAAKiel / R-Tutorial_CAA2016 / [GitHub](https://github.com/ISAAKiel/R-Tutorial_CAA2016) - 
+ ISAAKiel / Mosaic / [GitHub](https://github.com/ISAAKiel/Mosaic) - 
+ mpeeples2008 / Archaeological-Network-Uncertainty / [GitHub](https://github.com/mpeeples2008/Archaeological-Network-Uncertainty) - R Markdown document associated with the workshop at the Computer Applications and Quantitative Methods in Archaeology Meeting in Atlanta, GA 2017, hosted by Matt Peeples and Tom Brughmans. Network Science and Statistical Techniques for Dealing with Uncertainties in Archaeological Datasets. 

## Lists

- steko / archaeology / [GitHub](https://github.com/steko/archaeology) - A directory of GitHub projects by OR for archaeologists
- benmarwick / ctv-archaeology / [GitHub](https://github.com/benmarwick/ctv-archaeology) / [grouped by topic]() - This CRAN Task View contains a list of packages useful for scientific work in Archaeology
- Doug Rocks-Macqueen, Lorna Richardson, Emma O'Riordan, Katrina Urban / Open Access Archaeology / [Blog](http://www.openaccessarchaeology.org) / [Twitter](https://twitter.com/OpenAccessArch) - OpenAccessArchaeology.org is dedicated to helping people discover and use Open Access resources in the field of Archaeology
- Keith Kintigh / Tools for Quantitative Archaeology / [Website](http://tfqa.com/) - Keith KintighTools for Quantitative Archaeology TFQA, is a package of more than 45 PC programs developed to satisfy several unusual analytical needs of archaeologists
- isaacullah /  / [Blog](http://isaacullah.github.io/List-of-FOSS-tools-for-academics/) - Isaac's List of FOSS tools for academics... and what to use them for!
- sarahkansa / levant-zooarch / [GitHub](https://github.com/sarahkansa/levant-zooarch) - Table of faunal analyses from archaeological sites in the Levant
- Charles E. Jones / Alphabetical List of Open Access Monograph Series in Ancient Studies / [Blog Post](http://ancientworldonline.blogspot.com/2014/06/alphabetical-list-of-open-access.html) / [Twitter](https://twitter.com/AWOL_tweets) - This page includes links to digitized or born-digital open access monograph series
- Charles E. Jones / Alphabetical List of Open Access Journals in Ancient Studies / [Blog Post](http://ancientworldonline.blogspot.com/2015/12/alphabetical-list-of-open-access.html) / [Twitter](https://twitter.com/AWOL_tweets) - 
- Charles E. Jones / Open Access Ancient Language Textbooks, OERs, and Primers / [Blog Post](http://ancientworldonline.blogspot.com/2009/09/open-access-textbooks.html) / [Twitter](https://twitter.com/AWOL_tweets) - Open Access Textbooks, OERs, and Language Primers relating to the ancient world
- Charles E. Jones / Roundup of Resources on Ancient Geography / [Blog Post](http://ancientworldonline.blogspot.com/2012/09/roundup-of-resources-on-ancient.html) / [Twitter](https://twitter.com/AWOL_tweets) - Included in the following list are links to digital project dealing with geography and the ancient world
- Charles E. Jones & Tom Elliott / The AWOL Index / [Website](http://isaw.nyu.edu/publications/awol-index/) - This publication systematically describes ancient-world information resources on the world-wide web. The bibliographic data presented herein has been programmatically extracted from the content of AWOL - The Ancient World Online (ISSN 2156-2253) and formatted in accordance with a structured data model.

## Unsorted

+ cornelmpop / Lithics3D / [GitHub](https://github.com/cornelmpop/Lithics3D) - An R package for processing and analyzing 3D scans of archaeological lithics
+ ArchaeoStat / ArchaeoChron / [GitHub](https://github.com/ArchaeoStat/ArchaeoChron) - Bayesian Modeling of Archaeological Chronologies
+ ArchaeoStat / ArchaeoPhases / [GitHub](https://github.com/ArchaeoStat/ArchaeoPhases) - Tools for the post-processing of the Markov Chain simulated by any software used for the construction of archeological chronologies
+ sfsheath / 3d-ceramics / [GitHub](https://github.com/sfsheath/3d-ceramics) - 3d models of archaeological ceramics.
+ sfsheath / italy-3d-amphitheaters / [GitHub](https://github.com/sfsheath/italy-3d-amphitheaters) - 

## Luminescence Stuff

+ senaite / senaite.lims / [GitHub](https://github.com/senaite/senaite.lims) - Modern, mobile first LIMS UI
+ stas-g / findPeaks / [GitHub](https://github.com/stas-g/findPeaks) - A simple algorithm to find local maxima/minima in sequential data
+ RLumSK / Al2O3_AnalysisApp / [GitHub](https://github.com/RLumSK/Al2O3_AnalysisApp) - Shiny app to analyse Al2O3:C measurements 
+ wojdyr / xylib / [GitHub](https://github.com/wojdyr/xylib) - library for reading files with x-y data from powder diffraction, spectroscopy, or other experimental methods. xylib is a portable library for reading files that contain x-y data from powder diffraction, spectroscopy and other experimental methods.
+ R-Lum / rxylib / [GitHub](https://github.com/R-Lum/rxylib) - R package: wrapper for the C+library `xylib`
+ R-Lum / Luminescence / [GitHub](https://github.com/R-Lum/Luminescence) - Development version of the R package 'Luminescence'. The R package 'Luminescence' by the R-Luminescence Group provides a collection of various R functions for luminescence dating data analysis. http://www.r-luminescence.org/
+ dstreble / LumReader / [GitHub](https://github.com/dstreble/LumReader) - R package to simulate a Luminescence Reader
+ dstreble / Tldating / [GitHub](https://github.com/dstreble/Tldating) - R package for TL dating
+ dstreble / shiny_Tldating / [GitHub](https://github.com/dstreble/shiny_Tldating) - Shiny app for TL dating
+ dstreble / shiny_DRAC / [GitHub](https://github.com/dstreble/shiny_DRAC) - graphical interface for DRAC
+ R-Lum / BayLum / [GitHub](https://github.com/R-Lum/BayLum) - An R package for chronological Bayesian models integrated for Optically Stimulated OSL, Luminescence Dating
+ R-Lum / Rcarb / [GitHub](https://github.com/R-Lum/Rcarb) - The R package ‘RCarb’ provides a collection of various R functions to model dose rates in carbonate-rich samples. The package is a translation of the ‘MATLAB’ program Carb by Roger P. Nathan

## Radiocarbon Stuff

## Palaeoclimate and Archaeobotany Stuff

+ gavinsimpson / analogue / [GitHub](https://github.com/gavinsimpson/analogue) - Analogue and weighted averaging methods for palaeoecology
+ gavinsimpson / coenocliner / [GitHub](https://github.com/gavinsimpson/coenocliner) - An R package to simulate species occurences and abundances counts, along gradients
+ vegandevs / vegan / [GitHub](https://github.com/vegandevs/vegan) - R package for community ecologists: popular ordination methods, ecological null models & diversity analysis
+ vegandevs / vegan3d / [GitHub](https://github.com/vegandevs/vegan3d) - Dynamic and static 3D plotting for vegan
+ gavinsimpson / ggvegan / [GitHub](https://github.com/gavinsimpson/ggvegan) - ggplot-based plots for vegan
+ ropensci / neotoma / [GitHub](https://github.com/ropensci/neotoma) - Programmatic R interface to the Neotoma Paleoecological Database

## Games

+ Camology / ArchaeologyAdventure / [GitHub](https://github.com/Camology/ArchaeologyAdventure) - A simple adventure game in Unity2D. Revolves around being an archaeologist exploring some ruin and digging up treasure/fossils.

## Schema

aejolene / NRHP_Metadata_Scheme / [GitHub](https://github.com/aejolene/NRHP_Metadata_Scheme) / [Website](https://www.nps.gov/nr/publications/bulletins/nrb16a/index.htm) - Metadata scheme for National Register of Historic Places, transcribed from the National Park Service NPS Bulletin 16.

matrix-msu / ARCSCore / [GitHub](https://github.com/matrix-msu/ARCSCore) - ARCSCore is a metadata standard for organizing and sharing digital versions of non-digital documents created during the course of an archaeological investigation.
