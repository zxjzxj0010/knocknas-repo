options("repos" = c(CRAN = "https://mirrors.westlake.edu.cn/CRAN/"))
options(BioC_mirror = "https://mirrors.westlake.edu.cn/bioconductor")
if (!require("devtools")) {
    install.packages("devtools")
}
if (!require("BiocManager")) {
    install.packages("BiocManager")
}
if (!require("tidyverse")) {
    install.packages("tidyverse")
}

setwd('RCodes/')
library(tidyverse)

# 1、计算和输出

add <- function(x, y) {
    x + y
}

print(add(1, 2))
print(add(1.0e10, 2.0e10))
print(paste("one", NULL))
print(paste(NA, "two"))
print(paste("multi-line", "multi-line"))

# 2、绘图

h <- c(1, 2, 3, 4, 5, 6)
M <- c("A", "B", "C", "D", "E", "F")
barplot(h,
    names.arg = M, xlab = "X", ylab = "Y",
    col = "#00cec9", main = "Chart", border = "#fdcb6e"
)

dataframe <- data.frame(h = h, M = M)
View(dataframe)
p <- ggplot(dataframe, aes(x = M, y = h)) +
    geom_bar(stat = "identity", fill = "#00cec9", color = "#fdcb6e") +
    labs(x = "X", y = "Y", title = "Chart")
plot(p)
