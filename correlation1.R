pacmac::p_load(corrplot, magrittr, rio, tidyverse)

df <- import("/StateData1.csv") %>% as_tibble() %>% select(instagram:modernDance) %>% print()

df %>% cor()

df %>% cor() %>% round(2) %>% print()

df %>% cor() %>% corrplot(type = "upper", diag = F, order = "original", tl.col = "black", tl.srt = 45)

df %$% cor.test(instagram, privacy)



