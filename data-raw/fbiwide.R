library(tidyverse)
fbiwide <- fbi %>% 
  select(-Violent.crime) %>% 
  pivot_wider(names_from='Type', values_from='Count') %>% 
  select(State, Abb, Year, Population, 
         Aggravated.assault, 
         Burglary, 
         Larceny.theft, 
         Legacy.rape, 
         Motor.vehicle.theft, 
         Murder=Murder.and.nonnegligent.Manslaughter, 
         Rape, 
         Robbery) %>% 
  arrange(State, Year)

usethis::use_data(fbiwide, overwrite = TRUE, internal=FALSE)
