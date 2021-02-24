#날짜 : 2021/01/25
#이름 : 이슬이
#내용 : Ch09. 정형과 비정형 데이터 처리 - 네이버 키워드 시각화

library(KoNLP)
library(dplyr)
library(stringr)
library(wordcloud)

#데이터 불러오기
naver_keyword <- readLines('./file/naver_keyword.csv', encoding = 'UTF-8')
naver_keyword

#키워드 집계
naver_keyword_count <- table(unlist(naver_keyword))
naver_keyword_count

#데이터프레임 변환
df_naver <- as.data.frame(naver_keyword_count, stringsAsFactors = F)
View(df_naver)

#단어 시각화
wordcloud(words = df_naver$Var1,
          freq = df_naver$Freq,
          min.freq = 2,
          max.words = 1000,
          random.order = F,
          scale = c(4, 0.3),
          colors = brewer.pal(12, "Paired"))





#데이터 불러오기
naver_keyword_jan <- readLines('./file/naver_keyword_january.csv', encoding = 'UTF-8')
naver_keyword_jan

#키워드 집계
naver_keyword_jan_count <- table(unlist(naver_keyword_jan))
naver_keyword_jan_count

#데이터프레임 변환
df_naver_jan <- as.data.frame(naver_keyword_jan_count, stringsAsFactors = F)
View(df_naver_jan)

#단어 시각화
wordcloud(words = df_naver_jan$Var1,
          freq = df_naver_jan$Freq,
          min.freq = 2,
          max.words = 1000,
          random.order = F,
          scale = c(4, 0.3),
          colors = brewer.pal(12, "Paired"))








