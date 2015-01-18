# r-project.org

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

A copy of the site converted to md (by `from-html.R`). A few minor changes made by hand. 

## out

`to-html.R`. md -> html by pandoc. Serve with:

```R
install.packages("servr")
servr::httd("out")
```
