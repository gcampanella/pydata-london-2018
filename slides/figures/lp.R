library(tidyverse)

p <- tibble(
         x = seq(-5, 10, 0.01)
     ) %>%
     ggplot(mapping = aes(x = x)) +
        geom_hline(yintercept = 0) +
        geom_vline(xintercept = 0) +
        geom_polygon(data = tibble(x = c(2, -1, 6), y = c(6, -3, 4)),
                     mapping = aes(x = x, y = y),
                     fill = "#8BC34A", alpha = 0.75) +
        geom_line(mapping = aes(y = 3*x), lty = 2, color = "#33691E") +
        geom_line(mapping = aes(y = -x/2 + 7), lty = 2, color = "#33691E") +
        geom_line(mapping = aes(y = x - 2), lty = 2, color = "#33691E") +
        geom_line(mapping = aes(y = (-3*x + 18) / 4), lty=3, color = "#FFCDD2") +
        geom_line(mapping = aes(y = (-3*x + 22) / 4), lty=3, color = "#E57373") +
        geom_line(mapping = aes(y = (-3*x + 26) / 4), lty=3, color = "#F44336") +
        geom_line(mapping = aes(y = (-3*x + 30) / 4), lty=3, color = "#D32F2F") +
        geom_line(mapping = aes(y = (-3*x + 34) / 4), lty=3, color = "#B71C1C") +
        geom_point(data = tibble(x = 6, y = 4),
                   mapping = aes(x = x, y = y), color = "#F44336") +
        xlim(-5, 10) + ylim(-5, 10) +
        theme_minimal() +
        xlab(expression(x[1])) + ylab(expression(x[2]))

ggsave('lp.pdf', p)
