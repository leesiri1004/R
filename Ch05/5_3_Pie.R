#날짜 : 2021/01/20
#이름 : 이슬이
#내용 : Ch05. 데이터 시각화 - 원형차트 교재 p146

season <- c("winter", "summer", "spring", "summer", "summer",
            "autumn", "autumn", "summer", "spring", "spring")
season


season_table <- table(season)
season_table

pie(season_table)
pie(season_table, col = rainbow(4))

#교재 p148 실습 - 분기별 매출현황을 파이 차트로 시각화하기