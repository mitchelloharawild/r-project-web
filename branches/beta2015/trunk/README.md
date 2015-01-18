# r-project.org

Source code for <http://explore.rforge.net/index.html>

## html

A copy of the site as at Dec 10 2014. The doc directory was excluded because it contains a lot of large files (Rnews).

```R
# In case sensitive file system
svn co https://svn.r-project.org/R-project-web/trunk/ html
# copy to case sensitive

# because a lot of large files
rm -rf doc
```

## md 

Markdown files to render an exploratory site:

* Render `.html` by running `make` in `md`
* Serve a local version with: `servr::httd("md")`
