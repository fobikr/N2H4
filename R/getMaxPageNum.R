#' Get Max Page Number
#'
#' @param url is target url include sid1, sid2, date like 'http://news.naver.com/main/list.nhn?sid2=265&sid1=100&mid=shm&mode=LS2D&date=20161102'
#' @param max is also interval to try max page number is numeric. Default is 100.
#' @return Get numeric
#' @export
#' @import xml2
#' @import rvest

getMaxPageNum <- function(url=url, max=100) {

  ifmaxUrl <- paste0(url,"&page=",max)
  tem <- read_html(ifmaxUrl)
  ifmax <- tem %>% html_node("a.next")
  while(class(ifmax)=="xml_node"){
    max <- max + max
    ifmaxUrl <- paste0(url,"&page=",max)
    tem <- read_html(ifmaxUrl)
    ifmax <- tem %>% html_node("a.next")
  }
  maxPageNum<-tem %>% html_node("div.paging strong") %>% html_text %>% as.numeric
  return(maxPageNum)

}

