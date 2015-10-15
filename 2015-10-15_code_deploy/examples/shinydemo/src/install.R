dir.create(Sys.getenv("R_LIBS_USER"), showWarnings = FALSE, recursive = TRUE)
install.packages("shiny", Sys.getenv("R_LIBS_USER"), 
                 repos="https://cran.rstudio.com/")
