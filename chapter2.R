# 世界の統計データセット
library(gapminder)
library(tidyverse)

gapminder %>% View()

gapminder %>% filter(continent=="Asia")
gapminder %>% filter(country=="Japan")  
gapminder %>% filter(country=="Japan", year %in% c(1997,2007))


gapminder %>% filter(year==2007) %>% arrange(pop)
gapminder %>% filter(year==2007) %>% arrange(desc(pop))

gapminder %>% filter(continent=="Asia", year==2007) %>% summarise(total_pop_asia=sum(pop))
gapminder %>% filter(continent=="Asia", year==2007) %>% summarise(max(pop), min(pop))

gapminder %>% filter(year==2007) %>% group_by(continent) %>% summarise(n=n(), total_pop=sum(pop))
# n=n()でグループの行数を返す


orders <- tibble(item_id = c(3,1,2))
items <- tibble(item_id = 1:4, price = c(200,300,600,400))
orders %>% left_join(items, by="item_id")

country_codes
gapminder %>% filter(year==2007) %>% left_join(country_codes, by="country")
