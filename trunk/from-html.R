files <- dir("html", recursive = TRUE, full.names = TRUE, include.dirs = TRUE)
is_html <- grepl("\\.html$", files)
html <- files[is_html]
html <- setdiff(html, c("index.html", "logo.html"))

md <- gsub("html", "md", html)

dir.create("md")
dirs <- files[file.info(files)$isdir]
lapply(gsub("html", "md", dirs), dir.create, showWarnings = FALSE)

conv <- paste0("pandoc ", html, " -o ", md, " --atx-headers --no-wrap")
lapply(conv, system)

system("pandoc html/main.shtml -f html -o md/index.md --atx-headers --no-wrap")


# non_html
file.copy(files[!is_html], gsub("html", "md", files[!is_html]))
