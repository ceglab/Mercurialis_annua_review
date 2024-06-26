######################################
#
# BUSCO summary figure
# @version 4.0.0
# @since BUSCO 2.0.0
# 
# Copyright (c) 2015-2024, Evgeny Zdobnov (ez@ezlab.org)
# Licensed under the MIT license. See LICENSE.md file.
#
######################################

# Load the required libraries
library(ggplot2)
library("grid")

# !!! CONFIGURE YOUR PLOT HERE !!! 
# Output
my_output <- paste("./","busco_figure.png",sep="/") 
my_width <- 20
my_height <- 15
my_unit <- "cm"

# Colors
my_colors <- c("#EEDDAA", "#2DC7CC", "#D6E890", "#ED8E98")
# Bar height ratio
my_bar_height <- 0.75

# Legend
my_title <- "BUSCO Assessment Results"

# Font
my_family <- "sans"
my_size_ratio <- 1

# !!! SEE YOUR DATA HERE !!! 
# Your data as generated by python, remove or add more
my_species <- c('Mallotus_repandus_GCA_949671775', 'Mallotus_repandus_GCA_949671775', 'Mallotus_repandus_GCA_949671775', 'Mallotus_repandus_GCA_949671775', 'Mallotus_japonicus_GCA_949634005', 'Mallotus_japonicus_GCA_949634005', 'Mallotus_japonicus_GCA_949634005', 'Mallotus_japonicus_GCA_949634005', 'Mallotus_nudiflorus_GCA_947683625', 'Mallotus_nudiflorus_GCA_947683625', 'Mallotus_nudiflorus_GCA_947683625', 'Mallotus_nudiflorus_GCA_947683625', 'Ricinus_communis_GCF_000151685', 'Ricinus_communis_GCF_000151685', 'Ricinus_communis_GCF_000151685', 'Ricinus_communis_GCF_000151685', 'Mercurialis_annua_GCF_937616625', 'Mercurialis_annua_GCF_937616625', 'Mercurialis_annua_GCF_937616625', 'Mercurialis_annua_GCF_937616625', 'Mercurialis_annua_GCA_937609235', 'Mercurialis_annua_GCA_937609235', 'Mercurialis_annua_GCA_937609235', 'Mercurialis_annua_GCA_937609235', 'Ricinus_communis_GCA_019578655', 'Ricinus_communis_GCA_019578655', 'Ricinus_communis_GCA_019578655', 'Ricinus_communis_GCA_019578655', 'Mercurialis_annua_GCA_937616625', 'Mercurialis_annua_GCA_937616625', 'Mercurialis_annua_GCA_937616625', 'Mercurialis_annua_GCA_937616625', 'Macaranga_tanarius_GCA_949673435', 'Macaranga_tanarius_GCA_949673435', 'Macaranga_tanarius_GCA_949673435', 'Macaranga_tanarius_GCA_949673435', 'Mercurialis_annua_GCA_947675665', 'Mercurialis_annua_GCA_947675665', 'Mercurialis_annua_GCA_947675665', 'Mercurialis_annua_GCA_947675665', 'Acalypha_hispida_GCA_948193465', 'Acalypha_hispida_GCA_948193465', 'Acalypha_hispida_GCA_948193465', 'Acalypha_hispida_GCA_948193465', 'Ricinus_communis_GCF_019578655', 'Ricinus_communis_GCF_019578655', 'Ricinus_communis_GCF_019578655', 'Ricinus_communis_GCF_019578655', 'Ricinus_communis_GCA_000151685', 'Ricinus_communis_GCA_000151685', 'Ricinus_communis_GCA_000151685', 'Ricinus_communis_GCA_000151685')
my_species <- factor(my_species)
my_species <- factor(my_species,levels(my_species)[c(length(levels(my_species)):1)]) # reorder your species here just by changing the values in the vector :
my_percentage <- c(92.2, 1.4, 4.7, 1.7, 87.6, 2.1, 7.1, 3.2, 85.6, 13.0, 0.9, 0.5, 96.2, 0.7, 2.1, 1.0, 96.0, 2.1, 0.9, 1.0, 31.9, 1.1, 0.9, 66.1, 97.6, 0.9, 0.9, 0.6, 96.0, 2.1, 0.9, 1.0, 88.3, 1.1, 7.6, 3.0, 56.1, 41.9, 0.9, 1.1, 24.6, 9.1, 32.8, 33.5, 97.6, 0.9, 0.9, 0.6, 96.2, 0.7, 2.1, 1.0)
my_values <- c(2145, 32, 109, 40, 2038, 50, 165, 73, 1992, 302, 20, 12, 2238, 16, 49, 23, 2232, 48, 20, 26, 741, 26, 22, 1537, 2270, 21, 21, 14, 2232, 48, 20, 26, 2055, 25, 177, 69, 1304, 975, 22, 25, 572, 211, 762, 781, 2270, 21, 21, 14, 2238, 16, 49, 23)

######################################
######################################
######################################
# Code to produce the graph
labsize = 1
if (length(levels(my_species)) > 10){
 labsize = 0.66
}
print("Plotting the figure ...")
category <- c(rep(c("S","D","F","M"),c(1)))
category <-factor(category)
category = factor(category,levels(category)[c(4,1,2,3)])
df = data.frame(my_species,my_percentage,my_values,category)

figure <- ggplot() + 
  
  geom_bar(aes(y = my_percentage, x = my_species, fill = category), position = position_stack(reverse = TRUE), data = df, stat="identity", width=my_bar_height) + 
  coord_flip() + 
  theme_gray(base_size = 8) + 
  scale_y_continuous(labels = c("0","20","40","60","80","100"), breaks = c(0,20,40,60,80,100)) + 
  scale_fill_manual(values = my_colors,labels =c(" Complete (C) and single-copy (S)  ",
                                                 " Complete (C) and duplicated (D)",
                                                 " Fragmented (F)  ",
                                                 " Missing (M)")) +   
  ggtitle(my_title) + 
  xlab("") + 
  ylab("\n%BUSCOs") + 

  theme(plot.title = element_text(family=my_family, hjust=0.5, colour = "black", size = rel(2.2)*my_size_ratio, face = "bold")) + 
  theme(legend.position="top",legend.title = element_blank()) + 
  theme(legend.text = element_text(family=my_family, size = rel(1.2)*my_size_ratio)) + 
  theme(panel.background = element_rect(color="#FFFFFF", fill="white")) + 
  theme(panel.grid.minor = element_blank()) + 
  theme(panel.grid.major = element_blank()) +
  theme(axis.text.y = element_text(family=my_family, colour = "black", size = rel(1.66)*my_size_ratio)) + 
  theme(axis.text.x = element_text(family=my_family, colour = "black", size = rel(1.66)*my_size_ratio)) + 
  theme(axis.line = element_line(size=1*my_size_ratio, colour = "black")) + 
  theme(axis.ticks.length = unit(.85, "cm")) + 
  theme(axis.ticks.y = element_line(colour="white", size = 0)) + 
  theme(axis.ticks.x = element_line(colour="#222222")) + 
  theme(axis.ticks.length = unit(0.4, "cm")) + 
  theme(axis.title.x = element_text(family=my_family, size=rel(1.2)*my_size_ratio)) + 
  
  guides(fill = guide_legend(override.aes = list(colour = NULL))) +
  guides(fill=guide_legend(nrow=2,byrow=TRUE))
  
  for(i in rev(c(1:length(levels(my_species))))){
    detailed_values <- my_values[my_species==my_species[my_species==levels(my_species)[i]]]
    total_buscos <- sum(detailed_values)
    figure <- figure + 
    annotate("text", label=paste("C:", detailed_values[1] + detailed_values[2], " [S:", detailed_values[1], ", D:", detailed_values[2], "], F:", detailed_values[3], ", M:", detailed_values[4], ", n:", total_buscos, sep=""), 
             y=3, x = i, size = labsize*4*my_size_ratio, colour = "black", hjust=0, family=my_family)
  }
  
ggsave(figure, file=my_output, width = my_width, height = my_height, unit = my_unit)
print("Done")
