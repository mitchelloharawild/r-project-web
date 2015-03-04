<div align="center">

![GSoC 2008 logo](RSoC2.jpg)

</div>

# R Project Ideas 2008

In addition to the project ideas listed below, R-related projects can also be found at the [Phyloinformatics SoC page](http://phyloinformatics.net/Phyloinformatics_Summer_of_Code_2008).

------------------------------------------------------------------------

## Roxygen

**Mentor:** [Manuel J. A. Eugster](http://www.statistik.lmu.de/~eugster/)

`Roxygen` is an extension of the `R` language and provides a documentation and development assistance system. The documentation system is in the style of [Doxygen](http://www.stack.nl/~dimitri/doxygen/) or [Javadoc](http://java.sun.com/j2se/javadoc/), and the development assitance system is (somehow) like a pre-processor with its directives.

[Full Outline (pdf)](Roxygen.pdf)

**Project attributes:** Sophisticated project; student needs to know `R` very well, especially the structural elements like functions, S3/4 classes, generics, ..., and the student needs some basic knowledge about writing a parser. At best, the student has worked with Doxygen, Javadoc or another documentation system.

------------------------------------------------------------------------

## Ruml

**Mentor:** [Manuel J. A. Eugster](http://www.statistik.lmu.de/~eugster/)

`Ruml` creates UML class diagrams from existing S classes in the sense of [UMLGraph](http://www.umlgraph.org/) for Java classes. This is usefull for documentation and exploration of existing packages: `R` specific things like generic functions, namespaces, S3 and S4, ... should be considered.

[Full Outline (pdf)](Ruml.pdf)

**Project attributes:** Easier project; student needs to know the structual elements of `R` (like functions, S3/4 classes, generics, ...,) very well and has basic knowlegde about UML (class diagrams).

------------------------------------------------------------------------

## Connecting R and PostgreSQL using DBI

**Mentor:** [Dirk Eddelbuettel](http://dirk.eddelbuettel.com)

**Summary:** R has a the widely used database-abstraction interface 'DBI' with support for MySQL, SQLite, Oracle, ... backends. Support for PostgreSQL would complement this.

**Required skills:** Knowledge of C programming is required; knowledge of R and SQL are beneficial.

**Description:** The 'Database Interface' (DBI) package provides an abstraction layer between R and the actual database backend. This requires 'glue code' for every given backend to provide the support for the API exposed by DBI. R has DBI support for MySQL, SQLite and Oracle backends, but not for PostgreSQL. However, there is an alternate interface package Rdbi with a matching RdbiPgSQL backend. It appears that Rdbi has stalled in the sense that no other backend was ever provided. . This SummerOfCode project consists of taking what is already available via Rdbi as bringing it to the more widely-used DBI framework.

**References:**

-   [DBI](http://cran.r-project.org/web/packages/DBI/index.html)
-   [Rdbi](http://www.bioconductor.org/packages/bioc/html/Rdbi.html)
-   [RdbiPgSQ](http://www.bioconductor.org/packages/bioc/html/RdbiPgSQL.html)

------------------------------------------------------------------------

## cran2deb: Generate Debian Packages for R from Package Sources

**Mentor:** [Dirk Eddelbuettel](http://dirk.eddelbuettel.com)

**Summary:** GNU R has become the preeminent platform for 'computing with data'. The CRAN archives contain over 1300 source packages of very high-quality, and BioConductor has another 200+. We want more of these in Debian, and going beyond the 50+ packages we currently have suggests more scripting and automation.

**Required skills:** Familiarity with R, preferably actual programming experience; alternatively programming experience in another scripting language (Perl, Python, ...). Some familiarity with Debian package building, C++ knowledge may be beneficial to connect to apt's data structures. Basic SQL knowledge may be helpful for the meta-data collection.

**Description:** CRAN packages have in almost all cases licenses which are suitable for Debian 'main'. Moreover, the internal packaging and structure of these packages already resembles some of the Debian meta-data, and the build process itself is standardised. What is needed are a set of tools to collect package meta-data (and the [CRANberries](http://dirk.eddelbuettel.com/cranberries/index.html) aggregator has one-half, apt has the other), 'map' the meta-data and then script package fragments. While the [PkgBioc](http://wiki.debian.org/AliothPkgBioc) project on Alioth has done work in this area, it may be worthwhile to try a new and simpler approach.

------------------------------------------------------------------------

## crantastic.org: Build a Community Site for R

**Mentor:** [Hadley Wickham](http://had.co.nz)

**Summary:** Create an information portal for the fast growing list of R packages, integrating package documentation and journal publications with feedback from the useR community.

**Required skills:** Familiarity with Ruby and R, and web development in general (html, css, js, ...). knowledge of RSS/Atom could be useful.

**Description:** The CRAN archives contain over 1300 source packages of very high-quality, and BioConductor has another 200+. For many data analytic tasks there is more than one package offering a solution, often using different names for similar functionality, because different research communities may use different vocabulary for similar methods (e.g., statistics vs. machine learning jargon). Hence it is often hard for users to find the packages they really need. CRAN [task views](http://cran.r-project.org/web/views/) offer some help, but are edited by designated maintainers and hence cannot cover all fields and aspects.

[crantastic.org](http://crantastic.org) implements a first step in complementing this with package reviews from the useR community, but it still lacks many features we would like to have: integration with task views, vignettes, and journal publications; match authors and users based on email address; list top users and authors on respective pages; implement a rating system; event streams for packages and users; integration with [CRANberries RSS feed](http://dirk.eddelbuettel.com/cranberries/index.rss), etc.

------------------------------------------------------------------------

## Finite Mixture Models for Large Data Sets

**Mentor:** [Friedrich Leisch](http://www.statistik.lmu.de/~leisch/)

**Summary:** Transfer the most popular mixture models in R package [flexmix](http://cran.R-project.org/package=flexmix) from interpreted R code to compiled C code, add interactive visualization to the package.

**Required skills:** Familiarity with R, preferably actual programming experience. C programming.

**Description:** Finite mixture models are the current state-of-the-art in marketing research to cluster consumers into market segments. Package [flexmix](http://cran.R-project.org/package=flexmix) implements a flexible framework for fitting this type of models, and is mainly designed for rapid prototyping. As all code is currently interpreted R code, the fitting is rather slow for large data sets. In order to use the package for mining large data sets, the most poular models in the package should be re-implemented in C. In addition, there are ideas on interactive visualization of these models using R packages like [rggobi](http://cran.R-project.org/package=rggobi) or [iplots](http://cran.R-project.org/package=iplots).

------------------------------------------------------------------------

## XML format and tools for R documentation

**Mentor** [Duncan Temple Lang](http://www.stat.ucdavis.edu/~duncan)

**Summary** Extend an experimental R package that provides a collection of tools for working with documentation for R functions, classes, data and dynamic documents using XML as the format.

**Required skills** Programming experience with R and some knowledge of S4 classes, knowledge of XML and XSL.

**Description** The Rd format used for R functions has served us well for quite some time, but a richer format that could handle, e.g. plots, images, annotated examples, allow includes of sub-documents to allow for reuse across documents, easier validation, user-level extensions would be valuable. Some initial work has been done to define a format for documenting R functions, classes, methods and data via an XML format, leveraging DocBook. Along with this, we need tools to both generate the template documents that authors complete and then process them. This involves updating them programmatically from within R, e.g. to validate and update the list of parameters in a function or slots in a class. Also, we need tools to transform the XML documents to different formats such as PDF, HTML, Rd, LaTeX and simple text which is done primarily through XSL. A prototype for some of this is already in place, but there is a need to extend and complete it and also explore new ideas so there is significant room for creativity and initiative. And this dovetails into a project for authoring more general documents using a reproducible, dynamic mechanism based on XML.

------------------------------------------------------------------------

## Embedding R in Gnumeric

**Mentor** [Duncan Temple Lang](http://www.stat.ucdavis.edu/~duncan)

**Summary** Develop a new plugin for the Gnumeric spreadsheet which allows R functions and graphics to be used directly from Gnumeric.

**Required skills** Programming experience with R and C and an understanding of the computational model of spreadsheets.

**Description** This involves a new implementation of the ideas from a previous R-Gnumeric plugin ([RGnumeric](http://www.omegahat.org/RGnumeric)) and extension of the ideas in that initial implementation. The aim is to allow R functions to be accessed as if they were built-in Gnumeric functions for use in spreadsheets. Also, we want to be able to use the R graphics engine to create plots that can be placed on sheets similar to the existing Gnumeric charting facilities. A further wrinkle is to be able to programmatically augment the Gnumeric GUI from within R using RGtk2. These facilities will allow users access to many of R's facilities from within a convenient interface and be useful in business and education.

