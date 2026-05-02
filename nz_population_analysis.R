# Load packages
library(ggplot2)

# New Zealand population data (2001-2025) - Source: Stats NZ
year <- c(2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,
          2011,2012,2013,2014,2015,2016,2017,2018,2019,2020,
          2021,2022,2023,2024,2025)

population <- c(3880,3939,3989,4028,4098,4185,4229,4269,4315,4368,
                4406,4433,4470,4546,4640,4728,4820,4929,5020,5084,
                5123,5050,5100,5311,5342)

nz_pop <- data.frame(year, population)

ggplot(nz_pop, aes(x=year, y=population)) +
  geom_line(color="#1D9E75", linewidth=1.2) +
  geom_point(color="#1D9E75", size=2.5) +
  labs(title="New Zealand Population (2001-2025)",
       subtitle="Source: Stats NZ",
       x="Year",
       y="Population (thousands)") +
  theme_minimal()
