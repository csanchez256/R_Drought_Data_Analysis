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

# note the variables are columns, the observations are rows
glimpse(drought2020)

#HouseholdInc <- filter(drought2020, R_st_name, MedianHHInc < 30000)
NM_State <- filter(drought2020, R_st_name == "New Mexico")

view(NM_State)
