#' Get Category Url
#'
#' Get naver news sub_category names and urls recently.
#' Main category urls are written manually like blow.
#' cate_code<-c(100,101,102,103,104,105)
#' There are 6 categories in never news.
#' 1: Politics, 2: Economics, 3: Social, 4: Living / Culture, 5: World, 6: IT / science, 7: Opinion
#'
#' @param select from 1 to 7 numeric values which mean categories.
#' @return Get data.frame(cate_name, cate_sub, sid1, sid2).
#' @export
#' @import xml2
#' @import rvest
#' @import stringr

getCategoryUrl <- function() {

  home <- "http://news.naver.com/"
  titles <- read_html(home) %>% html_nodes("a") %>% html_text()
  links <- read_html(home) %>% html_nodes("a") %>% html_attr("href")
  titles<-titles[grep("^\\/main\\/main.nhn\\?mode=LSD&mid=shm&sid1=1",links)]
  titles<-str_trim(titles)
  links<-links[grep("^\\/main\\/main.nhn\\?mode=LSD&mid=shm&sid1=1",links)]

  return(urls)
}


