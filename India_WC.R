install.packages('xml2')
library("rvest")
url <- "http://stats.espncricinfo.com/ci/engine/records/averages/batting.html?class=2;id=6;type=team"

population_ind <- url %>%
  html() %>%
  html_nodes(xpath='//*[@id="ciHomeContentlhs"]/div[3]/div/table[1]') %>%
  html_table()
population_ind <- population_ind[[1]]
head(population_ind)
write.csv(population_ind,'cricketers_ind.csv')

url <- "http://stats.espncricinfo.com/ci/engine/records/averages/bowling.html?class=2;current=2;id=6;type=team"

population_bowl <- url %>%
  html() %>%
  html_nodes(xpath='//*[@id="ciHomeContentlhs"]/div[3]/div/table[1]') %>%
  html_table()
population_bowl <- population_bowl[[1]]
head(population_bowl)
write.csv(population_bowl,'cricketers_bowl.csv')

url <- "http://stats.espncricinfo.com/ci/engine/records/team/series_results.html?class=2;id=6;type=team"

population_team <- url %>%
  html() %>%
  html_nodes(xpath='//*[@id="ciHomeContentlhs"]/div[3]/div/table[1]') %>%
  html_table()
population_team <- population_team[[1]]
head(population_team)
write.csv(population_team,'cricketers_team.csv')
