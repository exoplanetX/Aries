#https://zhuanlan.zhihu.com/p/239844775

#' @export

getlocation = function(address){
  require(xml2)
  require(rvest)
  require(dplyr)
  require(stringr)
  require(rjson)
  require(jsonlite)
  #key = "9539824b7075b630f3afb1d9c353d1b0"
  url = paste0("https://restapi.amap.com/v3/geocode/geo?address=",address,"&key=",key)
  data = read_html(url, encoding='utf-8') %>% html_text()
  df = as.data.frame(fromJSON(data))
  return (df['geocodes.location'])
}


