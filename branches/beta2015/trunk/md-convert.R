files <- dir("html", recursive = TRUE, full.names = TRUE, include.dirs = TRUE)
html <- files[grepl("\\.html$", files)]
html <- setdiff(html, c("index.html", "logo.html"))

md <- gsub("html", "md", html)

dir.create("md")
dirs <- files[file.info(files)$isdir]
lapply(gsub("html", "md", dirs), dir.create, showWarnings = FALSE)

conv <- paste0("pandoc ", html, " -o ", md, " --atx-headers --no-wrap")
lapply(conv, system)
