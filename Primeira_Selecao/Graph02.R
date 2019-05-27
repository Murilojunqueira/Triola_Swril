# Grafico 02

mean.x <- 100 
sd.x <- 15
max.x <- NULL
min.x <- 91

funcShaded <- function(x, mean.x, sd.x, max.x, min.x) {
  y <- dnorm(x, mean = mean.x, sd = sd.x)
  # y[x < 0 | x > 1] <- NA
  if(!is.null(min.x)) {y[x < min.x] <- NA}
  if(!is.null(max.x)) {y[x > max.x] <- NA}
  return(y)
}

breaks <- c(max.x, min.x)

Normal.Q1 <- ggplot(data.frame(x = c(mean.x-3*sd.x, mean.x+3*sd.x)), aes(x = x)) +
  stat_function(fun = dnorm, args = list(mean.x, sd.x), 
                size = 1.5, colour = "blue") +
  scale_x_continuous(name = "Quoeficiente de Inteligencia (QI)", breaks = breaks) +
  scale_y_continuous(name = "P(x)") +
  ggtitle("Grafico 02 - Funcao de Probabilidade Normal (QI)", subtitle = "Media = 100 e desvio-padrao = 15") + 
  theme_classic() + 
  theme(axis.line = element_line(size=1, colour = "black"),
        axis.text.x = element_text(size = 14, face = "bold", colour = "black"),
        plot.title = element_text(hjust = 0.5),
        plot.subtitle = element_text(hjust = 0.5)) + 
  stat_function(fun=funcShaded, args = list(mean.x, sd.x, max.x, min.x),
                geom="area", fill="green", alpha=0.2)

rm(funcShaded, mean.x, sd.x, max.x, min.x, breaks)
plot(Normal.Q1)
