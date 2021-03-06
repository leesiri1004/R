#날짜 : 2021/01/18
#이름 : 이슬이
#내용 : Ch02. 데이터 유형과 구조 - Vector 자료구조 교재 p58

#vector - R에서 가장 많이 사용하는 자료구조, 배열과 동일

v1 <- c(1, 2, 3, 4, 5)
v1
v1[1]
v1[5]

v2 <- 1:5
v2
v2[1]
v2[5]

#벡터연산
x <- 1:4
y <- 5:8

x+y
x-y
x*y
x/y

#seq() 함수로 벡터생성
v3 <- seq(1, 10, by=2)
v3

#벡터의 합과 평균
sum_v1 <- sum(v1)
sum_v1

sum_v2 <- sum(v2)
sum_v2

mean_v1 <- mean(v1)
mean_v1

mean_v2 <- mean(v2)
mean_v2


#교재 p58 실습 - c() 함수를 이용한 벡터 객체 생성
c(1:20)           #combine value 함수
1:20              #c() 함수와 동일
c(1, 2, 3, 4, 5)  #c(1:5)와 동일

#교재 p58 실습 - seq() 함수를 이용한 벡터 객체 생성
seq(1, 10, 2)     #sequence value 함수 -> 1부터 10까지 2씩 증가


#교재 p59 실습 - rep() 함수를 이용한 벡터 생성 
rep(1:3, 3)       #replicate value 함수
rep(1:3, each=3)  #each는 각 자료가 반복할 횟수를 지정


#교재 p59 실습 - union(), setdiff(), intersect() 함수를 이용한 벡터 자료 처리
x <- c(1, 3, 5, 7)
y <- c(3, 5)

union(x, y)       #x와 y의 합집합
setdiff(x, y)     #x에는 있는데, y에 없는 값(1,7)
intersect(x, y)   #x와 y에 공통으로 있는 값(3,5)


#교재 p59 실습 - 숫자형, 문자형, 논리형 벡터 생성
v1 <- c(33, -5, 20:23, 12, -2:3)
v2 <- c("홍길동", "이순신", "유관순")
v3 <- c(T, TRUE, FALSE, T, TRUE, F, T)
v1;v2;v3


#교재 p60 실습 - 자료형이 혼합된 경우
v4 <- c(33, 05, 20:23, 12, "4")  #자료형이 혼합된 경우
                                 #데이터가 문자형으로 변형된다
v4

#교재 p60 실습 - 벡터 객체의 값에 칼럼명 지정
age <- c(30, 35, 40)
age

names(age) <- c("홍길동", "이순신", "강감찬")
age

age <- NULL

#교재 p61 실습 - 벡터 자료 참조하기
a <- c(1:50)        #벡터 객체 생성
a[10:45]            #10에서 45사이의 벡터 원소 출력
a[19:(length(a)-5)] #10부터의 벡터 전체 길이에서 5를 뺀 길이(45)만큼 출력


#교재 p61 실습 - c() 함수에서 콤마 사용 예
v1 <- c(13, -5, 20:23, 12, -2:3)    #벡터 객체 생성
v1[1]                               #벡터 객체의 1번째 원소 출력
v1[c(2, 4)]                         #벡터 객체의 2번째 원소와 4번째 원소 출력
v1[c(3:5)]                          #벡터 객체의 3~5번째 원소 출력
v1[c(4, 5:8, 7)]                    #콤마와 세미콜론으로 v1 벡터 객체의 원소 출력



