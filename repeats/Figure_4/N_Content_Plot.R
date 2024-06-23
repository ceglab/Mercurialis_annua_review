read.table(file="GC_N_genome_head_corrected.txt",header=TRUE)->M

pdf("LG1_X_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065570.1"],M$X10_num_N[M$X1_usercol=="NC_065570.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG1-X [NC_065570.1]")
dev.off()

pdf("LG2_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065571.1"],M$X10_num_N[M$X1_usercol=="NC_065571.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG2 [NC_065571.1]")
dev.off()

pdf("LG3_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065572.1"],M$X10_num_N[M$X1_usercol=="NC_065572.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG3 [NC_065572.1]")
dev.off()

pdf("LG4_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065573.1"],M$X10_num_N[M$X1_usercol=="NC_065573.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG4 [NC_065573.1]")
dev.off()

pdf("LG5_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065574.1"],M$X10_num_N[M$X1_usercol=="NC_065574.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG5 [NC_065574.1]")
dev.off()

pdf("LG6_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065575.1"],M$X10_num_N[M$X1_usercol=="NC_065575.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG6 [NC_065575.1]")
dev.off()

pdf("LG7_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065576.1"],M$X10_num_N[M$X1_usercol=="NC_065576.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG7 [NC_065576.1]")
dev.off()

pdf("LG8_A_N_content.pdf",width=20)
plot(M$X2_usercol[M$X1_usercol=="NC_065577.1"],M$X10_num_N[M$X1_usercol=="NC_065577.1"],ylab="Number of N's",xlab="Positions along chromosome [50 Kb windows]",main="LG8 [NC_065577.1]")
dev.off()
