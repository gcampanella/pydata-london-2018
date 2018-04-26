library(tidyverse)

p <- tibble(
         x = seq(-4, 4, 0.01)
     ) %>%
     ggplot(mapping = aes(x = x)) +
        geom_line(mapping = aes(y = x**2)) +
        geom_line(mapping = aes(y = x + 2), color = "red") +
        theme_minimal() +
        xlab("x") + ylab("y")

ggsave('convex_fun.pdf', p)
