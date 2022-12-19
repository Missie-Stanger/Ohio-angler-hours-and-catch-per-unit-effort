
fish<-read.csv("Creel Walleye Lake Erie 2002-2017.csv",header=TRUE)
fish2<-read.csv("Creel Walleye Lake Erie 2002-2017 (some removed).csv",header=TRUE)

library(psych)
library(dplyr)


table(fish$ANGHRS)
names(fish)


## Average angler hours per fishing trip in October
fish %>% filter(MONTH==10) %>% group_by(YEAR) %>%
  summarise(mean=mean(ANGHRS))
     
## Average angler hours per fishing trip in August
fish %>% filter(MONTH==8) %>% group_by(YEAR) %>%
  summarise(mean=mean(ANGHRS))

## Average angler hours per fishing trip in first half of August
fish %>% filter(MONTH==8 | DAY<=14) %>% group_by(YEAR) %>%
  summarise(mean=mean(ANGHRS))

###########################################################################
### Walleye catch per unit effort
fish$walleye<- (fish$F2 + fish$F13) / fish$ANGHRS


## Average walleye catch per unit effort in October
fish %>% filter(MONTH==10) %>% group_by(YEAR) %>%
  summarise(mean=mean(walleye))

## Average walleye catch per unit effort in August
fish %>% filter(MONTH==8) %>% group_by(YEAR) %>%
  summarise(mean=mean(walleye))

## Average walleye catch per unit effort in first half of August
fish %>% filter(MONTH==8 | DAY<=14) %>% group_by(YEAR) %>%
  summarise(mean=mean(walleye))

fish$walleye[fish$YEAR==2015]
describe(fish$ANGHRS [fish$YEAR==2017])

################################################################################
################################################################################
############# Removed all cases with 0 ANGHRS #############################################
###########################################################################
##############################################################

## Average angler hours per fish2ing trip in October
fish2 %>% filter(MONTH==10) %>% group_by(YEAR) %>%
  summarise(mean=mean(ANGHRS))

## Average angler hours per fish2ing trip in August
fish2 %>% filter(MONTH==8) %>% group_by(YEAR) %>%
  summarise(mean=mean(ANGHRS))

## Average angler hours per fish2ing trip in first half of August
fish2 %>% filter(MONTH==8 | DAY<=14) %>% group_by(YEAR) %>%
  summarise(mean=mean(ANGHRS))

###########################################################################
### Walleye catch per unit effort
fish2$walleye<- (fish2$F2 + fish2$F13) / fish2$ANGHRS


## Average walleye catch per unit effort in October
fish2 %>% filter(MONTH==10) %>% group_by(YEAR) %>%
  summarise(mean=mean(walleye))

## Average walleye catch per unit effort in August
fish2 %>% filter(MONTH==8) %>% group_by(YEAR) %>%
  summarise(mean=mean(walleye))

## Average walleye catch per unit effort in first half of August
fish2 %>% filter(MONTH==8 | DAY<=14) %>% group_by(YEAR) %>%
  summarise(mean=mean(walleye))


