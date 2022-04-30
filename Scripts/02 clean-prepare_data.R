#Translated table from Microsoft Azure text4 & text5


"Polygamy"

"Polygamy is a very common form of union in Senegal. It is maintained thanks to a
significant age difference (about 8 years) between spouses. Although to a varying degree, all
Social strata are affected by the phenomenon.

In the DHS, three questions are asked about polygamy. The first is to know whether the
woman may or may not live in a polygamous household. Two others allow you to enter the number
wives of the current husband (or partner) and the woman's rank in the current marriage if
this one is polygamous.

Of all married women, 46.5 per cent are in polygamous unions compared to 48.5 per cent.
One hundred in 1978 as shown in Table 2.2. At virtually all ages, the prevalence of
Polygamy is less important than it was in the ESF. But in both surveys, the
the practice of polygamy remains at a high level; at over 30, more than one in two women is
polygamous enunion. Naturally, the percentages of polygamous unions are steadily increasing.
With age, men preferring to take their first wife among young women.

The practice of polygamy, given its cultural and socio-economic underpinnings,
is more or less accepted, beyond that, more or less common depending on the social category.

Thus, urbanization and education appear to be very discriminating factors of
differentiation. Overall, polygamy is more prevalent in rural areas (49.0 per cent)
than in urban areas (41.4 per cent). The same situation prevails at all ages. Education is,
it too, a factor very unfavourable to polygamy. Women who have never been to school
are 48.7 per cent in polygamous unions, while those who have been to school are in
36.4 per cent for primary level and 26.8 per cent for secondary level or higher. At
women who cannot read, 48.6 per cent are in polygamous unions compared to 30.8 per cent of
women who can read. The results already revealed by the ESF are confirmed: young women,
Urbanized and/or educated are less interested in polygamy. Social aspirations and
economic of modern generations (well-being of family members, schooling, cost
of life, inheritance problems ...) probably explain most of the decline in this practice in these groups. But in general, the decline mentioned above compared to the ESF is
found in subgroups, particularly very pronounced in urban areas (45.7 for
one hundred in the ESF compared with 41.4 in the EDS) and among the literate (37.0 and 30.8 per cent respectively) and among the literate (37.0 and 30.8 per cent respectively).
in the ESF and EDS) (ESF, 1978, Vol. 5: 81).

At the ethnic level, the main groups rank as follows: Wolof (50.1 percent of
polygamous), Mandingo (48.8 per cent), Poular (44.8 per cent), Diola (44.2 per cent) and Sérer
(38.0 per cent). The analysis of the data by age reveals certain peculiarities. Indeed, before
25 years old, the Poulars seem to be the most numerous to adhere to polygamy while the Wolofs
dominate only after this age. Moreover, while among the Wolofs, the prevalence of
Polygamy increases steadily with age, in the Poulars, there is a drastic drop to
from the age of 40. It is possible that Poulars married younger and having a larger
marital mobility, practice more what is called "polygamy of youth"and
that in old age, they remain more than others in a situation of union breakdown.

The inter-regional differences are quite significant. At the global level, the South has the pro-
highest centage (51.7 percent). It is followed by West and Central (49.0 per cent each)
and the Northeast (47.0 per cent)."








#Translated From Microsoft Azure text3 (The Chart)

TABLE 2.2 PERCENTAGE OF WOMEN CURRENTLY IN THE UNION WHO ARE IN
POLYGAMOUS UNION ACCORDING TO CURRENT AGE AND SOCIO-
DEMOGRAPHICS

Current age of the woman

Socio-demographic 15-19 20-24 25-29 30-34 35-39 40-44 45-49 Total

Milieu
Urban 23.8 25.2 31.3 49.6 60.9 54.2 55.0 41.4
Rural 27.7 36.8 45.7 60.3 65.2 62.1 64.9 49.0

Region
West 23.5 29.6 30.3 48.7 57.4 54.3 55.3 49.0
Centre 21.4 30.0 46.6 65.3 66.7 67.6 72.3 49.0
Northeast 32.0 34.3 51.0 50.0 66.7 57.4 52.5 47.0
South 39.7 48.4 41.6 59.0 68.3 53.5 58.5 51.7

Ethnic group
Wolof 28.6 27.5 43.3 60.4 69.4 68.3 80.2 50.1
Poular 29.1 36.6 41.9 56.9 63.5 52.5 51.5 44.8
Serer 14.3 25.0 30.4 49.0 50.0 56.0 52.6 38.0
Mandingo 26.1 35.5 47.5 58.3 74.1 * * 48.8
Diola * 57.1 33.3 44.4 52.2 * * 44.2
Other 29.8 50.0 45.8 51.0 59.1 71.0 50.0 49.1

Instruction
None 27.7 34.4 44.1 59.9 65.6 59.9 62.5 48.7
Primary 12.5 29.2 31.4 47.9 52.9 * * 36.4
Secondary + * 22.2 12.8 26.7 45.5 * * 26.8

Literacy
Cannot read 27.7 34.8 43.9 60.1 65.8 59.7 62.6 48.6
Can read 13.0 22.7 23.1 35.6 48.1 * * 30.8
Total 27.1 33.2 40.9 56.0 63.7 59.7 62.0 46.5
ESF, 1978%** 30.6 35.5 46.5 57.7 56.5 65.5 64.8 48.5

*Less than 20 women
**Enquête Sénégalaise sur la Fertility, 1978, Vol. I, p. 79, Direction de
Statistics, Surveys and Demography Division, Dakar, July 1981.

#generating data from text data
#Title: TABLE 2.2 PERCENTAGE OF WOMEN CURRENTLY IN THE UNION WHO ARE IN POLYGAMOUS UNION ACCORDING TO CURRENT AGE AND SOCIO-DEMOGRAPHICS

#Socio-demographic
  Milieu <- c("Urban", "Rural")
  Region <- c("West", "Centre", "Northeast", "South")
  Ethnic_Group <- c("Wolof", "Poular", "Serer", "Mandingo", "Diaola", "Other")
  Instruction <- c("None", "Primary", "Secondary +")
  Literacy <- c("Cannot read", "Can read")
  Totalpop <- c()
  ESF_1978 <- c()

  
#Current age of the woman
group1 <- c(23.8, 27.7, 23.5, 21.4, 32.0, 39.7, 28.6, 29.1, 14.3, 26.1, NA, 29.8, 27.7, 12.5, NA, 27.7, 13.0, 27.1, 30.6)
group2 <- c(25.2, 36.8, 29.6, 30.0, 34.3, 48.4, 27.5, 36.6, 25.0, 35.5, 57.1, 50.0, 34.4, 29.2, 22.2, 34.8, 22.7, 33.2, 35.5)
group3 <- c(31.3, 45.7, 30.3, 46.6, 51.0, 41.6, 43.3, 41.9, 30.4, 47.5, 33.3, 45.8, 44.1, 31.4, 12.8, 43.9, 23.1, 40.9, 46.5)
group4 <- c(49.6, 60.3, 48.7, 65.3, 50.0, 59.0, 60.4, 56.9, 49.0, 58.3, 44.4, 51.0, 59.9, 47.9, 26.7, 60.1, 35.6, 56.0, 57.7)
group5 <- c(60.9, 65.2, 57.4, 66.7, 66.7, 68.3, 69.4, 63.5, 50.0, 74.1, 52.2, 59.1, 65.6, 52.9, 45.5, 65.8, 48.1, 63.7, 56.5)
group6 <- c(54.2, 62.1, 54.3, 67.6, 57.4, 53.5, 68.3, 52.5, 56.0, NA, NA, 71.0, 59.9, NA, NA, 59.7, NA, 59.7, 65.5)
group7 <- c(55.0, 64.9, 55.3, 72.3, 52.5, 58.5, 80.2, 51.5, 52.6, NA, NA, 50.0, 62.5, NA, NA, 62.6, NA, 62.0, 64.8)
total <- c(41.4, 49.0, 49.0, 49.0, 47.0, 51.7, 50.1, 44.8, 38.0, 48.8, 44.2, 49.1, 48.7, 36.4, 26.8, 48.6, 30.8, 46.5, 48.5)
demographic <- c("Urban", "Rural","West", "Centre", "Northeast", "South","Wolof", "Poular", "Serer", "Mandingo", "Diaola", "Other", "None", "Primary", "Secondary +", "Cannot read", "Can read","Total", "ESF_1978")

"footnotes: *Less than 20 women **Enquête Sénégalaise sur la Fertility, 1978, Vol. I, p. 79, Direction de
Statistics, Surveys and Demography Division, Dakar, July 1981."

#create data frame for translated chart

df <- data.frame(demographic, group1, group2, group3, group4, group5, group6, group7, total)

Sentable <-
df |>
  knitr::kable(
    caption = "PERCENTAGE OF WOMEN CURRENTLY IN THE UNION WHO ARE IN POLYGAMOUS UNION ACCORDING TO CURRENT AGE AND SOCIO-DEMOGRAPHICS",
    col.names = c("demographic", "group1","group2", "group3", "group4", "group5", "group6", "group7", "total"),
    booktabs = TRUE,
    linesep = ""
  )

Sentable(view)

library(tidyverse)
library(tidyr)
library(janitor)
#grabbed from week 9 class lecture
column_names_as_contracts <-
  df |>
  rename(
    "int_group1" = "group1",
    "int_group2" = "group2",
    "int_group3" = "group3",
    "int_group4" = "group4",
    "int_group5" = "group5",
    "int_group6" = "group6",
    "int_group7" = "group7",
    "int_total" = "total",
    "chr_demographic" = "demographic"
  )

#testing agent followng lecture
install.packages("pointblank")
library(pointblank)

agent <- 
  create_agent(tbl = column_names_as_contracts) %>%
  col_is_character(columns = vars(chr_demographic)) %>%
  col_vals_in_set(columns = chr_demographic,
                  set = c("ESF_1978","Cannot Read")) %>%
interrogate()

agent1 <- 
  create_agent(tbl = column_names_as_contracts) %>%
  col_is_integer(columns = vars(int_group1, int_group2, int_group3, int_group4, int_group5, int_group6, int_group7, int_total)) %>%
  col_vals_in_set(columns = int_group1,
                  set = c(NA)) %>%
interrogate()

?pointblank