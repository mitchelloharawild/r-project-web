<div align="center">

![GSoC 2008 logo](RSoC2.jpg)

</div>

# Projects 2008

The *R Foundation for Statistical Computing* has been participating in [Google Summer of Code 2008](http://code.google.com/soc/2008/rf/about.html). Based on the [ideas list](ideas.html) the following projects and students were selected and were sponsored by Google during summer 2008 (sorted alphabetically by student):

------------------------------------------------------------------------

## lme4: Adaptive Gauss-Hermite quadrature method for mixed-effects models

*by Bin Dai, mentored by Douglas M. Bates.*

This project continues to complete the package lme4 under supervision of prof. Bates. Adaptive Gauss-Hermite quadrature (AGQ) method will be used to evaluate the integrals. This method can be implemented with arbitrary degrees of accuracy, leading to nearly unbiased estimates, while first-order Laplacian approximations have been reported to produce biased estimates under some distributional scenarios.

[Application Information](http://code.google.com/soc/2008/rf/appinfo.html?csaid=55806914EDEFC50A),

------------------------------------------------------------------------

## Roxygen documentation system for R

*by Peter Danenberg, mentored by Manuel J. A. Eugster.*

Roxygen is R's analogue to Doxygen; it aims to preserve Doxygen's basic components: documentation blocks preceding code objects which describe the objects with key-value pairs. Roxygen will ship with the Documentation-, Namespace-, and Collate-Roclets with produce, respectively, Rd, package namespace, and collated package descriptions.

[Application Information](http://code.google.com/soc/2008/rf/appinfo.html?csaid=FA6F2563CBDC42AB), [Project website](http://roxygen.org/), [Code repository](http://r-forge.r-project.org/projects/roxygen/).

------------------------------------------------------------------------

## Finite Mixture Models for Large Data Sets

*by Arijit Das, mentored by Friedrich Leisch.*

The main aim of this project would be to re-implement most popular models of the flexmix package in C so that it is feasible to mine large data sets. Since EM algorithm converges only to a local minimum, it is recommended to repeat it several times and for various number of components keeping only the best solution found. In this project this part of the algorithm would be parallelized for multi-CPU machines or clusters of workstations to achieve greater efficiency.

[Application Information](http://code.google.com/soc/2008/rf/appinfo.html?csaid=4D6CA06557E0BE44),

------------------------------------------------------------------------

## Connecting R and PostgreSQL using DBI

*by Sameer Kumar Prayaga, mentored by Dirk Eddelbuettel*.

The GSoC project involves creating an R add-on package that provides the 'glue' between the DBI package and PostgreSQL. This will bridge the existing gap for a DBI connection between the premier Open Source data analysis system R and the object-relational database management system PostgreSQL.

[Application Information](http://code.google.com/soc/2008/rf/appinfo.html?csaid=A42821F29AAA07BA), [Project website](http://rpostgresql.googlecode.com/), [Code repository](http://rpostgresql.googlecode.com/svn), [Package](http://cran.r-project.org/package=RPostgreSQL).

