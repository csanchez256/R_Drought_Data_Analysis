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

# filter drought data for observations of the New Mexico state
NM_State <- filter(drought2020, R_st_name == "New Mexico")
view(NM_State)

# Note: this data was merged with CMPS2020 census data
# race is coded by: 1-white, 2-latino, 3-black, 4-Asian/PacIslander, 5-AmIndian

latino <- filter(drought2020, race == 2)
view(latino)

# You can add more arguments to the filter
NM_latino <- filter(drought2020, R_st_name == "New Mexico", race == 2 )
view(NM_latino)

