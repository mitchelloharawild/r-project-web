# r-project.org

Source code for <http://explore.rforge.net/index.html>

To build the site: run `make`. In RStudio, you can run this with Cmd + Shift + B.

To preview the site, and automatically run make every second, run:

```R
# install.packages("devtools")
devtools::install_github("yihui/servr")
servr::httd("md")
```
