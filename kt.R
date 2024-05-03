TH3  --- EX3

labels<-c("oil","coal","gas","renewal energies","nuclear energy","others")
 rates<-c(33.1,27,21.1,12.8,5.8,0.2)
 mycol <- c("lavender", "lightblue", "mistyrose", "cornsilk","orange3","lightcyan")

barplot(rates, col= mycol, names.arg= rep(1:6),cex.name= 1,width=2, ylim= c(0,40))
par(mfrow= c(1,2))

legend("left", legend= labels, horiz= FALSE, fill = mycol, cex= 1)
