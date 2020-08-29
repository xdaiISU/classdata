library(quantmod) 
library(tidyverse)
library(lubridate)

symbols <- c('AAPL', 'GOOG', 'GBTC')

extractSym <- function(sym, from='2020-01-01') {
  a <- getSymbols(Symbols = sym, src='yahoo', auto.assign=FALSE, from=from)
  as_tibble(a) %>% 
    select(matches('\\.Close$'), matches('\\.Volume$')) %>% 
    setNames(c('price', 'volume')) %>% 
    {cbind(date=index(a), symbol=sym, .)}
}

stock <- map(symbols, extractSym) %>% 
  bind_rows()

usethis::use_data(stock, overwrite = TRUE, internal=FALSE)
