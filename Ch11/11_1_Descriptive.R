#날짜 : 2021/01/26
#이름 : 이슬이
#내용 : Ch11.기술통계분석 - 척도별 기술통계량 구하기 교재 p368

##################
#교재예제 실습하기
##################

#교재 p368 실습 - 전체 데이터 셋의 특성 보기
#단계 1: 실습 데이터 셋 가져오기
setwd('C:/Users/bigdata/Desktop/workspace/R/Rwork-2nd/Part-III') #작업  폴더 설정
data <- read.csv("descriptive.csv", header = TRUE)
head(data) #인구통계학 변수 확인
View(data)

#단계 2: descriptive.csv 데이터 셋의 데이터 특성 보기
dim(data)             #차원 보기
length(data)          #변수(칼럼)길이: 열(8)
length(data$survey)   #survey 컬럼의 관찰치: 행(300)
str(data)             #데이터 구조보기

#단계 3: 데이터 특성(최소값, 최대값, 평균, 분위수, 결측치(NA) 등) 제공
summary(data)


#교재 p370 실습 - 성별(gender) 변수의 기술 통계량과 빈도수 구하기
length(data$gender)        #성별 관측치 확인
summary(data$gender)       #최대값, 최소값, 중위수, 평균은 의미 없음
table(data$gender)         #성별 빈도수 -> 0과 5 이상치 발견


#교재 p370 실습 - 이상치(outlier) 제거
data <- subset(data, gender == 1 | gender == 2)
x <- table(data$gender)
x
barplot(x)


#교재 p370 실습 - 구성 비율 계산
prop.table(x)
y <- prop.table(x)
round(y * 100, 2)


#교재 p371 실습 - 학력 수준 변수를 대상으로 구성 비율 구하기
length(data$level)    #학력 수준(level): 서열척도
summary(data$level)   #명목척ㄱ도와 함께 의미 없음
table(data$level)     #빈도분석: 의미있음


#교재 p371 실습 - 학력 수준 변수의 빈도수 시각화 하기
x1 <- table(data$level)
barplot(x1)


#교재 p372 실습 - 만족도 변수를 대상으로 요약통계량 구하기
#단계 1: 등간척도 변수 추출
survey <- data$survey
survey

#단계 2: 등간척도 요약통계량
summary(survey)  #만족도(5점 척도)인 경우 의미 있음 -> 2.6(평균 이상)

#교재 p372 실습 - 등간척도 빈도분석
x1 <- table(survey)  #빈도수 -> 의미있음
x1


#교재 p373 실습 - 등간척도 시각화하기
hist(survey)  #등간척도 시각화(히스토그램)
pie(x1)       #빈도수를 이용하여 시각화(파이차트)


#교재 p374 실습 - 생활비 변수 대상 요약 통계량 구하기
length(data$cost)
summary(data$cost)  #요약통계량 - 의미있음(mean)


#교재 p374 실습 - 데이터 정제(결측치 제거)
plot(data$cost)
data <- subset(data, data$cost >= 2 & data$cost <= 10)  #생활비 기준
x <- data$cost
mean(x)  #평균 계산


#교재 p374 실습 - 생활비 변수를 대상으로 대표값 구하기
#단계1: 평균과 중위수 구하기
mean(x)    #평균:5.340
median(x)  #중위수:5.4


#교재 p376 실습 - 생활비 변수의 최빈수 구하기

#교재 p377 실습 - 생활비 변수를 대상으로 산포도 구하기

#교재 p379 실습 - 생활비 변수의 빈도분석과 시각화하기

#교재 p381 실습 - 패키지를 이용한 비대칭도 구하기

#교재 p382 실습 - 히스토그램과 정규분포 곡선 그리기
#교재 p382 실습 - attach()/detach() 함수로 기술통계량 구하기

#교재 p383 실습 - NA가 있는 경우 제거한 뒤에 기술통계량 구하기기