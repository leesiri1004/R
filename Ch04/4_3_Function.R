#날짜 : 2021/01/19
#이름 : 이슬이
#내용 : Ch04. 제어문과 함수 - 함수 교재 p118

#교재 p118 실습 - 매개변수가 없는 사용자 함수 정의하기
f1 <- function(){
  cat("매개변수가 없는 함수")
}

f1()  #사용자 정의 함수 호출


#교재 p118 실습 - 결과를 반환하는 사용자 함수 정의하기
f3 <- function(x, y){
  add <- x + y
  return (add)
}

add <- f3(10, 20)
add


#교재 p119 실습 - 기본함수를 사용하여 요약통계량과 빈도수 구하기
#단계 1: 파일 불러오기
setwd("C:/Users/bigdata/Desktop/workspace/R/Rwork-2nd/Part-I")
test <- read.csv("test.csv", header = TRUE)
head(test)

#단계 2: 요약통계량 구하기
summary(test)   #변수(A, B, C, D, E)별 요약통계량

#단계 3: 특정 변수의 빈도수 구하기
table(test$A)   #변수A를 대상으로 빈도수 구하기: 5점 척도(만족도 조사)

#단계 4: 각 칼럼 단위의 빈도수와 최대값, 최소값 계산을 위한 사용자 함수 정의
data_pro <- function(x){
  for (idx in 1:length(x)) {               #칼럼 수 만큼 반복
    cat(idx, "번째 칼럼의 빈도 분석 결과")
    print(table(x[idx]))                   #칼럼별 빈도수 출력
    cat("\n")
  }
  
  for (idx in 1:length(x)) {
    f <- table(x[idx])
    cat(idx, "번째 칼럼의 최대값/최소값\n")
    cat("max = ", max(f), "min = ", min(f), "\n")
  }
}

data_pro(test)


#교재 p120 실습 - 분산과 표준편차를 구하는 사용자 함수정의
x <- c(7, 5, 12, 9, 15, 6)

var_sd <- function(x){
  var <- sum(x - mean(x)/2) / (length(x) - 1)
  sd <- sqrt(var)
  cat("표본분산: ", var, "\n")
  cat("표본표준편차: ", sd)
}

var_sd(x)


#교재 p121 실습 - 피타고라스식 정의 함수 만들기
pytha <- function(s, t){
  a <- s ^ 2 - t ^ 2
  b <- 2 * s * t
  c <- s ^ 2 + t ^ 2
  cat("피타고라스 정리: 3개의 변수: ", a, b, c)
}

pytha(2, 1)


#교재 p121 실습 - 구구단 출력함수 만들기
gugu <- function(i, j){
  for(x in i){
    cat("**", x, "단 **\n")
    for (y in j) {
      cat(x, " * ", y, " = ", x * y, "\n")
    }
    cat("\n")
  }
}

i <- c(2:9)
j <- c(1:9)

gugu(i, j)


#교재 p122 실습 - 결측치를 포함하는 자료를 대상으로 평균구하기
#단계 1: 결측치(NA)를 포함하는 데이터 생성
data <- c(10, 20, 5, 4, 40, 7, NA, 6, 3, NA, 2, NA)  #sum: 97

#단계 2: 결측치 데이터를 처리하는 함수 정의
na <- function(x){
  #1차: NA 제거
  print(x)
  print(mean(x, na.rm = T))

#2차: NA를 0으로 대체
data = ifelse(!is.na(x), x, 0)
print(data)
print(mean(data))

#3차: NA를 평균으로 대체
data2 = ifelse(!is.na(x), x, round(mean(x, na.rm = TRUE), 2))
print(data2)
print(mean(data2))
}

#단계 3: 결측치 처리를 위한 사용자 함수 호출
na(data)  #함수 호출


#교재 p126 실습 - 기술통계량 관련 내장함수 사용하기
seq(-2, 2, by = .2)  #-2 ~ 2 범위에서 0.2씩 증가
vec <- 1:10
min(vec)             #최소값
max(vec)             #최대값
range(vec)           #범위
mean(vec)            #평균
median(vec)          #중위수
sum(vec)             #합계
sd(rnorm(10))        #정규분표 자료 10개(무작위 추출)를 대상으로 표준편차 구하기
table(vec)           #벡터 자료 대상으로 빈도수 구하기


#교재 p126 실습 - 정규분포(연속형)의 난수 생성하기
n <- 1000
rnorm(n, mean = 0, sd = 1)
hist(rnorm(n, mean = 0, sd = 1))


#교재 p127 실습 - 균등분포(연속형)의 난수 생성하기
n <- 1000
runif(n, min = 0, max = 10)
hist(runif(n, min = 0, max = 10))


#교재 p128 실습 - 이항분포(이산형)의 난수 생성하기
#교재 p128 실습 - 종자값으로 동일한 난수 생성하기

#교재 p130 실습 - 수학 관련 내장함수 사용하기

#교재 p131 실습 - 행렬연산 내장함수 사용하기
#교재 p132 실습 - 집합연산 관련 내장함수 사용하기