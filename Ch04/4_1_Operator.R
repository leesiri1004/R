#날짜 : 2021/01/19
#이름 : 이슬이
#내용 : Ch04. 제어문과 함수 - 연산자 교재 p108

#교재 p108 실습 - 산술연산자 사용
num1 <- 100
num2 <- 20

result <- num1 + num2
result

result <- num1 - num2
result

result <- num1 * num2
result

result <- num1 / num2
result

result <- num1 %% num2
result

result <- num1 ^ 2
result

result <- num1 ^ num2
result


#교재 p109 실습 - 관계연산자 사용
#(1) 동등비교
boolean <- num1 == num2
boolean

boolean <- num1 != num2
boolean

#(2) 크기비교
boolean <- num1 > num2
boolean

boolean <- num1 >= num2
boolean

boolean <- num1 < num2
boolean

boolean <- num1 <= num2
boolean


#교재 p109 실습 - 논리연산자 사용
logical <- num1 >= 50 & num2 <= 10
logical

logical <- num1 >= 50 | num2 <= 10
logical

logical <- num1 >= 50
logical
