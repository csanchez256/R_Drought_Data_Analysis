# ===================
#
# Chris sanchez 2024
#
# ===================

#install.packages("haven")
#install.packages("survey")
#install.packages("jtools")
#install.packages("remotes")
#remotes::install_github("carlganz/svrepmisc")

library("haven")
library("survey")
library("jtools")
library("remotes")
library("svrepmisc")
library("foreign")
library(tidyverse)

drought2020 <- read_dta("C:/Users/css7c/OneDrive/Desktop/R_Coding/Sample_Data/dataCleanup_visualizations/Drought_Data2020.dta") 

data()
view(drought2020)
