library(tidyverse)

# options and settings
options(scipen=10000)

geom_bar <- geom_bar(stat="Identity", fill="#02325E")
text_labels <-   geom_text(aes(label=label), hjust = -0.05, size = 3,
                           position = position_dodge(width = 1),
                           inherit.aes = TRUE)

theme <- theme(axis.title.y=element_blank(),
               axis.title.x=element_text(size=14, face="bold"),
               axis.text=element_text(size=12, face="bold")) 


# distance stars
distance <- read.csv('~/code/letsrun-contract-data/data/distance.csv')

distance$label <- paste("$", comma(distance$Mean), sep = "")

distance_mean = distance[c("Athlete", "Mean", "label")]
distance_mean$Athlete <- factor(distance_mean$Athlete, levels= distance_mean$Athlete[order(-distance_mean$Mean)])

distance_stars <- 
  ggplot(distance_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage Contract Values Estimated by Agents", 
                     labels = scales::comma,
                     limits=(c(0,900000)),
                     ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/distance_stars.png", distance_stars, width=9, height=9)


# 1500
milers <- read.csv('~/code/letsrun-contract-data/data/1500.csv')

milers$label <- paste("$", comma(milers$Mean), sep = "")

milers_mean = milers[c("Athlete", "Mean", "label")]
milers_mean$Athlete <- factor(milers_mean$Athlete, levels= milers_mean$Athlete[order(-milers_mean$Mean)])

milers_stars <- 
  ggplot(milers_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage (Mean) Contract Values Estimated by Agents (US Dollars)", 
                     labels = scales::comma,
                     limits=(c(0,900000)),
  ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/1500_stars.png", milers_stars, width=9, height=9)


# distance_b stars
distance_b <- read.csv('~/code/letsrun-contract-data/data/distance-b.csv')

distance_b$label <- paste("$", comma(distance_b$Mean), sep = "")

distance_b_mean = distance_b[c("Athlete", "Mean", "label")]
distance_b_mean$Athlete <- factor(distance_b_mean$Athlete, levels= distance_b_mean$Athlete[order(-distance_b_mean$Mean)])

distance_b_stars <- 
  ggplot(distance_b_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage (Mean) Contract Values Estimated by Agents (US Dollars)", 
                     labels = scales::comma,
                     limits=(c(0,900000)),
  ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/distance_b_stars.png", distance_b_stars, width=9, height=9)


# field stars
field <- read.csv('~/code/letsrun-contract-data/data/field.csv')

field$label <- paste("$", comma(field$Mean), sep = "")

field_mean = field[c("Athlete", "Mean", "label")]
field_mean$Athlete <- factor(field_mean$Athlete, levels= field_mean$Athlete[order(-field_mean$Mean)])

field_stars <- 
  ggplot(field_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage (Mean) Contract Values Estimated by Agents (US Dollars)", 
                     labels = scales::comma,
                     limits=(c(0,900000)),
  ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/field_stars.png", field_stars, width=9, height=9)


# sprint stars
sprint <- read.csv('~/code/letsrun-contract-data/data/sprint.csv')

sprint$label <- paste("$", comma(sprint$Mean), sep = "")

sprint_mean = sprint[c("Athlete", "Mean", "label")]
sprint_mean$Athlete <- factor(sprint_mean$Athlete, levels= sprint_mean$Athlete[order(-sprint_mean$Mean)])

sprint_stars <- 
  ggplot(sprint_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage (Mean) Contract Values Estimated by Agents (US Dollars)", 
                     labels = scales::comma,
                     limits=(c(0,2000000)),
  ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/sprint_stars.png", sprint_stars, width=9, height=9)


# boston_men stars
boston_men <- read.csv('~/code/letsrun-contract-data/data/boston-men.csv')

boston_men$label <- paste("$", comma(boston_men$Mean), sep = "")

boston_men_mean = boston_men[c("Athlete", "Mean", "label")]
boston_men_mean$Athlete <- factor(boston_men_mean$Athlete, levels= boston_men_mean$Athlete[order(-boston_men_mean$Mean)])

boston_men_stars <- 
  ggplot(boston_men_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage (Mean) Appearance Fee Estimated by Agents (US Dollars)", 
                     labels = scales::comma,
                     limits=(c(0,225000)),
  ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/boston_men_appearance.png", boston_men_stars, width=9, height=9)

# boston_women stars
boston_women <- read.csv('~/code/letsrun-contract-data/data/boston-women.csv')

boston_women$label <- paste("$", comma(boston_women$Mean), sep = "")

boston_women_mean = boston_women[c("Athlete", "Mean", "label")]
boston_women_mean$Athlete <- factor(boston_women_mean$Athlete, levels= boston_women_mean$Athlete[order(-boston_women_mean$Mean)])

boston_women_stars <- 
  ggplot(boston_women_mean, aes(Athlete,Mean)) +
  geom_bar +
  coord_flip() +
  scale_y_continuous(name = "\nAverage (Mean) Appearance Fee Estimated by Agents (US Dollars)", 
                     labels = scales::comma,
                     limits=(c(0,225000)),
  ) +
  text_labels +
  theme

ggsave("~/code/letsrun-contract-data/images/boston_women_appearance.png", boston_women_stars, width=9, height=9)



