# ================================================================
# barra_padrao.R
# Tema padrão para gráficos de barras
# ================================================================

library(ggplot2)
library(ggtext)

#' Tema Padrão para Gráficos de Barras
#'
#' Aplica um tema padronizado para gráficos de barras usando ggplot2.
#' Mantém: título, subtítulo, rodapé com Fonte/Nota, legenda horizontal,
#' rótulos no eixo Y dentro do gráfico e cores padronizadas.
#'
#' @param title_size Tamanho do título principal (default = 20)
#' @param subtitle_size Tamanho do subtítulo (default = 16)
#' @param caption_size Tamanho do texto do rodapé (Fonte e Nota) (default = 10)
#' @param axis_y_hjust Alinhamento horizontal dos valores do eixo Y (default = 1)
#' @param axis_y_vjust Alinhamento vertical dos valores do eixo Y (default = -0.75)
#' @param axis_y_margin_r Margem direita dos valores do eixo Y (default = -15)
#' @param fill_colors Vetor de cores das barras (default = paleta default)
#'
#' @return Uma lista de elementos ggplot2 que pode ser adicionada a qualquer gráfico de barras.
#' @examples
#' ggplot(dados, aes(x = categoria, y = valor, fill = grupo)) +
#'   geom_col(position = "dodge", width = 0.7) +
#'   labs(title = "Exemplo", x = NULL, y = NULL, fill = NULL, caption = caption_text) +
#'   theme_barra_padrao()
theme_barra_padrao <- function(
  title_size = 20,
  subtitle_size = 16,
  caption_size = 10,
  axis_y_hjust = 1,
  axis_y_vjust = -0.75,
  axis_y_margin_r = -15,
  fill_colors = c("#00457C", "#E06F3E", "#6E6E6E", "#D9D9D9")
) {
  list(
    scale_fill_manual(values = fill_colors),
    
    theme(
      plot.title = element_text(size = title_size, face = "bold", hjust = 0),
      plot.subtitle = element_text(size = subtitle_size, hjust = 0, margin = margin(b = 5)),
      plot.caption = element_markdown(size = caption_size, color = "grey40", hjust = 0, margin = margin(t = 15)),
      
      # Legenda horizontal acima do gráfico
      legend.position = "top",
      legend.direction = "horizontal",
      legend.justification = "left",
      legend.background = element_blank(),
      legend.key = element_blank(),
      legend.margin = margin(0, 0, 0, 0),
      legend.box.margin = margin(0, 0, 0, 0),
      
      # Eixo Y dentro do gráfico
      axis.text.y = element_text(hjust = axis_y_hjust, vjust = axis_y_vjust, margin = margin(r = axis_y_margin_r)),
      axis.ticks.y = element_blank(),
      
      # Título do eixo X centralizado
      axis.title.x = element_text(hjust = 0.5),
      
      # Linha do eixo X
      axis.line.x = element_line(linewidth = 0.25),
      
      # Fundo e grids
      panel.background = element_rect(fill = "white"),
      panel.grid = element_blank(),
      panel.grid.major.y = element_line(color = "lightgray", size = 0.5)
    )
  )
}