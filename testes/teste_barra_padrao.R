# ================================================================
# teste_barra_padrao.R
# Testes da biblioteca barra_padrao.R com 2 e 4 categorias
# ================================================================

# Carregar a biblioteca
source("codigos/barra_padrao.R")

library(ggplot2)
library(ggtext)

# ================================================================
# 1. Teste com 2 categorias
# ================================================================

dados2 <- data.frame(
  categoria = c("A", "B"),
  valor = c(12, 18)
)

# Rodapé padrão
caption_text <- "**Fonte:** Simulação própria  \n**Nota:** Valores gerados aleatoriamente"

ggplot(dados2, aes(x = categoria, y = valor, fill = categoria)) +
  geom_col(width = 0.6) +
  labs(
    title = "Vendas por Categoria",
    subtitle = "Exemplo com 2 categorias",
    x = NULL, y = NULL,
    fill = NULL,
    caption = caption_text
  ) +
  theme_barra_padrao()


# ================================================================
# 2. Teste com 4 categorias
# ================================================================

dados5 <- data.frame(
  categoria = c("A", "B", "C", "D"),
  valor = c(10, 15, 12, 18)
)

# Rodapé padrão
caption_text <- "**Fonte:** Simulação própria  \n**Nota:** Valores gerados aleatoriamente"

ggplot(dados5, aes(x = categoria, y = valor, fill = categoria)) +
  geom_col(width = 0.7) +
  labs(
    title = "Vendas por Categoria",
    subtitle = "Exemplo com 4 categorias",
    x = NULL, y = NULL,
    fill = NULL,
    caption = caption_text
  ) +
  theme_barra_padrao()
