#날짜 : 2021/01/20
#이름 : 이슬이
#내용 : Ch05. 데이터 시각화 - 산점도 교재 p154

#산점도 기본
mtcars
View(mtcars)

plot(mtcars$wt, mtcars$mpg)
plot(mtcars$wt, mtcars$mpg, xlab = "중량", ylab = "연비")
plot(mtcars$wt, mtcars$mpg, xlab = "중량", ylab = "연비", col = "red", pch=16)

#여러 변수들 간의 산점도
iris
View(iris)

iris2 <- iris[, 3:4]
group <- as.numeric(iris$Species)
group

color <- c("red", "green", "blue")

plot(iris2, pch = 16, col = color[group])

#교재 p154 실습 - 산점도 그래프에 대각선과 텍스트 추가하기
#교재 p155 실습 - type 속성으로 산점도 그리기
#교재 p156 실습 - pch 속성으로 산점도 그리기
#교재 p162 실습 - iris 데이터셋의 4개 변수를 상호 비교
