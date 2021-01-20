#날짜 : 2021/01/20
#이름 : 이슬이
#내용 : Ch05. 데이터 시각화 - 히스토그램 교재 p150

#히스토그램 기본
cars
dist <- cars [, 2]
dist

hist(dist)  #연속변수

#붓꽃 분호 확인
hist(iris$Sepal.Width)

hist(iris$Sepal.Width,
     xlim = c(1.0, 5.0),
     xlab = "붓꽃 꽃받침 너비",
     main = "붓꽃 꽃받침 너비 분포도")

#교재 p150 실습 - iris 데이터셋 가져오기
#교재 p150 실습 - iris 데이터셋의 꽃받침 길이(Sepal.Length)로 히스토그램 시각화하기

#교재 p151 실습 - iris 데이터셋의 꽃받침 너비(Sepal.Width)로 히스토그램 시각화하기

#교재 p152 실습 - 히스토그램에서 빈도와 밀도 표현하기
#교재 p152 실습 - 정규분포 추정 곡선 나타내기