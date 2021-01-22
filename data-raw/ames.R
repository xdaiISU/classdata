library(tidyverse)

dat <- read_csv('../../../../Research/Data/teaching/house-prices-advanced-regression-techniques/train.csv')

ames <- dat %>%
  select(Id, 
         GrLivArea, 
         LandSlope, 
         Neighborhood, 
         BldgType, 
         OverallCond, 
         YearBuilt, 
         YrSold, 
         SalePrice)

usethis::use_data(ames, overwrite = TRUE, internal=FALSE)

