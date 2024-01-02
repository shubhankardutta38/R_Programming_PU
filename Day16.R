data("USArrests")
head(USArrests)
scalled_data <- scale(USArrests)
pca_results <- prcomp(scalled_data)
print(summary(pca_results))
head(USArrests)
loadings_matrix <- pca_results$rotation
print(loadings_matrix)
scores <- as.data.frame(pca_results$x)
print(head(scores))

png(filename = "Screen_plot1.png" , width = 800 , height = 400)
par(mar = c(5,5,2,2))
plot(1:4,pca_results$sdev^2 / sum(pca_results$sdev^2),type = "b" , main = "Screen plot" , xlab = "X axis" , ylab = "Y axis")
dev.off()


png(filename = "biplot.png" , width = 500 , height = 500)
par(mar=c(5,5,2,2))
biplot(pca_results)
dev.off()
