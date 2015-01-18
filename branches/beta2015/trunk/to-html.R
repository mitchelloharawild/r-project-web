files <- dir("md", recursive = TRUE, include.dirs = TRUE)
is_md <- grepl("\\.md$", files)
md <- files[is_md]

dir.create("out")
dirs <- files[file.info(file.path("md", files))$isdir]
lapply(file.path("out", dirs), dir.create, showWarnings = FALSE)

# convert markdown files
conv <- paste0("pandoc ", file.path("md", md), " -o ", file.path("out", gsub("md", "html", md)), 
  " --template template.html")
lapply(conv, system)

# copy non-markdown files
other <- files[!is_md]
file.copy(file.path("md", other), file.path("out", other))
