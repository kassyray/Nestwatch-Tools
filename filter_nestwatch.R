library(tidyverse)

df <- read.csv('attempts_locs_20240125.csv')

# Look at all possible species 
# I would recommend making sure there isn't another name used for the American Robin. The names don't look especially standardized.
unique(df$Species.Name)

# Filter and write datasets 
american_robin_2011 <- df %>% 
  filter(Species.Name == 'American Robin' & Year == '2011')

write.csv(american_robin_2011, '20240302_AmericanRobin2011.csv', row.names=FALSE)

american_robin_2019 <- df %>% 
  filter(Species.Name == 'American Robin' & Year == '2019')

write.csv(american_robin_2019, '20240302_AmericanRobin2019.csv', row.names=FALSE)

american_robin_2011_2019 <- df %>% 
  filter(Species.Name == 'American Robin') %>% 
  filter(Year %in% c('2011','2019')) 

write.csv(american_robin_2011_2019, '20240302_AmericanRobin20112019.csv', row.names=FALSE)
