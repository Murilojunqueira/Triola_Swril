# Grafico 04

px <- 0.9918
x <- round(qnorm(px, 100, 15))

mean.x <- 100 
sd.x <- 15
max.x <- x
min.x <- NULL

funcShaded <- function(x, mean.x, sd.x, max.x, min.x) {
  y <- dnorm(x, mean = mean.x, sd = sd.x)
  # y[x < 0 | x > 1] <- NA
  if(!is.null(min.x)) {y[x < min.x] <- NA}
  if(!is.null(max.x)) {y[x > max.x] <- NA}
  return(y)
}

yposition <- funcShaded(mean.x-1.3*sd.x, mean.x, sd.x, max.x, min.x)

Normal.Q1 <- ggplot(data.frame(x = c(mean.x-3*sd.x, mean.x+3*sd.x)), aes(x = x)) +
  stat_function(fun = dnorm, args = list(mean.x, sd.x), 
                size = 1.5, colour = "blue") +
  scale_x_continuous(name = "Quoeficiente de Inteligencia (QI)") +
  scale_y_continuous(name = "P(x)") +
  annotate("text", x=mean.x, y=yposition,
           label= px, size = 8) + 
  annotate("text", x=x, y=0,
           label= "x", size = 6) + 
  theme_classic() + 
  theme(axis.line = element_line(size=1, colour = "black"),
        axis.text.x = element_blank(),
        axis.text.y = element_blank(),
        axis.ticks = element_blank(),
        plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5)) +
  ggtitle("Grafico 04 - Funcao de Probabilidade Normal (QI)", subtitle = "Media = 100 e desvio-padrao = 15") + 
  stat_function(fun=funcShaded, args = list(mean.x, sd.x, max.x, min.x),
                geom="area", fill="green", alpha=0.2)



rm(funcShaded, mean.x, sd.x, max.x, min.x, yposition, x, px)
plot(Normal.Q1)
