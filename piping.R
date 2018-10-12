library(dplyr)

rep("This is an example",3)

"This is another example!" %>% rep(times=3)

download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/gh-pages/_episodes_rmd/data/gapminder_data.csv", destfile = "data/gapminder_data.csv")

gapminder <- read.csv("data/gapminder_data.csv")
year_country_gdp <- select(gapminder,year,country,gdpPercap)
year_country_gdp2 <- gapminder %>% select(year,country,gdpPercap)
head(year_country_gdp)

library(ggplot2)
gapminder %>% filter(year==2002) %>% ggplot(mapping=aes(x=continent,y=lifeExp)) + geom_bar(stat="identity")

