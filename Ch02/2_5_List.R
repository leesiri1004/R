#날짜 : 2021/01/19
#이름 : 이슬이
#내용 : Ch02. 데이터 유형과 구조 - List 자료구조 교재 p78

x1 <- seq(1:5)
x2 <- matrix(1:6, nrow = 2)
x3 <- data.frame(col1 = c(1, 2), col2 = c("김유신", "김춘추"))

x1
x2
x3

list <- list(e1=x1, e2=x2, e3=x3)
list

list$e1[3]
list$e2[1, 2]
list$e3$col2[1]


#교재 p79 실습 - key를 생략한 list 생성하기
list <- list("lee", "이순신", 95)
list


#교재 p79 실습 - 리스트를 벡터 구조로 변경하기
unlist <- unlist(list)
unlist


#교재 p80 실습 - 1개 이상의 값을 갖는 리스트 객체 생성하기
num <- list(c(1:5), c(6, 10))
num


#교재 p80 실습 - key와 value 형식으로 리스트 객체 생성하기
member <- list(name = c("홍길동", "유관순"), age = c(35, 25),
               address = c("한양", "충남"), gender = c("남자", "여자"),
               htype = c("아파트", "오피스텔"))
member
member$name         #특정 key
member$name[1]      #특정 key의 value
member$name[2]      #특정 key의 value


#교재 p81 실습 - key를 이용하여 value에 접근하기
member$age[1] <- 45     #age key의 첫 번째 원소 수정
member$id <- "hong"     #id key 추가
member$pwd <- "1234"    #pwd key 추가

member                  #age 수정, id와 pwd key 추가 확인
member$age <- NULL      #age 원소 제거
member                  #age 제거 확인

