x <- seq(-4, 4, 0.01)*6 + 175 # Algunos posibles valores que puede tomar la v.a. X (mínimo: mu-4sigma, máximo: mu+4sigma)
y <- dnorm(x, mean = 175, sd = 6) # Valores correspondientes de la función de densidad de probabilidad

par(mfrow = c(2, 2))

# Observemos el área que corresponde a esta probabilidad en la siguiente gráfica en color rojo

plot(x, y, type = "l", xlab = "", ylab = "")
title(main = "Densidad de Probabilidad Normal", sub = expression(paste(mu == 175, " y ", sigma == 6)))
polygon(c(min(x), x[x<=180], 180), c(0, y[x<=180], 0), col="red")
# Para obtener P(X <= 165), es decir, la probabilidad de que X tome un valor menor o igual a 165, ejecutamos

# Observemos el área que corresponde a esta probabilidad en la siguiente gráfica en color amarillo
plot(x, y, type = "l", xlab = "", ylab = "")
title(main = "Densidad de Probabilidad Normal", sub = expression(paste(mu == 175, " y ", sigma == 6)))
polygon(c(min(x), x[x<=165], 165), c(0, y[x<=165], 0), col="yellow")
# Para obtener P(165 <= X <= 180), es decir, la probabilidad de que X tome un valor mayor o igual a 165 y menor o igual a 180, debemos correr

# Observemos el área que corresponde a esta probabilidad en la siguiente gráfica en color verde
plot(x, y, type = "l", xlab="", ylab="")
title(main = "Densidad de Probabilidad Normal", sub = expression(paste(mu == 175, " y ", sigma == 6)))
polygon(c(165, x[x>=165 & x<=180], 180), c(0, y[x>=165 & x<=180], 0), col="green")

# Para obtener P(X >= 182), es decir, la probabilidad de que X tome un valor mayor o igual a 182, una alternativa es

# Observemos el área que corresponde a esta probabilidad en la siguiente gráfica en color azul

plot(x, y, type = "l", xlab="", ylab="")
title(main = "Densidad de Probabilidad Normal", sub = expression(paste(mu == 175, " y ", sigma == 6)))
polygon(c(182, x[x>=182], max(x)), c(0, y[x>=182], 0), col="blue")

dev.off() # Para mostrar solo una gráfica
