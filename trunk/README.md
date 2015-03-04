# r-project.org

Source code for <http://explore.rforge.net/index.html>

To build the site: run `make`. In RStudio, you can run this with Cmd + Shift + B.

To preview the site, and automatically run make every second, run:

```R
# install.packages("devtools")
devtools::install_github("yihui/servr")
servr::httd("md")
```

## Initial import

```bash
svn co https://svn.r-project.org/R-project-web/trunk/ html
```

Note that this repository contains files that only differ in case, so _must_ be checked out on a case-sensitive filing system.
