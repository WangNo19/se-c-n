library(datasets)
#load data
data(mtcars)
#xem 5 hàng đầu
head(mtcars, 5)
#chạy bộ ggplot
library(ggplot2)
#biểu đồ phân tán dựa trên displacement và mi le bơ ga lông
#thêm title
ggplot(aes(x=disp, y=mpg,),data=mtcars)+
  geom_point() +
  ggtitle("disp vs mpg") +
  labs(x="disp", y = "mpg")
#make vs a factor
mtcars$vs <- as.factor(mtcars$vs)
#biểu đồ hộp, kiểu như cái nến á của lượng tiêu thụ nhiên liệu của động cơ chữ v và động cơ trục thẳng (V8 và V12 á)
ggplot(aes(x=vs, y=mpg), data = mtcars) + 
  geom_boxplot(alpha=0.3) + 
  theme(legend.position = "none")
#histogram với trọng lượng
library(ggplot2)
ggplot(aes(x=wt), data=mtcars) +geom_histogram(binwidth=0.5)



View(data.frame(vs = mtcars$vs))
