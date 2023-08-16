library(tidyverse)
library(plotly)

country <- read.csv("files/membership_by_country.csv")
member_population <- read.csv("files/membership_and_population.csv")

member_population_clean <- member_population |>
  select(Country, Area, Members, Population, X2022, X.LDS)

member_population_clean |> 
  ggplot(aes(x = Members, 
         y = Country)) +
  geom_point()+
  facet_wrap(~ Area)

north_europe <- member_population_clean |> 
  filter(Area == "Europe North")

east_europe <- member_population_clean |> 
  filter(Area == "Europe East")

central_europe <- member_population_clean |> 
  filter(Area == "Europe Central")

