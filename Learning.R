install.packages("tidyverse")
library(tidyverse)
mpg
?mpg
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class))
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = drv, color = class))
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, size = class))
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, shape = class))
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = cty))
ggplot(data=mpg) + geom_point(mapping = aes(x = displ, y = hwy, color = class, size = cty))
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ class, nrow = 2)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_grid(drv ~ cyl)
ggplot(data = mpg) + 
  geom_point(mapping = aes(x = displ, y = hwy)) + 
  facet_wrap(~ cty, nrow = 2)
ggplot(data = mpg) + 
  geom_smooth(mapping = aes(x = displ, y = hwy, linetype = drv))
?goem
??goem

install.packages("tidyverse")
library(nycflights13)
library(tidyverse)
modelmpg <- filter(mpg, model=='a4')
modelmpg
modelmpg <- filter(mpg, model %in% c('a4','a4 quattro'))
modelmpg
modelmpg <- filter(mpg, grepl("a4", model, fixed = TRUE))
modelmpg
ctympg <- filter(mpg, cty > 15 | cty < 20)
ctympg
mpg

install.packages("nycflights13")
library(nycflights13)
flights
View(flights)
library(dplyr)
janflights <- filter(flights, month == 12)

janflights
ardelay <- filter(flights, arr_delay <30 & dep_delay > 60)
ardelay
flight6 <- filter(flights, between(dep_time, 0000, 600))
flight6
?anyNA
is.na(flights)
anyNA(month)
count( is.na( flights$dep_time ) ) > 0
complete.cases(flights)




