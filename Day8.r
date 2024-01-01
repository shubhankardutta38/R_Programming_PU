install.packages("ggplot2")
install.packages("factoextra")
data("USArrests")
head(USArrests)
cor(USArrests)
library(factoextra)
library(stats)
library(ggplot2)
scaled_data = scale(USArrests)
pca_result = prcomp(scaled_data)
print(summary(pca_result))

loadings_matrix = pca_result$rotation
print(loadings_matrix)

scores = as.data.frame(pca_result$x)
print(head(scores))

png(filename = "screen_plot.png", width = 800, height = 400)

par(mar = c(5,5,2,2))

plot(1:4, pca_result$sdev^2 / sum(pca_result$sdev^2),
     type = "b", main = "Screen Plot",
     xlab = "Principal component",
     ylab = "Proportion of Variance explained")
dev.off()

png(filename = "biplot.png", width = 800, height = 800)

par(mar = c(5,5,2,2))
biplot(pca_result)
dev.off()

fviz_eig(pca_result,
         addlabels = TRUE,
         ylim=c(0,70))
fviz_pca_biplot(pca_result,
                label = "var")
dev.off()
