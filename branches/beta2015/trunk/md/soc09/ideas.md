<div align="center">

![GSoC 2009 logo](GSoC09.png)

</div>

# R Project Ideas 2009

-   [Development of crantastic.org](#p1)
-   [Movement Ecology add-ons for adehabitat package](#p2)
-   [Party On! New Recursive Partytioning Tools](#p3)
-   [cranlab -- "You can't control what you can't measure"](#p4)
-   [Integrated debugger](#p5)
-   [RQuantLib -- Bridging R and QuantLib](#p6)

------------------------------------------------------------------------

## Development of crantastic.org

**Mentor:** [Hadley Wickham](http://had.co.nz/).

**Summary:** Create an information portal for the fast growing list of R packages, integrating package documentation and journal publications with feedback from the useR community.

**Required skills:** Familiarity with Ruby and R, and web development in general (html, css, js, ...). knowledge of RSS/Atom could be useful.

**Description:** The CRAN archives contain over 1300 source packages of very high-quality, and BioConductor has another 200+. For many data analytic tasks there is more than one package offering a solution, often using different names for similar functionality, because different research communities may use different vocabulary for similar methods (e.g., statistics vs. machine learning jargon). Hence it is often hard for users to find the packages they really need. CRAN task views offer some help, but are edited by designated maintainers and hence cannot cover all fields and aspects.

[crantastic.org](http://crantastic.org) implements a first step in complementing this with package reviews from the useR community, but it still lacks many features we would like to have: integration with task views, vignettes, and journal publications; match authors and users based on email address; list top users and authors on respective pages; implement a rating system; event streams for packages and users; integration with [CRANberries](http://dirk.eddelbuettel.com/cranberries/cran/new/) RSS feed, etc.

**Programming exercise:** If you're interested in this project take a look at the current code, available at <https://github.com/hadley/crantastic/tree>, and include a couple of concrete suggestions as to how you would improve the current code, and how you plan to implement the additional features.

------------------------------------------------------------------------

## Movement Ecology add-ons for adehabitat package

**Mentor:** [Damiano G. Preatoni](http://uninsubria.academia.edu/DamianoGPreatoni).

**Summary:** Develop some add-on functions to use the adehabitat package to perform basic movement ecology analysis, in particular analysis of fractal dimension D. Developed functions could possibly be included in a future release of the adehabitat package itself.

**Required skills:** The candidate should be both familiar with R programming and wildlife radiotracking data analysis. A minimal familiarity with the adehabitat code could be desirable.

**Description:** Fractal dimension analysis is an useful tool to better understand not just the 'path tortuosity', in an animal's trajectory, but also the scale level at which 'search patterns' occur, i.e. an indirect index of the scale at which habtat resources are 'perceived'.

It has already been shown using simulations (Nams 2005; Oecologia 143: 179-188) that the fractal dimension D of a trajectory changes within scales, and that the fractal dimension could be a valuable tool in multiscale analysis of wildlife movement patterns.

The adehabitat package, increasingly used as a free-open source alternative in radiiotracking and animal habitat selection studies, already has base functions to deal with trajectories in time and space, both as regular samples (e.g. data from GPS radio tags) and as irregular ones (as in 'classic' VHF radiotraking). The implementation of the algorithms devised by Nams could widen the range of analytical instruments that already make adehabitat an almost complete tool.

Moreover, the author of the sole existing software to do fractal analysis ([V.O. Nams](http://nsac.ca/envsci/staff/vnams/Fractal.htm)) has expressed no objection towards such a porting (as reported by Paolo Cavallini in the [AniMov mailing list](http://www.nabble.com/fractals-to21875728.html)), suggesting that a complete rewrite could be a better solution.

In detail, the project objectives will be to port (or rewrite) into R the 'standard' methods offered by the FRACTAL program:

-   fractal dimension estimation (D) using the basic divider method.
-   estimation of D the resampling divider method (Nams 2006: Acta Biotheoretica 54:1-11).
-   estimation of D using the VFractal estimator (Nams, 1996: Landscape Ecology 11:289-297).
-   production of other relevant movement ecology statistics useful in spetial scale perception by animals (Nams 2006: Animal Behaviour. 72: 1197-1203).
-   optionally, in conjunction with the random movement simulators already present in adehabitat (in particular simm.levy and simm.crw), test for deviations from a CRW model (Nams and Bourgeois 2004: Can J. Zool, 82:1738-1747) and detect if oriented movements occur (Nams 2006: Animal Behaviour. 72: 1197-1203)

**[Programming exercise](http://xkcd.com/74/):** The candidate should demonstrate to be able to transform raw irregular VHF radiotracking data into an adehabitat ltraj object, which could be the base data structure to work with in the proposed package.

------------------------------------------------------------------------

## Party On! New Recursive Partytioning Tools

**Mentor:** [Torsten Hothorn](http://www.statistik.lmu.de/~hothorn/) and [Achim Zeileis](http://statmath.wu-wien.ac.at/~zeileis/).

**Summary:** The aim of the project is the implementation of recursive partitioning methods ("trees") which aren't available in R at the moment. The student can choose a method to begin with from a larger set of interesting algorithms.

**Required skills:** Good R programming skills, depending on the complexity of the chosen algorithm C programming might be required as well. A basic understanding of statistics and machine learning would be helpful.

**Description:** Recursive partitioning methods, or simply "trees", are simple yet powerful methods for capturing regression relationships. Since the publication of the automated interaction detection (AID) algorithm in 1964, many extensions, modifications, and new approaches have been suggested in both the statistics and machine learning communities. Most of the standard algorithms are available to the R user, e.g., through packages rpart, party, mvpart, and RWeka.

However, no common infrastructure is available for representing trees fitted by different packages. Consequently, the capabilities for extraction of information - such as predictions, printed summaries, or visualizations - vary between packages and come with somewhat different user interfaces. Furthermore, extensions or modifications often require considerable programming effort, e.g., if the median instead of the mean of a numerical response should be predicted in each leaf of an rpart tree. Similarly, implementations of new tree algorithms might also require new infrastructure if they have features not available in the above-mentioned packages, e.g., multi-way splits or more complex models in the leafs.

To overcome these difficulties, the partykit package has been started on R-Forge. It is still being developed but already contains a stable class "party" for representing trees. It is a very flexible class with unified predict(), print(), and plot() methods, and can, in principle, capture all trees mentioned. But going beyond that, it can also accommodate multi-way or functional splits, as well as complex models in (leaf) nodes.

We aim at making more recursive partitioning methods available to the R community. A first step in this direction is the CHAID package (also hosted on R-Forge). Much more prominent procedures come to mind, for example exhaustive CHAID, C4.5, GUIDE, CRUISE, LOTUS, and many others. Students can choose among these and other recursive partitioning methods they want to implement based on the partykit infrastructure.

**Programming exercise:** Consider the "GlaucomaM" dataset from package ipred. Write a small R function that searches for the best binary split in variable "vari" when "Class" is the response variable. Implement any method you like but without using any add-on package.

------------------------------------------------------------------------

## cranlab -- "You can't control what you can't measure"

**Mentor:** [Manuel J. A. Eugster](http://www.statistik.lmu.de/~eugster/)

**Summary:** The aim of this project is the (1) implementation of software metrics to analyze R packages and (2) the creation of a CRAN software metrics monitor.

**Required skills:** Good R programming skills. Basic knowledge of software engineering and software metrics measurements are useful.

**Description:** Software metrics are measures of some properties of software. In software engineering they are used to monitor improvement of projects; common metrics include 'source lines of code', 'code coverage' or 'software package metrics' (see, e.g., [Wikipedia](http://en.wikipedia.org/wiki/Software_metrics)).

First step of this project is the implementation of an R package which calculates software metrics of R packages. The implementation must be flexible, i.e., a basic set of metrics will be implemented, but others can be added later on.

Second step is the creation of a CRAN software metrics monitor. This means a service which continuously calculates software metrics of CRAN packages and provides the (raw) data. As a first analyzing step a dashboard provides simple basic plots of the data.

"You can't control what you can't measure" is stated by Tom DeMarco, Controlling Software Projects: Management, Measurement and Estimation.

**Programming exercise:** How many functions has the [archetypes](http://cran.at.r-project.org/web/packages/archetypes/) package? Write some R code which counts them.

------------------------------------------------------------------------

## Integrated debugger

**Mentor:** [Romain Francois](http://romainfrancois.blog.free.fr/)

**Summary:** Create an integrated debugger.

**Required skills:** R skills. Experience of using a debugger. Front-end skills depending on the chosen front-end(s).

**Description:** Debugging R code usually involves a lot of work from the command line with the use of functions such as browser, debug, trace, recover. The debug package provides additional debugging functionalities and concepts to R internal debugging capabilities: code display, graceful error recovery, line-numbered conditional breakpoints, access to exit code, flow control, and full keyboard input.

The current front-end used by the debug package is based on tcltk, and although tcltk offers universal portability wherever R is installed, it does not compete with current alternatives in terms of user-experience.

The goal of this project is to create an integrated debugger for R, based on the debug package but coupled with another front-end. Possible front-ends are listed below, ordered by current experience of the mentor.

-   [biocep](http://biocep-distrib.r-forge.r-project.org/) [java,swing]
-   [sciviews-k](http://www.sciviews.org/SciViews-K/index.html) [mozilla,javascript]
-   [statet](http://www.walware.de/goto/statet) [java,eclipse,swt]

**Programming exercise:** If you are interested in the project: If you are coming from an R standpoint, have a look at the debug package and make a few design suggestions about how the package could be modified to support alternative front-ends. If you come from a front-end standpoint, make a few suggestions on how you would present the information.

------------------------------------------------------------------------

## RQuantLib -- Bridging R and QuantLib

**Mentor:** [Dirk Eddelbuettel](http://dirk.eddelbuettel.com/)

**Summary:** The goal of this Summer of Code project is to

1.  extend the coverage of [QuantLib](http://www.quantlib.org) code available to R by adding more wrapper functions to [RQuantLib](http://cran.r-project.org/web/packages/RQuantLib/index.html) [(\*)](#p6r), and to
2.  provide additional functionality to QuantLib by leveraging the numerous statistical facilities in R -- this could be anything from standard to robust estimation methods, data visualization or report creation via tools like Sweave.

**Required skills:** Good R and C++ programming skills. At least some familiarity with basic open source tools like svn, make, ... is beneficial as well. Some understanding of financial economics may be helpful but is not required.

**Description:** QuantLib, the premier free/open-source library for modeling, trading, and risk management, provides a comprehensive software framework for quantitative finance. QuantLib has been developed since Nov 2000 and is now approaching an initial 1.0 release at which point the API will be frozen. This makes it a good point in time to start building more code on top of the API.

RQuantLib, first released in 2002 as a proof-of-concept, provides a subset of the available QuantLib functonality. Many more asset classed and methods are now available.

This Summer of Code project provides ample scope for a student to first learn about possible extensions to RQuantLib, to learn about interfaces from R to underlying libraries and back, and to then design, architect and implement some meaningful extension.

**Programming exercise:** Take the current RQuantLib package and provide a new function that exposes functionality from QuantLib to R, preferably with a tests/ file and a help file.

(\*) as well as <http://r-forge.r-project.org/projects/rquantlib/> as well as <http://dirk.eddelbuettel.com/code/rquantlib.html>

------------------------------------------------------------------------
