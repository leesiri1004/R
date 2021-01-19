#날짜 : 2021/01/19
#이름 : 이슬이
#내용 : Ch03. 데이터 입출력 - 데이터 저장하기 교재 p101

#작업 디렉터리 지정
setwd('c:/Users/bigdata/Desktop/workspace/R/file')

#데이터 파일로 저장하기
write.csv(titanic, "github_titanic.csv", row.names = T)
