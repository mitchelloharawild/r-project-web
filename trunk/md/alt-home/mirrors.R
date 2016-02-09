# Select only https mirrors

library(jsonlite)

mirrors <- subset(getCRANmirrors(), substr(URL, 1, 5) == "https")
names <- gsub(" [https]", "", mirrors$Name, fixed = TRUE)
urls <- mirrors$URL
urls[1] <- "https://cloud.r-project.org/"

json <- toJSON(setNames(as.list(urls), names), auto_unbox = TRUE)

writeLines(json, "md/alt-home/mirrors.json")
