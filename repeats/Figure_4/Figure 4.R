pdf("Figure 4.pdf",width=20)
par(mfrow=c(1,5))
read.table(file="All_repeats_50Kb_coverage.txt",header=F)->M
hist(M$V7[M$V1 %in% c("NC_065570.1")],plot=FALSE)->X
hist(M$V7[!(M$V1 %in% c("NC_065570.1"))],plot=FALSE)->A
plot(A$mids,A$counts,col="red",xlab="Repeat Fraction [50 Kb window]",ylab="Number of windows",type="b")
points(X$mids,X$counts,col="blue",type="b")
read.table(file="All_repeats_10Kb_coverage.txt",header=F)->M
hist(M$V7[M$V1 %in% c("NC_065570.1")],plot=FALSE)->X
hist(M$V7[!(M$V1 %in% c("NC_065570.1"))],plot=FALSE)->A
plot(A$mids,A$counts,col="red",xlab="Repeat Fraction [10 Kb window]",ylab="Number of windows",type="b")
points(X$mids,X$counts,col="blue",type="b")
read.table(file="All_repeats_1Kb_coverage.txt",header=F)->M
hist(M$V7[M$V1 %in% c("NC_065570.1")],plot=FALSE)->X
hist(M$V7[!(M$V1 %in% c("NC_065570.1"))],plot=FALSE)->A
plot(A$mids,A$counts,col="red",xlab="Repeat Fraction [1 Kb window]",ylab="Number of windows",type="b")
points(X$mids,X$counts,col="blue",type="b")
read.table(file="All_repeats_500bp_coverage.txt",header=F)->M
hist(M$V7[M$V1 %in% c("NC_065570.1")],plot=FALSE)->X
hist(M$V7[!(M$V1 %in% c("NC_065570.1"))],plot=FALSE)->A
plot(A$mids,A$counts,col="red",xlab="Repeat Fraction [500 bp window]",ylab="Number of windows",type="b")
points(X$mids,X$counts,col="blue",type="b")
read.table(file="All_repeats_100bp_coverage.txt",header=F)->M
hist(M$V7[M$V1 %in% c("NC_065570.1")],plot=FALSE)->X
hist(M$V7[!(M$V1 %in% c("NC_065570.1"))],plot=FALSE)->A
plot(A$mids,A$counts,col="red",xlab="Repeat Fraction [100 bp window]",ylab="Number of windows",type="b")
points(X$mids,X$counts,col="blue",type="b")
dev.off()
