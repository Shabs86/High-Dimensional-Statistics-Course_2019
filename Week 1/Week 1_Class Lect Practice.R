# AUTHOR - Shabbeer Hassan
# Date - 30/10/2019 
# Week 1 -- Class Lecture Practice

# Libraries ---------------------------------------------------------

setwd("E:/Dropbox")
getwd()
library("readxl")
library("ggplot2")
library("data.table")
library("ggrepel")
library("reshape2")
library("cowplot")
library("Rmisc")
library("dplyr")
library("stringr")
library("tidyr")
library("hexbin")
library("graphics")
library("readr")
library("splines") # Used for the ns() function Ã¢ÂÂ (natural cubic splines)
options(digits = 5)
options(scipen = 999)



### USing Boston dataset

fit <- lm(cbind(crim, zn, indus, chas, nox, rm, age, dis, rad, tax, ptratio, black, lstat) ~ medv, data = Boston)
summary(fit) %>% map_dfr(glance)
summary(fit) %>% map_dfr(tidy)

lm1 = lm(medv ~ Boston$lstat, data = Boston)

abline(lm1)
main = summary(lm1)$adj.r.squared