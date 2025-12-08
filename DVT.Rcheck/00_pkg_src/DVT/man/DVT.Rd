\name{DVT}
\alias{DVT}
\title{Data Visualization Templates}
\description{
The goal of this package is to create 2 publication-ready themes for scatterplot and timeseries plots using both GGplot2 and base R programming.
}
\examples{
# Example usage for scatterplot theme
scatterplot <- mtcars

ggplot(scatterplot, aes(x = mpg, y = hp)) +
  geom_point(aes(colour = factor(cyl))) +
  labs(
    title = "Horsepower vs. MPG by Cylinder Count",
    subtitle = "Analysis of mtcars dataset",
    x = "Miles Per Gallon",
    y = "Horsepower",
  ) +
  scatter_plot_theme() + # Apply the custom theme
  scale_color_brewer("Cylinder") # Add a color palette


# Example plot for timeseries theme usage

plot(austres, main = "Austres Time Series", xlab = "Year", ylab = "Resident Population")
}
