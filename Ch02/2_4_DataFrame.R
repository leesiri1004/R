#날짜 : 2021/01/18
#이름 : 이슬이
#내용 : Ch02. 데이터 유형과 구조 - DataFrame 자료구조 교재 p71

#데이터프레임 생성
a <- c(1, 2)
b <- c(3, 4)
c <- c(T, F)

df1 <- data.frame(a, b, c)
df1

df2 <- data.frame(num=c(1, 2, 3), 
                  name=c('김유신', '김춘추', '장보고'), 
                  age=c(31, 29, 42))
df2

uid <- c('a101', 'a102', 'a103', 'a104', 'a105')
name <- c('김유신', '김춘추', '장보고', '강감찬', '이순신')
hp <- c('010-1234-0001',
        '010-1234-0002',
        '010-1234-0003',
        '010-1234-0004',
        '010-1234-0005')
pos <- c('대리', '과장', '사원', '부장', '과장')
dep <- c(101, 102, 103, 104, 105)

member_df <- data.frame(uid, name, hp, pos, dep)
member_df

member_df <- data.frame('아이디'=uid,
                        '이름'=name,
                        '휴대폰'=hp,
                        '직급'=pos,
                        '부서'=dep)
member_df

#데이터프레임 데이터 출력 - $ 참조연산자
df2$name[1]
df2$name[3]

member_df$uid[1]
member_df$uid[3]
member_df$name[2]

#데이터프레임 필수 내장함수
iris
class(iris)   #데이터구조 유형확인
View(iris)    #데이터프레임 표 형태로 출력 (대문자 V)
head(iris)    #데이터프레임 상위 6개만 출력
tail(iris)    #데이터프레임 하위 6개만 출력
str(iris)     #데이터프레임 컬럼의 자료유형을 확인
dim(iris)     #데이터프레임 행열 구조 확인
ncol(iris)
nrow(iris)
names(iris)   #데이터프레임 속성(컬럼명) 확인
summary(iris) #데이터프레임 요약통계 확인


#교재 p72 실습 - 벡터를 이용한 데이터프레임 객체 생성하기
no <- c(1,2,3)
name <- c("hong","lee", "kim")
pay <- c(150, 250, 300)
vemp <- data.frame(No = no, Name = name, Pay = pay) #컬럼명 지정
vemp


#교재 p72 실습 - matrix를 이용한 데이터프레임 객체 생성하기
m <- matrix(
  c(1, "hong", 150,
    2, "lee", 250,
    3, "kim", 300), 3, by = T)   #행 우선, 3개의 리스트 생성

memp <- data.frame(m)
memp


#교재 p72 실습 - 텍스트 파일을 이용한 데이터프레임 객체 생성하기
getwd()
txtemp <- read.table("emp.txt", header = 1, sep = "")  #제목있음, 칼럼공백구분
txtemp


#교재 p73 실습 - CSV 파일을 이용한 데이터프레임 객체 생성하기
csvtemp <- read.csv("emp.csv", header = T)  #제목있음, 칼럼콤마구분
csvtemp

help(read.csv)                              #read.csv() 함수의 파라미터 보기
name <- c("사번", "이름", "급여")
read.csv("emp2.csv", header = F, col.names = name)


#교재 p73 실습 - 데이터프레임 만들기
df <- data.frame(x = c(1:5), y = seq(2, 10, 2), z = c("a", "b", "c", "d", "e"))
df


#교재 p73 실습 - 데이터프레임의 칼럼명 참조하기
df$x


#교재 p74 실습 - 데이터프레임의 자료구조, 열수, 행수, 칼럼명 보기
str(df)                 #데이터프레임 객체의 자료구조 보기

ncol(df)                #데이터프레임 객체의 행 수 : 3

nrow(df)                #데이터프레임 객체의 열 수 : 5

names(df)               #데이터프레임 객체의 칼럼명 출력

df[c(2:3), 1]           #데이터프레임 객체의 특정행 출력


#교재 p74 실습 - 요약통계량 보기
summary(df)

