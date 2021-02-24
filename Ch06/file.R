install.packages("dplyr")
library(dplyr)

df_exam <- read.csv("./file/exam.csv")
df_exam

View(df_exam)


#select - 데이터프레임에서 특정 변수를 선택해서 새로운 데이터프레임 생성
df_math    <- df_exam %>% select(math)
df_math

df_english <- df_exam %>% select(english)
df_english

df_science <- df_exam %>% select(science)
df_science



#filter
df_class <- df_exam %>% select(everything()) %>% filter(class == 1)
df_class

df_filter1 <- df_exam %>% select(everything()) %>% filter(math >= 60 & math < 80)
df_filter1

df_filter2 <- df_exam %>% filter(english >= 60 & english < 80)
df_filter2

#arrange
df_math_asc <- df_exam %>% select(everything()) %>% filter(math >= 60) %>% arrange(math)
df_math_desc <- df_exam %>% select(everything()) %>% filter(math >= 60) %>% arrange(desc(math))
df_math_asc
df_math_desc

#mutate
df_total <- df_exam %>% mutate(total = math + english + science)
df_total
View(df_total)

df_mean <- df_exam %>% mutate(total = math + english + science) %>% mutate(mean = total/3)
df_mean
View(df_mean)

df_grade <- df_exam %>% mutate(total = math + english + science) %>% 
            mutate(mean = total/3) %>% 
            mutate(grade = ifelse(mean >= 90, "A", 
                   ifelse(mean >= 80, "B", 
                   ifelse(mean >= 70, "C", 
                   ifelse(mean >= 60, "D", "F")))))

df_grade

View(df_grade)

#summarise
df_exam %>% summarise(mean_math = mean(math))
df_exam %>% summarise(mean_math = sum(math))

#group_by
df_group1 <- df_exam %>% group_by(class) %>% summarise(mean_math = mean(math))
df_group1

iris %>% group_by(Species) %>% summarise(mean(Sepal.Length),
                                         mean(Sepal.Width),
                                         mean(Petal.Length),
                                         mean(Petal.Width))

#inner_join
df_teacher <- data.frame(class = c(1, 2, 3, 4, 5),
                         teacher = c("김유신", "김춘추", "장보고", "강감찬", "이순신"))
df_teacher

df_join <- inner_join(df_exam, df_teacher, by = "class")
View(df_join)
