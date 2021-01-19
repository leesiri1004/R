#날짜 : 2021/01/19
#이름 : 이슬이
#내용 : Ch03. 데이터 입출력 - 데이터 불러오기 교재 p95

#작업 디렉터리 지정
setwd('c:/Users/bigdata/Desktop/workspace/R/file')

#컬럼명이 없는 파일 불러오기
student <- read.table('student.txt')
student
class(student)

#컬럼명이 있는 파일 불러오기
student1 <- read.table('student1.txt')
student1

#구분자가 있는 파일 불러오기
student2 <- read.table('student2.txt', sep = ";", header = T)
student2

#결측치를 포함하는 파일 불러오기
student3 <- read.table('student3.txt', header = T, na.strings = "-")
student3

#csv 파일 불러오기
student4 <- read.csv("student4.txt", na.strings = "-")
student4

#excel 불러오기
install.packages("readxl")
library(readxl)

student_excel <- read_excel("studentexcel.xlsx")
student_excel

#인터넷 파일 불러오기
titanic <- read.csv("https://gist.githubusercontent.com/michhar/2dfd2de0d4f8727f873422c5d959fff5/raw/fa71405126017e6a37bea592440b4bee94bf7b9e/titanic.csv")
titanic
View(titanic)

Titanic
