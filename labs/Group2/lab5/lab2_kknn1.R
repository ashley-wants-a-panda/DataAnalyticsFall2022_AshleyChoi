#compare to kknn?
library(kernlab) # these things should really be at the top of all files....
library(kknn)
data(spam)
spam.kknn <- kknn(spam~., train, test, distance = 1,
             kernel = "triangular")
summary(spam.kknn)
# etc....
# other distances and kernels!!
