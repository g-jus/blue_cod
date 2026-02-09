library(palmerpenguins)
library(tidyverse)
ggplot(penguins, aes(x = species, y = bill_length_mm, fill = species)) + 
  geom_violin() + 
  scale_color_viridis_d() +
  labs(
    x = "Bill length mm",
    y = "Flipper length mm",
    title = "Bill length vs flipper length in palmers penguins",
    tag = "B"
  ) +
  facet_wrap(facets = vars(sex)) +
  theme_minimal() +
  theme(title = element_text(size = 10),
        axis.title = element_text(size = 10),
        axis.text = element_text(colour = "navy"))

ggplot(penguins, aes(x = bill_length_mm, y = bill_depth_mm, fill = species)) +
  geom_point() +
  labs(x = "Bill length", y = "Bill width")
