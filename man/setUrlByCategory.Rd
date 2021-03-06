% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/setUrlByCategory.R
\name{setUrlByCategory}
\alias{setUrlByCategory}
\title{Set Url By Category}
\usage{
setUrlByCategory(select = c(1, 2, 3, 4, 5, 6),
  targetDate = as.Date("2016-01-01"), pageNum = 1)
}
\arguments{
\item{select}{is target categories. Default is all}

\item{targetDate}{is one date to get news like '2016-01-01' is default date.}

\item{pageNum}{is one page number to get news like '1'. Default number is 1.}
}
\value{
Get data.frame(cate_name, cate_sub, cate_url).
}
\description{
Get naver news urls from category.
There are 6 categories in never news.
1: Politics, 2: Economics, 3: Social, 4: Living / Culture, 5: World, 6: IT / science
}

