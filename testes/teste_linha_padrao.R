# ================================================================
# teste_linha_padrao.R
# Testes da biblioteca linha_padrao.R com 1, 2 e 3 séries
# ================================================================

# Carregar a biblioteca
source("codigos/linha_padrao.R")

library(ggplot2)
library(ggtext)

set.seed(123)
n <- 200

# Rodapé padrão
caption_text <- "**Fonte:** Simulação própria  \n**Nota:** Valores gerados aleatoriamente"

# -------------------------------
# 1. Gráfico com 1 série
# -------------------------------
dados1 <- data.frame(
  tempo = 1:n,
  valor = cumsum(rnorm(n, mean = 0, sd = 1)),
  serie = "Série Única"
)

ggplot(dados1, aes(x = tempo, y = valor, color = serie)) +
  geom_line(linewidth = 1) +
  labs(
    title = "Passeio Aleatório - 1 Série",
    subtitle = "Exemplo de série única",
    x = "Tempo",
    y = NULL,
    color = NULL,
    caption = caption_text
  ) +
  theme_linha_padrao()

# -------------------------------
# 2. Gráfico com 2 séries
# -------------------------------
dados2 <- data.frame(
  tempo = rep(1:n, 2),
  valor = c(cumsum(rnorm(n, mean = 0, sd = 1)),
            cumsum(rnorm(n, mean = 0, sd = 1))),
  serie = rep(c("Série A", "Série B"), each = n)
)

ggplot(dados2, aes(x = tempo, y = valor, color = serie)) +
  geom_line(linewidth = 1) +
  labs(
    title = "Passeio Aleatório - 2 Séries",
    subtitle = "Exemplo de duas séries",
    x = "Tempo",
    y = NULL,
    color = NULL,
    caption = caption_text
  ) +
  theme_linha_padrao()

# -------------------------------
# 3. Gráfico com 3 séries
# -------------------------------
dados3 <- data.frame(
  tempo = rep(1:n, 3),
  valor = c(cumsum(rnorm(n, mean = 0, sd = 1)),
            cumsum(rnorm(n, mean = 0, sd = 1)),
            cumsum(rnorm(n, mean = 0, sd = 1))),
  serie = rep(c("Série A", "Série B", "Série C"), each = n)
)

ggplot(dados3, aes(x = tempo, y = valor, color = serie)) +
  geom_line(linewidth = 1) +
  labs(
    title = "Passeio Aleatório - 3 Séries",
    subtitle = "Exemplo de três séries",
    x = "Tempo",
    y = NULL,
    color = NULL,
    caption = caption_text
  ) +
  theme_linha_padrao()