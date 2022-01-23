#' @export

getdistance = function(origins,destination) {

  # origins/destination为两地经纬度
  #key = "9539824b7075b630f3afb1d9c353d1b0"
  type = 1  # type=0或1，分别为直线或驾驶距离
  url = str_c("https://restapi.amap.com/v3/distance?key=",key,
              "&origins=",origins,
              "&destination=",destination,
              "&type=",type)
  data = read_html(url,encoding='utf-8') %>% html_text()
  df = as.data.frame(fromJSON(data))
  return (df['results.distance'])
}
