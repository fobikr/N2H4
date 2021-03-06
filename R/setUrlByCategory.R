#' Set Url By Category
#'
#' Get naver news urls from category.
#' There are 6 categories in never news.
#' 1: Politics, 2: Economics, 3: Social, 4: Living / Culture, 5: World, 6: IT / science
#'
#' @param select is target categories. Default is all
#' @param targetDate is one date to get news like '2016-01-01' is default date.
#' @param pageNum is one page number to get news like '1'. Default number is 1.
#' @return Get data.frame(cate_name, cate_sub, cate_url).
#' @export

setUrlByCategory <- function(select = c(1, 2, 3, 4, 5, 6), targetDate = as.Date("2016-01-01"), pageNum=1) {

    targetDate <- gsub("-", "", as.character(targetDate))
    urls <- getCategoryUrl(select = select)
    urls[, 3] <- paste0("http://news.naver.com", urls[, 3], "&date=", targetDate, "&page=",pageNum)
    return(urls)

}
