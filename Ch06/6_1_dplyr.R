#날짜 : 2021/01/20
#이름 : 이슬이
#내용 : Ch06. 데이터 조작 - dplyr 실습 교재 p169

install.packages("dplyr")
library(dplyr)

df_exam <- read.csv("./file/exam.csv")
df_exam


#select - 데이터프레임에서 특정 변수를 선택해서 새로운 데이터프레임 생성
df_math    <- df_exam %>% select(math)          #SELECT `math`    FROM `df_exam`;
df_english <- df_exam %>% select(english)       #SELECT `english` FROM `df_exam`;
df_result1 <- df_exam %>% select(math, science) #SELECT `math`, `science` FROM `df_exam`;
df_result2 <- df_exam %>% select(everything())  #SELECT * FROM `df_exam`;

df_math
df_english
df_result1
df_result2

#filter
df_filter1 <- df_exam %>% select(everything()) %>% filter(class == 1)
df_filter2 <- df_exam %>% select(everything()) %>% filter(math >= 60 & math < 80)
df_filter3 <- df_exam %>% select(everything()) %>% filter(english >= 60 | science < 80)
df_filter1
df_filter2
df_filter3

#arrange
df_math_asc <- df_exam %>% select(everything()) %>% filter(math >= 60) %>% arrange(math)
df_math_desc <- df_exam %>% select(everything()) %>% filter(math >= 60) %>% arrange(desc(math))
df_math_asc
df_math_desc

#mutate
df_total <- df_exam %>% mutate(total = math + english + science)
df_total
View(df_total)

df_mean <- df_exam %>% mutate(total = math + english + science) %>% mutate(mean = total/3)
df_mean
View(df_mean)

df_grade <- df_exam %>% mutate(total = math + english + science) %>% 
                        mutate(mean = total/3) %>% 
                        mutate(grade = ifelse(mean >= 90, "A", 
                                       ifelse(mean >= 80, "B", 
                                       ifelse(mean >= 70, "C", 
                                       ifelse(mean >= 60, "D", "F")))))
View(df_grade)

#summarise
df_exam %>% summarise(mean_math = mean(math))
df_exam %>% summarise(mean_math = sum(math))

#group_by
df_group1 <- df_exam %>% select(everything()) %>% group_by(class) %>% summarise(sum_math = sum(math))
df_group1

iris %>% group_by(Species) %>% summarise(mean(Sepal.Length),
                                         mean(Sepal.Width),
                                         mean(Petal.Length),
                                         mean(Petal.Width))

#inner_join
df_teacher <- data.frame(class = c(1, 2, 3, 4, 5),
                         teacher = c("김유신", "김춘추", "장보고", "강감찬", "이순신"))
df_teacher

df_join <- inner_join(df_exam, df_teacher, by = "class")
View(df_join)


#교재 p169 실습 - iris 데이터셋을 대상으로 %>% 연산자를 이용하여 함수 적용하기

#교재 p170 실습 - dplyr패키지와 hflight 데이터셋 설치

#교재 p171 실습 - hflight 데이터셋 구조 보기
#교재 p171 실습 - tbl_df() 함수 사용하기

#교재 p172 실습 - hflights_df를 대상으로 특정일의 데이터 추출하기

#교재 p173 실습 - hflights_df를 대상으로 지정된 월의 데이터 추출하기

#교재 p174 실습 - hflights_df를 대상으로 데이터 정렬하기

#교재 p175 실습 - hflights_df를 대상으로 지정된 칼럼 데이터 검색하기
#교재 p175 실습 - hflights_df를 대상으로 칼럼의 범위로 검색하기

#교재 p176 실습 - hflights_df에서 출발 지연시간과 도착 지연시간의 차이를 계산한 컬럼 추가하기

#교재 p177 실습 - mutate()함수에 의해 추가된 칼럼 보기
#교재 p177 실습 - hflights_df에서 비행시간의 평균 구하기

#교재 p178 실습 - hflights_df의 관측치 길이 구하기
#교재 p178 실습 - 도착시간의 표준편차와 분산 계산하기
#교재 p178 실습 - 집단변수를 이용하여 그룹화하기

#교재 p180 실습 - 공통변수를 이용하여 내부 조인하기
#교재 p180 실습 - 공통변수를 이용하여 왼쪽 조인하기

#교재 p181 실습 - 공통변수를 이용하여 오른쪽 조인하기
#교재 p181 실습 - 공통변수를 이용하여 전체 조인하기

#교재 p182 실습 - 두 개의 데이터프레임을 행 단위로 합치기

#교재 p183 실습 - 두 개의 데이터프레임을 열 단위로 합치기
#교재 p183 실습 - 데이터프레임의 칼럼명 수정하기
