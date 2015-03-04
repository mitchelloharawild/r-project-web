<div align="center">

![GSoC 2010 logo](2010soclogo.jpg)

</div>

# Projects 2010

As in [2008](../soc08/) and [2009](../soc09/), the R Project has again participated in the [Google Summer of Code during 2010](http://socghop.appspot.com/gsoc/org/show/google/gsoc2010/r_project).

Based on [ideas collected and disussed on the R Wiki](http://rwiki.sciviews.org/doku.php?id=developers:projects:gsoc2010), the projects and students listed below (and sorted alphabetically by student) were selected for participation and have been sponsored by Google during the summer 2010.

The finished projects are available via the [R / GSoC 2010 repository at Google Code](http://code.google.com/p/google-summer-of-code-2010-r-project/), and in several cases also via their individual repos (see below). Informal updates and final summaries on the work was also provided via the [GSoC 2010 R group blog](http://gsoc2010r.wordpress.com/).

------------------------------------------------------------------------

## rdx - Automatic Differentiation in R

*Chidambaram Annamalai, mentored by John Nash.*

**Proposal:** radx is a package to compute derivatives (of any order) of native R code for multivariate functions with vector outputs, `f:R^m -> R^n`, through Automatic Differentiation (AD). Numerical evaluation of derivatives has widespread uses in many fields. rdx will implement two modes for the computation of derivatives, the Forward and Reverse modes of AD, combining which we can efficiently compute Jacobians and Hessians. Higher order derivatives will be evaluated through Univariate Taylor Propagation.

**Delivered:** Two packages [radx: forward automatic differentiation in R](http://github.com/quantumelixir/radx) and [tada: templated automatic differentiation in C++](http://github.com/quantumelixir/tada) were created; see [this blog post](http://gsoc2010r.wordpress.com/2010/08/20/automatic-differentiation-in-r/) for details.

------------------------------------------------------------------------

## A GUI for Graphics using ggplot and Deducer

*by Ian Fellows, mentored by Hadley Wickham.*

**Proposal:** R puts the latest statistical techniques at one's fingertips through thousands of add-on packages available on the CRAN download servers. The price for all of this power is complexity. Deducer is a cross-platform cross-console graphical user interface built on top of R designed to reduce this complexity. This project proposes to extend the scope of Deducer by creating an innovative yet intuitive system for generating statistical graphics based on the ggplot2 package.

**Delivered:** All of the major features have been implemented, and are outlined in the video links in this [blog post](http://gsoc2010r.wordpress.com/2010/08/04/ggplot2-gui-major-feature-set-complete/).

------------------------------------------------------------------------

## rgeos - an R wrapper for GEOS

*by Colin Rundel, mentored by Roger Bivand.*

**Proposal:** At present there does not exist a robust geometry engine available to R, the tools that are available tend to be limited in scope and do not easily integrate with existing spatial analysis tools. GEOS is a powerful open source geometry engine written in C++ that implements spatial functions and operators from the OpenGIS Simple Features for SQL specification. rgeos will make these tools available within R and will integrate with existing spatial data tools through the sp package.

**Delivered:** The [rgeos](https://r-forge.r-project.org/projects/rgeos/) project on R-Forge; see the final [update blog post](http://gsoc2010r.wordpress.com/2010/07/27/rgeos-update/).

------------------------------------------------------------------------

## Social Relations Analyses in R

*by Felix Schoenbrodt, mentored by Stefan Schmukle.*

**Proposal:** Social Relations Analyses (SRAs; Kenny, 1994) are a *hot topic* both in personality and in social psychology. While more and more research groups adopt the methodology, software solutions are lacking far behind - the main software for calculating SRAs are two DOS programs from 1995, which have a lot of restrictions. My GSOC project will extend the functionality of these existing programs and bring the power of SRAs into the R Environment for Statistical Computing as a state-of-the-art package.

**Delivered:** The [TripleR](http://cran.r-project.org/web/packages/TripleR/index.html) package is now on CRAN and hosted on RForge.Net; see this [blog post for updates](http://gsoc2010r.wordpress.com/).

------------------------------------------------------------------------

## NoSQL Interface for R

*by Yasuhisa Yoshida, mentored by Dirk Eddelbuettel.*

**Proposal:** So-called NoSQL databases are becoming increasingly popular. They generally provide very efficient lookup of key/value pairs. I'll provide several implementation of NoSQL interface for R. Beyond a sample interface package, I'll try to support generic interface similar to what the DBI package does for SQL backends

**Status:** An initial prototype is available via [RTokyoCabinet on Github](http://github.com/syou6162/RTokyoCabinet). No updates were made since June; no communication occurred with anybody related to the GSoC project since June and the project earned a fail.

------------------------------------------------------------------------

Last modified: September 22, 2010 by Friedrich Leisch

