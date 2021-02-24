#날짜 : 2021/01/21
#이름 : 이슬이
#내용 : Ch07. EDA와 Data정제 - 극단치(이상치) 실습 교재 p202

library(dplyr)

#극단치 확인
df_exam <- read.csv("./file/exam_outlier.csv")

View(df_exam)

#극단치를 결측치로 수정
df_exam$math <- ifelse(df_exam$math > 100 | df_exam$math < 0, NA, df_exam$math)
df_exam$english <- ifelse(df_exam$english > 100 | df_exam$english < 0, NA, df_exam$english)
df_exam$science <- ifelse(df_exam$science > 100 | df_exam$science < 0, NA, df_exam$science)

View(df_exam)

#결측치를 0으로 수정
df_exam[is.na(df_exam)] <- 0

View(df_exam)

#EDA 수행
df_result <- df_exam %>% mutate(total = math + english + science) %>% 
                         mutate(mean = total/3) %>% 
                         arrange(desc(total))

df_result


#교재 p203 실습 - 범주형 변수의 극단치 처리하기
#교재 p203 실습 - subset() 함수를 사용하여 데이터 정제하기

#교재 p204 실습 - 연속형 변수의 극단치 보기

#교재 p205 실습 - price 변수의 데이터 정제와 시각화
#교재 p205 실습 - age 변수의 데이터 정제와 시각화

#교재 p206 실습 - boxplot와 통계를 이용한 극단치 처리하기
