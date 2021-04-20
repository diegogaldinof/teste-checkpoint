
# Package checkpoint ------------------------------------------------------

# Site: https://cran.r-project.org/web/packages/checkpoint/vignettes/checkpoint.html



# Brief explanation -------------------------------------------------------

# There is a checkpoint server.

# CRAN's (R packages repository) snapshots are created every day
# and stored on the checkpoint server.

# Checkpoint package uses these snapshots to download
# packages from a specific date ("2021-04-20").
# Format should be "YYYY-MM-DD".

# checkpoint package also creates a new folder to install
# and store the packages and changes the path to load packages
# to this folder.



# R project ---------------------------------------------------------------

# Checkpoint works with R project, so we need to
# create one for our project.

# File -> New Project...


# Installing checkpoint -------------------------------------------------------
install.packages("checkpoint")
library(checkpoint)



# Using checkpoint --------------------------------------------------------
# Checkpoint will search in your whole R project (all your scripts)
# for library(<package>) or require(<package>) commands.

# If checkpoint finds a library(<package>) in any script,
# it will install the package from the specific date (e.g., "2021-04-20").

# IMPORTANT: Always save your script before run checkpoint.

checkpoint("2021-04-20")

# If you run the code above, nothing will happen because there
# are no library/require commands in your script yet.


# Try yourself --------------------------------------------------------------

## add library(dplyr) e run checkpoint("2021-04-20") again:
# library(dplyr)

## create a new R script and add library(stringr):
# create a new script, write "library(stringr)" (don't run)
# and save the script. Run the checkpoint("2021-04-20").




# Check the new folder and path ----------------------------------------

# Open the checkpoint folder where packages were installed.
# The folder's name is ".checkpoint".
# In my computer, it's in "C:/Users/User/Documents/.checkpoint".


# Check .libPaths() to see the checkpoint folder
.libPaths() # it indicates from where R load packages



# Stop checkpoint ---------------------------------------------------------

# To stop checkpoint, Restart R (e.g., Ctrl or Cmd + Shift + F10)




# Final tips --------------------------------------------------------------

# Run the checkpoint() function every time you go to
# work with this project (checkpoint will change the path).

# If you try to load a new package that was not installed
# by checkpoint yet, it will not work. You will need to
# run checkpoint and checkpoint will install the new package for you.
# And then you can load the package (i.e., library(<package>)).

# If you are working with one script, let the checkpoint
# code in the top.

# If you are working with more scripts, you may create a script
# just to the checkpoint. Run this script every time you
# go to work with this project.
# You can use source(file = "my-checkpoint-script.R") to run your
# checkpoint script.

# Save your scripts. Checkpoint you recognize
# library/require commands if the script was saved.




# Steps --------------------------------------------------------------------

# 0- Create a R project

# 1- Install and load checkpoint package

# 2- Write checkpoint("YYYY-MM-DD"), but don't run

# 3- Add some packages in your script --> library(<package>)

# 4- Run checkpoint("YYYY-MM-DD") --> checkpoint will install the packages

# 5- Run library(<package>) to load the installed packages

# 6- Now, you can work!

# 7- If you need another package, write "library(<package>)", but don't run

# 8- Run checkpoint("YYYY-MM-DD") again --> it will install the new package

# 9- Run library(<package>) to load the package correctly

# 10- Continue working!

# 11- To stop checkpoint, Ctrl or Cmd + Shift + F10.


# Great job!
 

