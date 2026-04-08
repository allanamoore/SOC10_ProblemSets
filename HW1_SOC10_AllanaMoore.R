###
#title: HW1_SOC10_AllanaMoore.R
#author: Allana Moore
#output: html_document
#purpose: try out R
#date: 2026-04-06
###


```{r setup, include=FALSE}
knitr::opts_chunk$set(echo = TRUE)
```

```{r}

# 1: Make new vector 

vec <- c(1:20)

xs_2 <- function(vec) {
  return(vec * 2)
}

new_vec <- xs_2(vec)
print(new_vec)



# 2: combine two vectors 

install.packages("dplyr")
library(dplyr)

# 3: Make df and plot

df <- bind_cols(x = vec, y = new_vec)
print(df)

plot(df$x, df$y)

# prettier plot 

install.packages("ggplot2")
library(ggplot2)    

ggplot(df, aes(x = x, y = y)) +
  geom_point()

# 4: Custom data

df <- data.frame(
  city             = c("Person_A", "Person_B", "Person_C"),
  miles_from_home   = c(0, 1.4, .2),
  phone_battery   = c(74, 18, 15)
)

print(df)

# I chose these features because as we become more reliant on our phones
# basic participation in society (navigation, payments, communication)
# it is important to keep your device charged when far from home

# Ready-made data analysis 

data()
data(Nile)
print(Nile)
summary(Nile)

# The Nile dataset records the annual flow of the Nile River at Aswan, Egypt,
# measured in cubic meters, from 1871 to 1970. There are 100 observations total. 
# It is a time series object (ts), meaning it is organized chronologically with 
# one measurement per year. This data could be extremely useful in social science
# studies about water usage of the Nile by different communities along the river. 
# There is a lot of conflict around equitable water usage along 
# the Nile, so studying different flows at different locations and points in time 
# could help us understand the impacts of different behaviors and find a sustainable
# distribution of water usage. This could be achieved through a longitudinal
# observational study of flow quantities over time combined with ethnographic
# and anthropological research about river governance and conflicts between 
# communities. 

```



