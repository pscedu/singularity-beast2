--
-- BEAST2 2.7.6 modulefile
--
-- "URL: https://www.psc.edu/resources/software"
-- "Category: Utilities"
-- "Description: BEAST 2 is a cross-platform program for Bayesian phylogenetic analysis of molecular sequences."
-- "Keywords: singularity bioinformatics"

whatis("Name: BEAST2-cli")
whatis("Version: 2.7.6")
whatis("Category: Utilities")
whatis("URL: https://www.psc.edu/resources/software")
whatis("Description: BEAST 2 is a cross-platform program for Bayesian phylogenetic analysis of molecular sequences..")
whatis("Keywords: singularity utilities")

help([[
BEAST 2 is a cross-platform program for Bayesian phylogenetic analysis of molecular sequences.

To load the module, type

> module load BEAST2/2.7.6

To unload the module, type

> module unload BEAST2/2.7.6

Tools included in this module are

* beast
* beauti
* densitree
* loganalyser
* logcombiner
* packagemanager
* treeannotator
]])

local package = "BEAST2"
local version = "2.7.6"
local base    = pathJoin("/opt/packages",package,version)
prepend_path("PATH", base)
