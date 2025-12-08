library(ggplot2)
library(ggthemes)
# Define a custom theme function
scatter_plot_theme <- function(base_size = 12, base_family = "serif") {
  theme_tufte(base_size = base_size, base_family = base_family) %+replace%
    theme(
      # Panel and grid elements
      panel.grid.major = element_line(color = "gray20", linetype = "dotted"),
      panel.grid.minor = element_blank(),
      panel.background = element_rect(fill = "white", color = NA),

      # Axis elements
      axis.line = element_line(color = "gray50"),
      axis.ticks = element_line(color = "gray50"),
      axis.text = element_text(color = "gray30"),
      axis.title = element_text(color = "gray20", face = "bold"),

      # Plot title and subtitle
      plot.title = element_text(size = rel(1.4), face = "bold", hjust = 0.5, margin = margin(b = 10)),
      plot.subtitle = element_text(size = rel(1.1), hjust = 0.5, margin = margin(b = 5)),
      plot.caption = element_text(size = rel(0.8), color = "gray50", hjust = 1),

      # Legend elements
      legend.position = "right",
      legend.title = element_text(face = "bold"),
      legend.text = element_text(),
      legend.key = element_rect(fill = "gray95", color = NA)
    )
}

####



# Example usage of the custom theme
ggplot(mtcars, aes(x = mpg, y = hp, color = factor(cyl))) +
  geom_point() +
  labs(
    title = "Horsepower vs. MPG by Cylinder Count",
    subtitle = "Analysis of mtcars dataset",
    x = "Miles Per Gallon",
    y = "Horsepower",
    color = "Cylinders",
  ) +
  scatter_plot_theme() + # Apply the custom theme
  scale_fill_viridis_d(option = "Rocket") # Add a color palette

library(scales) # Required for date formatting in scales



# Define the custom theme function
time_series_theme <- function(base_size = 12, base_family = "") {
  # Start with a clean base theme
  base_theme <- theme_minimal(base_size = base_size, base_family = base_family)

  # Customize specific elements
  custom_theme <- base_theme %+replace%
    theme(
      # Plot titles and text
      plot.title = element_text(size = rel(1.5), face = "bold", hjust = 0), # Larger, bold, left-aligned title
      plot.subtitle = element_text(size = rel(1.2), hjust = 0), # Subtitle
      plot.caption = element_text(size = rel(0.8), color = "gray50"), # Caption

      # Axis appearance
      axis.title = element_text(size = rel(1.1), face = "bold"),
      axis.text.x = element_text(angle = 45, hjust = 1, vjust = 1), # Rotate x-axis labels for readability
      axis.line = element_line(colour = "black"),

      # Grid lines (time series often benefit from only y-axis grids)
      panel.grid.major.x = element_blank(), # Remove major vertical grid lines
      panel.grid.minor.x = element_blank(), # Remove minor vertical grid lines
      panel.grid.major.y = element_line(color = "gray80", linetype = "dashed"),
      panel.grid.minor.y = element_blank(),

      # Backgrounds
      panel.background = element_rect(fill = "white", color = NA),
      plot.background = element_rect(fill = "white", color = NA),

      # Legend
      legend.position = "bottom",
      legend.title = element_text(face = "bold"),
      legend.background = element_blank(),
      legend.key = element_blank(),

      # Margins
      plot.margin = unit(c(1, 1, 1, 1), "cm") # Add some breathing room
    )

  return(custom_theme)
}

