#날짜 : 2021/01/20
#이름 : 이슬이
#내용 : Ch05. 데이터 시각화 - 상자그래프 교재 p148

################
#박스상자 기본
################
cars
str(cars)
View(cars)

dist <- cars[, 2]
dist

boxplot(dist)
boxplot.stats(dist)


#######################################
#박스상자를 이용하여 자동차 데이터 분석
#######################################
mtcars
dim(mtcars)
View(mtcars)

#연비 분표 확인
boxplot(mtcars$mpg)
boxplot.stats(mtcars$mpg)

#기어 수에 따른 연비 분포 확인
boxplot(mtcars$mpg ~ mtcars$gear)

#변속기 종류에 따른 연비 분포 확인
boxplot(mtcars$mpg ~ mtcars$am)


#######################################
#박스상자를 이용하여 붓꽃 데이터 분석
#######################################
iris
View(iris)

boxplot(iris)
boxplot(data=iris, Petal.Length ~ Species)


#######################################
#월별 기온 변화 다중 박스상자 실습
#######################################
df_seoul_temp <- read.csv("./file/seoul_temp_2017.csv")
df_seoul_temp
View(df_seoul_temp)

#서울 1년 기온 분포확인
summary(df_seoul_temp)
summary(df_seoul_temp$avg_temp)

boxplot(df_seoul_temp$avg_temp,
        col = '#4DB3E6',
        ylim = c(-20, 40),
        xlab = "서울 1년 기온",
        ylab = "기온")

#월 평균기온 집계
month_avg <- aggregate(df_seoul_temp$avg_temp, by = list(df_seoul_temp$month), mean)
month_avg

boxplot(avg_temp ~ month,  #x 축 ~ y 축
        data = df_seoul_temp,
        col = '#4DB3E6',
        ylim = c(-20, 40),
        xlab = "서울 1년 기온",
        ylab = "기온")


#교재 p148 실습 - VADeaths 데이터셋을 상자그래프로 시각화하기
#교재 p149 실습 - VADeaths 데이터셋의 요약통계 보기

