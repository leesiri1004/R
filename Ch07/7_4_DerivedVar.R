#날짜 : 2021/01/21
#이름 : 이슬이
#내용 : Ch07. EDA와 Data정제 - 파생변수 실습 교재 p215

#데이터 불러오기
df_exam <- read.csv("./file/exam.csv")
View(df_exam)

#파생변수 total 생성
df_exam$total <- df_exam$math + df_exam$english + df_exam$science
View(df_exam)

#파생변수 mean 생성
df_exam$mean <- df_exam$total / 3
View(df_exam)

#파생변수 grade 생성
df_exam$grade <- ifelse(df_exam$mean >= 90, "A", 
                 ifelse(df_exam$mean >= 80, "B",
                 ifelse(df_exam$mean >= 70, "C",
                 ifelse(df_exam$mean >= 60, "D", "F"))))

View(df_exam)


#교재 p217 실습 - 파생변수 생성하기

#교재 p218 실습 - 1:N의 관계를 1:1관계로 파생변수 생성하기

#교재 p220 실습 - 고객식별번호(user_id)에 대한 지불유형(pay_method)의 파생변수 생성하기
#교재 p220 실습 - 고객정보(user_data) 테이블에 파생변수 추가하기

#교재 p221 실습 - 사칙연산으로 총 구매금액 파생변수 생성하기
