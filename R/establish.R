cran_dependencies <- c("rstudioapi", "digest", "checkmate", "shiny", "miniUI")
path_to_package_of_interest <- "/Users/lorenz/datasciencecoursera"
package_of_interest <- "strcode"

# remotes::install_github("RevolutionAnalytics/miniCRAN", ref = "23-addLocalPackages")
library("miniCRAN")

##  ............................................................................
##  set up repo with packages from mirror                                   ####

remote <- "https://stat.ethz.ch/CRAN/"
wd <- path.expand(getwd())
# Specify list of packages to download from mirror. 
# These are the dependencies of your local package that are available on CRAN.
pkgList <- pkgDep(cran_dependencies, repos = remote, type="source", suggests = FALSE, 
                  availPkgs = available.packages())
pkgList

makeRepo(pkgList, path = wd, repos= remote, type = "source")

# show files
list.files(recursive = TRUE, full.names = FALSE)

# Check for available packages
pkgAvail(repos= wd, type="source")

# install dependencies
install.packages(cran_dependencies,
                 repos = paste0("file:///", wd),
                 type = "source")


##  ............................................................................
##  add and install your local package                                      ####
addLocalPackage(package_of_interest, path_to_package_of_interest, 
                type = "source", wd, build = FALSE)
# install it
install.packages("strcode", repos = paste0("file:///", wd), type= "source")
