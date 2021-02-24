#날짜 : 2021/01/21
#이름 : 이슬이
#내용 : Ch09. 정형과 비정형 데이터 처리 - MariaDB 정형 데이터 처리 교재 p292

#RMySQL 패키지 설치
install.packages("RMySQL")
library(RMySQL)
library(dplyr)
library(ggplot2)

#데이터베이스 접속
conn <- dbConnect(MySQL(),
                  host='192.168.10.114',
                  user='lse',
                  password='1234',
                  dbname='lse')

df_user <- dbGetQuery(conn, statement = "SELECT * FROM `USER1`;")
Encoding(df_user$name) <- "UTF-8"
View(df_user)

#매출 데이터 불러오기
df_sale <- dbGetQuery(conn, statement = "SELECT * FROM `SALE_2017`;")
View(df_sale)

#직원별 매출 그룹화
df_sale <- df_sale %>%  #%>% 앞에 SELECT ALL 생략했다는 의미
           group_by(uid) %>% 
           summarise(total = sum(sale)) %>% 
           arrange(desc(total))
View(df_sale)

#시각화
ggplot(data = df_sale, aes(x = uid, y = total)) + geom_col()


#데이터베이스 접속종료
dbDisconnect(conn)



