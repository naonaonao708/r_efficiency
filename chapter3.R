library(magrittr)
library(ggplot2)

ggplot(diamonds) +
  aes(x=carat, y=price, color=color) +
  geom_point()

chick_weight <- ChickWeight %>%
  dplyr::group_by(Diet, Time) %>%
  dplyr::summarise(Weight = median(weight), .groups = "drop")

ggplot(chick_weight) + 
  aes(x = Time, y = Weight, shape = Diet) +
  geom_line() +
  geom_point(size = 4)


