Note that this repo is out of date. The bellow mentioned branch `23-addLocalPackges` 
is merged into master and the script may be otherwise incomplete.

This repo shows how you can set up your local miniCRAN and add your own *local* 
packages using the package `miniCRAN` and the function `addLocalPackage` from
the branch `23-addLocalPackages` (not yet merge with `master`) in particular. 
Just run the file `R/establish.R`. Before you do that, make sure that you adapt
the parameters of the script, which are `cran_dependencies` (the dependencies
you need for your local package to work), `path_to_package_of_interest`
(which gives the path to the local repo you wan to add to your miniCRAN.) as 
well as `package_of_interest`, the name of the package folder within 
`path_to_package_of_interest`.
