base="https://restapi.amap.com/v3/staticmap?location="
#location="南京市"
location="118.796877,32.060255"
zoom=4
url=paste0(base,location,"&zoom=",zoom,"$key=",key)
data=read_html(url,encoding='utf-8')
html_text(data)

url2="https://restapi.amap.com/v3/staticmap?location=118.796877,32.06025&zoom=10&size=750*300&key=9539824b7075b630f3afb1d9c353d1b0"
dt=read_html(url)
fromJSON(html_text(dt))
#timestamp 0123 20:00
