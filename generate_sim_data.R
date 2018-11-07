library(MASS)

#####################################################
set.seed(0)
sim.num <- 4
group.cnt <- 3
#group.size <- c(100, 100, 100, 100)
sample.size <- 2000
feature.cnt <- 5
task.cnt <- 2
#dists <- c("mvrnorm(group.size[1], mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[2], rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[3], rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[4], rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

dists <- c("mvrnorm(sample.size, mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

x <- NULL
x <- cbind(x, mvrnorm(sample.size, rep(1, feature.cnt), seq(1, 2, length= feature.cnt) %*% t(seq(1, 2, length= feature.cnt))), mvrnorm(sample.size, rep(2,feature.cnt), seq(2, 3, length= feature.cnt) %*% t(seq(2, 3, length= feature.cnt))), mvrnorm(sample.size, rep(3, feature.cnt), seq(.2, .5, length= feature.cnt) %*% t(seq(.2, .5, length= feature.cnt))))

ys <- NULL
ys <- cbind(ys, rowMeans(x[, seq(1, 5)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(2, 3, length= task.cnt) %*% t(seq(2, 3, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(6, 10)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(11, 15)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))

y <- ys

write.table(x, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_features.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
write.table(y, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_responses.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
#####################################################
#####################################################
set.seed(0)
sim.num <- 3
group.cnt <- 3
#group.size <- c(100, 100, 100, 100)
sample.size <- 400
feature.cnt <- 5
task.cnt <- 2
#dists <- c("mvrnorm(group.size[1], mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[2], rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[3], rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[4], rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

dists <- c("mvrnorm(sample.size, mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

x <- NULL
x <- cbind(x, mvrnorm(sample.size, rep(1, feature.cnt), seq(1, 2, length= feature.cnt) %*% t(seq(1, 2, length= feature.cnt))), mvrnorm(sample.size, rep(2,feature.cnt), seq(2, 3, length= feature.cnt) %*% t(seq(2, 3, length= feature.cnt))), mvrnorm(sample.size, rep(3, feature.cnt), seq(.2, .5, length= feature.cnt) %*% t(seq(.2, .5, length= feature.cnt))))

ys <- NULL
ys <- cbind(ys, rowMeans(x[, seq(1, 5)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(2, 3, length= task.cnt) %*% t(seq(2, 3, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(6, 10)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(11, 15)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))

y <- ys

write.table(x, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_features.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
write.table(y, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_responses.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
#####################################################

set.seed(0)
sim.num <- 2
group.cnt <- 4
#group.size <- c(100, 100, 100, 100)
sample.size <- 400
feature.cnt <- 5
task.cnt <- 2
#dists <- c("mvrnorm(group.size[1], mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[2], rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[3], rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[4], rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

dists <- c("mvrnorm(sample.size, mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

x <- NULL
x <- cbind(x, mvrnorm(sample.size, mu= rep(0, length= feature.cnt), seq(.1, 2, length= feature.cnt) %*% t(seq(.1, 2, length= feature.cnt))))
x <- cbind(x, mvrnorm(sample.size, rep(1, feature.cnt), seq(1, 2, length= feature.cnt) %*% t(seq(1, 2, length= feature.cnt))), mvrnorm(sample.size, rep(2, feature.cnt), seq(2, 3, length= feature.cnt) %*% t(seq(2, 3, length= feature.cnt))), mvrnorm(sample.size, rep(3, feature.cnt), seq(.2, .5, length= feature.cnt) %*% t(seq(.2, .5, length= feature.cnt))))

ys <- NULL
ys <- cbind(ys, rowMeans(x[, seq(1, 5)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 5, length= task.cnt) %*% t(seq(1, 5, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(6, 10)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(2, 4, length= task.cnt) %*% t(seq(2, 4, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(11, 15)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(3, 4, length= task.cnt) %*% t(seq(3, 4, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(16, 20)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(2, 3, length= task.cnt) %*% t(seq(2, 4, length= task.cnt))))

y <- ys

write.table(x, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_features.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
write.table(y, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_responses.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
#####################################################

set.seed(0)
sim.num <- 1
group.cnt <- 4
#group.size <- c(100, 100, 100, 100)
sample.size <- 400
feature.cnt <- 5
task.cnt <- 2
#dists <- c("mvrnorm(group.size[1], mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[2], rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[3], rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(group.size[4], rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

dists <- c("mvrnorm(sample.size, mu= rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(10, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(20, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))", "mvrnorm(sample.size, rep(4, feature.cnt), matrix(.5, ncol= feature.cnt, nrow= feature.cnt))")

x <- NULL
x <- cbind(x, mvrnorm(sample.size, mu= rep(0, length= feature.cnt), seq(.1, 2, length= feature.cnt) %*% t(seq(.1, 2, length= feature.cnt))))
x <- cbind(x, mvrnorm(sample.size, rep(10, feature.cnt), seq(1, 2, length= feature.cnt) %*% t(seq(1, 2, length= feature.cnt))), mvrnorm(sample.size, rep(20,feature.cnt), seq(2, 3, length= feature.cnt) %*% t(seq(2, 3, length= feature.cnt))), mvrnorm(sample.size, rep(4, feature.cnt), seq(.2, .5, length= feature.cnt) %*% t(seq(.2, .5, length= feature.cnt))))

ys <- NULL
ys <- cbind(ys, rowMeans(x[, seq(1, 5)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(6, 10)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(2, 3, length= task.cnt) %*% t(seq(2, 3, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(11, 15)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))
ys <- cbind(ys, rowMeans(x[, seq(16, 20)]) + mvrnorm(sample.size, rep(0, task.cnt), seq(1, 2, length= task.cnt) %*% t(seq(1, 2, length= task.cnt))))

y <- ys

write.table(x, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_features.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)
write.table(y, file= paste("/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim", sim.num,"_responses.txt", sep= ""), quote= F, sep= "\t", col.names= F, row.names= F)

#####################################################
if(F){
  ys <-  c("1 + rowMeans(x) * mvrnorm(group.size[1], rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "2 + rowMeans(x) * mvrnorm(group.size[2], rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "3 + rowMeans(x) * mvrnorm(group.size[3], rep(0, feature.cnt), matrix(1, ncol= feature.cnt, nrow= feature.cnt))", "4 + rowMeans(x) * mvrnorm(group.size[4], rep(0, feature.cnt), matrix(2, ncol= feature.cnt, nrow= feature.cnt))")

  g <- list()
  for(i in seq(group.cnt)){
    x <- eval(parse(text= dists[i]))
    g[[i]] <- list(x= x, y= eval(parse(text= ys[i])))
  }
  plot(c(rowMeans(g[[1]]$x), rowMeans(g[[2]]$x), rowMeans(g[[3]]$x), rowMeans(g[[4]]$x)), col= rep(c("red", "blue", "green" ,"black"), each= group.size[1]))
  plot(c(g[[1]]$y, g[[2]]$y, g[[3]]$y, g[[4]]$y))

  x <- rbind(g[[1]]$x, g[[2]]$x, g[[3]]$x, g[[4]]$x)
  y <- rbind(g[[1]]$y, g[[2]]$y, g[[3]]$y, g[[4]]$y)
  write.table(x, file= "/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim1_features.txt", quote= F, sep= "\t", col.names= F, row.names= F)
  write.table(y, file= "/MMCI/MS/ExpRegulation/work/data/singleCell/HepG2/G_MTL/monocle/sim1_responses.txt", quote= F, sep= "\t", col.names= F, row.names= F)
}
