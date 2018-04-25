library(data.table)
library(ggplot2)

sensex90to18 = fread('~/data/nse/25apr2018/SENSEX.csv', skip=1L, header=FALSE,
                     col.names = c('Year', 'Open', 'High', 'Low', 'Close', 'blank'))
sensex90to18[, blank := NULL]
head(sensex90to18)

ggplot(sensex90to18, aes(x=Year, y=Close)) +
  geom_line() +
  geom_point() +
  scale_y_log10() +
  geom_label(label=sensex90to18$Close, size=2, nudge_x = 0.5)

