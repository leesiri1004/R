#날짜 : 2021/01/20
#이름 : 이슬이
#내용 : Ch05. 데이터 시각화 - 막대차트 교재 p139

################
#기본 막대차트
################
count <- c(1, 2, 3, 4, 5)
barplot(count)

score <- c(80, 72, 60, 78, 82)
names(score) <- c("김유신", "김춘추", "장보고", "강감찬", "이순신")
barplot(score)


################
#범주형 막대차트
################
season <- c("winter", "summer", "spring", "summer", "summer",
            "autumn", "autumn", "summer", "spring", "spring")
season
#season 데이터 도수분포표 생성
season_table <- table(season)
season_table

barplot(season_table)


################
#막대차트 옵션
################
barplot(season_table, main = "Season")
barplot(season_table, main = "Season", col = c("red", "green", "blue", "yellow"))
barplot(season_table, main = "Season", col = rainbow(4))
barplot(season_table, main = "Season", col = heat.colors(4))  #온도를 표현할 때 쓰는 색상
barplot(season_table, main = "Season", col = terrain.colors(4))

barplot(season_table, 
        main = "Season", 
        col = terrain.colors(4), 
        xlab = "계절",
        ylab = "빈도수")

barplot(season_table, 
        main = "Season", 
        col = terrain.colors(4), 
        xlab = "계절",
        ylab = "빈도수",
        horiz = T)


################
#누적 막대차트
################
df_population <- read.csv("./file/sample_population.csv")
df_population
View(df_population)

matrix_population <- as.matrix(df_population)
matrix_population

barplot(matrix_population)


#교재 p140 실습 - 세로 막대 차트 그리기

#교재 p141 실습 - barplot() 함수 도움말 보기
#교재 p141 실습 - 막대차트의 가로축과 세로축에 레이블 추가하기

#교재 p142 실습 - 가로 막대차트 그리기
#교재 p142 실습 - 막대차트에서 막대 사이의 간격 조정하기

#교재 p143 실습 - 막대차트에서 막대의 색상 지정하기
#교재 p143 실습 - 막대 차트에서 색상이름을 사용하여 막대의 색상 지정하기

#교재 p144 실습 - 누적 막대 차트 그리기
#교재 p144 실습 - VADeaths 데이터셋 구조 보기

