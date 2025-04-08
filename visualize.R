library(ggplot2)
data(iris)

ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width,
                        color = Species, shape = Species)) +
  geom_point(size = 3) +                                
  stat_ellipse(type = "norm", linetype = "dashed",     
               linewidth = 1, alpha = 0.6) +
  labs(title = "Ajout d’ellipses par groupe (espèce)",
       x = "Longueur (cm)", y = "Largeur (cm)") +
  theme_minimal(base_size = 14)
