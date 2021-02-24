#날짜 : 2021/01/28
#이름 : 이슬이
#내용 : 데이터분석 실습

###################################
#서울시 미세먼저 데이터 분석

#https://cleanair.seoul.go.kr

install.packages('readxl')
library(readxl)
library(dplyr)
library(ggplot2)

df_seoul_fine_dust <- read_excel('./file/seoul_fine_dust.xlsx')
View(df_seoul_fine_dust)

#비교할 지역 데이터만 가공처리
df_area <- df_seoul_fine_dust %>% filter(region == '강남구' | region == '강북구')
View(df_area)

#강남구, 강북구 데이터프레임 나누기
df_area_gn = subset(df_area, region == '강남구')
df_area_gb = subset(df_area, region == '강북구')


#요약통계 확인
summary(df_area_gn)
summary(df_area_gb)

#박스상자 시각화
boxplot(df_area_gn$finedust,
        df_area_gb$finedust,
        names = c('강남구', '강북구'),
        xlab = 'Region',
        ylab = 'PM')

#가설검정
#귀무가설: 강남구와 강북구의 미세먼지 농도 차이가 없다.
#대립가설: 강남구와 강북구의 미세먼지 농도 차이가 있다.
t.test(data = df_area, finedust ~ region)

#결론
#p-value가 0.06693이므로 유의수준 0.05(95%) 보다 크기 때문에 귀무가설 채택
#따라서 강남구와 강북구의 미세먼저 평균 차이는 없다.

#결론
#p-value가 0.2066이므로 유의수준 0.05(95%) 보다 크기 때문에 귀무가설 채택
#따라서 강남구와 강북구의 미세먼저 평균 차이는 없다.