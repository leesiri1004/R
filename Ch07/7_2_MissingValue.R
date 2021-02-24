#날짜 : 2021/01/21
#이름 : 이슬이
#내용 : Ch07. EDA와 Data정제 - 결측치 실습 교재 p200

library(dplyr)

#결측치(누락값) 처리하기
df_exam <- read.csv("./file/exam_na.csv")

View(df_exam)

#결측치 존재여부 확인
is.na(df_exam)

#결측치를 제거
df_exam_new <- df_exam %>% filter(!is.na(math) & !is.na(english) & !is.na(science))
df_exam_new

View(df_exam_new)

#EDA 수행
df_exam_new %>% mutate(total = math + english + science, mean = total/3) %>% arrange(desc(total))


#교재 p201 실습 - summary() 함수를 사용하여 결측치 확인하기
#교재 p201 실습 - sum() 함수의 속성을 이용하여 결측치 제거하기
#교재 p201 실습 - 결측치 제거 함수를 이용하여 결측치 제거

#교재 p202 실습 - 결측치를 0으로 대체하기
#교재 p202 실습 - 결측치를 평균으로 대체하기