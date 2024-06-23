read.table(file="All_rRNA_repeats_coverage.txt",header=F)->M

pdf("LG1_X_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065570.1"],M$V7[M$V1=="NC_065570.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG1-X [NC_065570.1]")
dev.off()

pdf("LG2_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065571.1"],M$V7[M$V1=="NC_065571.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG2 [NC_065571.1]")
dev.off()

pdf("LG3_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065572.1"],M$V7[M$V1=="NC_065572.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG3 [NC_065572.1]")
dev.off()

pdf("LG4_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065573.1"],M$V7[M$V1=="NC_065573.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG4 [NC_065573.1]")
dev.off()

pdf("LG5_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065574.1"],M$V7[M$V1=="NC_065574.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG5 [NC_065574.1]")
dev.off()

pdf("LG6_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065575.1"],M$V7[M$V1=="NC_065575.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG6 [NC_065575.1]")
dev.off()

pdf("LG7_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065576.1"],M$V7[M$V1=="NC_065576.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG7 [NC_065576.1]")
dev.off()

pdf("LG8_A_rRNA_repeat_content.pdf",width=20)
plot(M$V2[M$V1=="NC_065577.1"],M$V7[M$V1=="NC_065577.1"],ylab="rRNA_repeat fraction",xlab="Positions along chromosome [50 Kb windows]",main="LG8 [NC_065577.1]")
dev.off()
