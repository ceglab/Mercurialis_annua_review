pdf("Figure 6.pdf",width=20)
par(mfrow=c(1,2))
read.table(file="LG1X.0.txt",header=FALSE)->X
read.table(file="Autosomes.0.txt",header=FALSE)->A

plot(X$V1,X$V2,col="blue",xlab="Time in the past (Years)",ylab="Effective population size (Ne) x 10e4",type="b",main="Scaled with generation time of 1 year")
points(A$V1,A$V2,col="red",type="b")

read.table(file="LG1X_coal.0.txt",header=FALSE)->X
read.table(file="Autosomes_coal.0.txt",header=FALSE)->A

plot(X$V1,X$V2,col="blue",xlab="Time in the past (Coalescent units)",ylab="Effective population size (Ne) (Coalescent units)",type="b",main="No scaling")
points(A$V1,A$V2,col="red",type="b")
dev.off()
