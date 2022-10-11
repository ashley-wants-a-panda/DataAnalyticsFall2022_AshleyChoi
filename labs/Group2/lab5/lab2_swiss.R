data(swiss)
str(swiss)
sclass <- kmeans(swiss[2:6], 3) # there are only 6 columns? changed [2:7] to [2:6]
table(sclass$cluster, swiss[,2])    
# 
library(e1071)
m <- naiveBayes(swiss[2:6], swiss[,2])    
table(predict(m, swiss[2:6], swiss[,2]))

