#날짜 : 2021/01/18
#이름 : 이슬이
#내용 : Ch01. R 설치와 개요 - 자료형 교재 p41

#숫자형
num1 <- 1
num2 <- 2
num3 <- 3.14
num1
num2;num3

#논리형
bool1 <- TRUE
bool2 <- FALSE
bool1
bool2

#문자형
str1 <- "Hello"
str2 <- '안녕'
str1
str2

#특수형
data1 <- NULL #초기값을 의미
data2 <- NA   #결측값, Not Available
data3 <- NaN  #수학적으로 정의가 불가능한 값, Not a number
data1
data2
data2


#교재 p42 실습 - 스칼라 변수 사용 예
int <- 20                            # 숫자형 값 초기화
int

string <- "홍길동"                   # 문자형 값 초기화
string

boolean <- TRUE                      # 논리형 값 초기화
boolean

sum(10, 20, 20)                      # 3개의 숫자형 값의 합계 연산

sum(10, 20, 20, NA)                  # NA - 결측치 자료형

sum(10, 20, 20, NA, na.rm = TRUE)    # NA 결측치 제거 후 합계 연산

ls()                                 # 현재 사용 중인 변수(객체) 보기


#교재 p43 실습 - 자료형 확인
is.character(string)

x <- is.numeric(int)
x

is.logical(boolean)
is.logical(x)
is.na(x)

#교재 p43 실습 - 문자 원소를 숫자 원소로 형 변환하기
x <- c(1, 2, "3")               #3개의 원소를 갖는 벡터 생성
x

result <- x*3                   #Error in x * 3 : 이항연산자에 수치가 아닌 인수입니다

result <- as.numeric(x) * 3     #벡터 x를 숫자형으로 변환

result2 <- as.integer(x) * 3    #as.integer() 함수도 같은 결과

result

result2

#교재 p44 실습 - 스칼라 변수의 자료형과 자료구조 확인
#mode(변수): 자료의 성격(type)을 알려준다.
mode(int)                     #numeric
mode(string)                  #character
mode(boolean)                 #logical

#class(변수): 자료구조의 성격(type)을 알려준다.
class(int)                    #numeric
class(string)                 #character
class(boolean)                #logical


#교재 p45 실습 - 문자벡터와 그래프 생성
#5개의 문자열 원소를 갖는 벡터 객체 생성
gender <- c("man", "woman", "woman", "man", "man")
plot(gender)                  #error발생: 차트는 수치 데이터만 가능

#교재 p45 실습 - as.factor() 함수를 이용하여 요인형 변환
Ngender <- as.factor(gender)  #Factor형 변환
table(Ngender)                #빈도수 구하기


#교재 p46 실습 - Factor형 변수로 차트 그리기
plot(Ngender)
mode(Ngender)
class(Ngender)
is.factor(Ngender)
