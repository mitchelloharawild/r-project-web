---
title: The R Project for Statistical Computing
---

## Download R 

**R version 3.1.2** (Pumpkin Helmet) was released on 2014-10-31. [Release notes](http://cran.rstudio.com/src/base/NEWS.html).

<table class="table table-hover" id="rtable">
<thead>
<tr class="header">
<th align="left">Operating system</th>
<th align="left">Size</th>
<th align="left">MD5</th>
</tr>
</thead>
<tbody>
<tr class="odd" id="win">
<td align="left"><a href="http://cran.r-project.org/bin/windows/base/R-3.1.2-win.exe" data-path="bin/windows/base/R-3.1.2-win.exe">Windows</a></td>
<td align="left">54&nbsp;<span class="initialism">MB</span></td>
<td align="left"><small>9e3c0cd6311355e0d5f8e1085b288361</small></td>
</tr>
<tr class="even" id="mac">
<td align="left><a href="http://cran.r-project.org/bin/macosx/R-3.1.2-mavericks.pkg" data-path="bin/macosx/R-3.1.2-mavericks.pkg">Mac OS 10.9+</a></td>
<td align="left">55&nbsp;<span class="initialism">MB</span></td>
<td align="left"><small>d8fb6eaf80357dd058aa1691c684e091</small></td>
</tr>
<tr class="odd">
<td align="left"><a href="http://cran.r-project.org/bin/macosx/R-3.1.2-snowleopard.pkg" data-path="bin/macosx/R-3.1.2-snowleopard.pkg">Mac OS 10.6+</a></td>
<td align="left">68&nbsp;<span class="initialism">MB</span></td>
<td align="left"><small>8a093200b567282932992decff5daf1d</small></td>
</tr>
<tr class="even" id="lin">
<td align="left"><a href="http://cran.r-project.org/src/base/R-3/R-3.1.2.tar.gz"data-path="src/base/R-3/R-3.1.2.tar.gz">Source</a></td>
<td align="left">29&nbsp;<span class="initialism">MB</span></td>
<td align="left"><small>7fe19567fdd32f1a86dd8bec13a666d2</small></td>
</tr>
</table>

<script src="jquery-1.11.3.min.js"></script>
<script>
var platform = window.navigator.platform;
if (/Windows/.test(platform))
  $("#win").addClass("selected");
if (/Mac/.test(platform))
  $("#mac").addClass("selected");
if (/Linux/.test(platform))
  $("#lin").addClass("selected");

// From: http://diveintohtml5.info/storage.html
function has_storage() {
  try {
    return 'localStorage' in window && window['localStorage'] !== null;
  } catch (e) {
    return false;
  }
}

function change_mirror() {
  $("#rtable a").each(function(i) {
    this.href = mirror.val() + this.dataset.path;
  });
}

var mirror;
$.getJSON("mirrors.json", function(data) {
  var items = $.map(data, function(key, val){
    return "<option value='" + key + "'>" + val + "</option>";
  });
  $("#rtable").
    after("<p>CRAN mirror: <select id='mirror' name='mirror'>" + items.join("") + "</select></p>");
  mirror = $("#mirror").
    change(function() {
      change_mirror();
      if (has_storage())
        localStorage["mirror"] = mirror.val();
    });
  if (has_storage() && localStorage["mirror"] !== undefined)
    mirror.val(localStorage["mirror"]);
  change_mirror();
});
</script>


Or install for your Linux distro: [Ubuntu](http://cran.rstudio.com/bin/linux/ubuntu/README.html), [Debian](http://cran.rstudio.com/bin/linux/debian/README.html), [Suse](http://cran.rstudio.com/bin/linux/suse/README.html), [RedHat](http://cran.rstudio.com/bin/linux/redhat/README).

## What is R?

R is **data analysis software**: data scientists, statisticians, analysts, quants, and others who need to make sense of data use R for statistical analysis, data visualization, and predictive modeling.

R is a **programming language**: you do data analysis in R by writing scripts and functions in the R programming language. R is a complete, interactive, object-oriented language: designed by statisticians, for statisticians. The language provides objects, operators and functions that make it easy to explore, model, and visualize data.

R is an **environment for statistical analysis**: functions for virtually every data manipulation, statistical model, or chart you could ever need are available in base-R or a contributed package. Most cutting-edge research in statistics and predictive modeling is done in R, so the latest techniques are usually available first in the R.

R is [GPL](COPYING) **open-source software**: not only does this mean that you can download and use R for free, but the source code is also open for inspection and modification to anyone who wants to see how the methods and algorithms work. Like other successful open-source projects such as Linux and MySQL, R has benefited for over 15 years from the “many-eyes” approach to code improvement, and as a result has an extremely high standard of quality and numerical accuracy. Also, as with all open-source systems R has open interfaces, meaning that it readily integrates with other applications and systems. 

R is a **community**. R was first created by Ross Ihaka and Robert Gentleman at the University of Auckland in 1993, and since then the [project leadership](contributors.html) has grown to include more than 20 leading statisticians and computer scientists from around the world. In addition, thousands of others have contributed additional functionality to the R language by creating add-on “packages” for use by the 2 million users of R worldwide. As a result, there is a strong and vibrant community of R users on-line.

(Contributed by David Smith)

## News

-   [**The R Journal Volume 6/1**](http://journal.r-project.org) is available.

-   [**useR! 2014**](http://www.r-project.org/useR-2014), took place at
    the University of California, Los Angeles, USA June 30 - July 3,
    2014.

-   **R version 3.0.3** (Warm Puppy) has been released on 2014-03-06.

-   [**useR! 2015**](http://www.r-project.org/useR-2015), will take
    place at the University of Aalborg, Denmark, June 30 - July 3, 2015.

[More news](/news.html)
