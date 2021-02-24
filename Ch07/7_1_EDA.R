#날짜 : 2021/01/21
#이름 : 이슬이
#내용 : Ch07. EDA와 Data정제 - EDA 실습 교재 p194

#EDA(Explanatory Data Analysis): 데이터를 이해하기 위한 기초적인 분석단계

df_exam <- read.csv("./file/exam.csv")
df_exam

#View() - 데이터프레임 테이블로 출력
View(df_exam)

#head(), tail() - 상위, 하위 데이터 미리보기
head(df_exam)
tail(df_exam)

head(df_exam, 10)

#dim() - 데이터프레임 구조확인
dim(df_exam)

#str() - 데이터프레임 속성확인
str(df_exam)

#summary() - 데이터프레임 요약통계
summary(df_exam)

#sum()
sum(df_exam$math)

mean(df_exam$english)


#교재 p194 실습 - 실습용 데이터 가져오기
#교재 p194 실습 - 전체 데이터 보기

#교재 p195 실습 - 데이터의 앞부분과 뒷부분 보기

#교재 p196 실습 - 데이터 셋 구조 보기

#교재 p197 실습 - 다양한 방법으로 데이터 셋 조회하기
