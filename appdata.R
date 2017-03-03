#R环境初始化，此程序动态爬取网站app数据，并在桌面生成规范CSV文件
install.packages("rvest") #下载rvest包
library(rvest)
read_html ("http://www.ann9.com/5_11?p=0")
#直接输入函数名可得到函数细节，有一些封装的要用methods（）进一步查看
doc <- read_html("http://www.ann9.com/5_11?p=0")
appname <- doc %>% html_nodes(".padhuang") %>% html_title ()
appname <- as.matrix (appname)
for(i in 1:10){
   extrafun(i,url)
   final <- rbind(final,extrafun(i,url))
}
str (appname)
class(appname)
ncol(appname)
nrow(appname)
appdata <- doc %>% html_nodes(".padlan1") %>% html_text ()
appdata <- as.matrix (appdata)
str(appdata)
ncol(appdata)
nrow(appdata)
appdata1 <- as.matrix (appdata)
appdata1 <- appdata1[seq(2, 1000, 2),]
app <- cbind (appname,appdata1)
write.csv (app,"C:\\users\\13560\\Desktop\\app.csv")
