# This is a simple wrapper of the Shiny examples provided by Rstudio.
# You can check out more examples of Shiny on GitHub at:
# https://github.com/rstudio/shiny-examples

# update the lib paths so that the shiny library can be located, when called in
# CodeDeploy hooks.
.libPaths(c("/home/ubuntu/R/x86_64-pc-linux-gnu-library/3.2", 
            .libPaths()))

library(shiny)

# run the example at a given port
runApp(appDir="050-kmeans-example",
       port=8888,
       host="0.0.0.0",
       launch.browser=F)
