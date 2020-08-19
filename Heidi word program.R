library(tidyverse)
getwd()

setwd("C:/Users/hzhu/Desktop")
words <- tibble(word = read_lines("https://norvig.com/ngrams/enable1.txt")) %>%
  mutate(word_length = str_length(word)) 
  filter(word_length >= 4,
         !str_detect(word, "s")) 
  mutate(letters = str_split(word, ""),
         letters = map(letters, unique),
         unique_letters = lengths(letters)) 
  mutate(points = ifelse(word_length == 4, 1, word_length) +
           7 * (unique_letters == 7)) 
  filter(unique_letters <= 7) 
  arrange(desc(points))

get_words <- function(center_letter, other_letters) {
  all_letters <- c(center_letter, other_letters)
  
  words %>%
    filter(str_detect(word, center_letter)) %>%
    mutate(invalid_letters = map(letters, setdiff, all_letters)) %>%
    filter(lengths(invalid_letters) == 0) %>%
    select(word, points)
}

honeycomb_words <- get_words("g", c("a", "p", "x", "m", "e", "l"))
honeycomb_words