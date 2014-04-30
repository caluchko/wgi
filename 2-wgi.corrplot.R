library(corrplot)
wbcor <- cor(df.2012[2:7], use = "pairwise.complete.obs")
col1 <- colorRampPalette(c("#BB4444","#EE9988","#FFFFFF",
                           "#77AADD", "#4477AA"), bias = .5)		
corrplot (wbcor, method = "shade", shade.col = NA,
          tl.col = "black", tl.cex = .8, tl.srt = 90,
          addCoef.col = "black",
          order = "AOE", type = "lower", diag = FALSE,
          cl.pos = "n", col = col1(200),
          rect.lwd = 5, mar = c(4,3,2,1) + .1
        )
mtext("Correlation Matrix of Worldwide Governance Indicators (2012)",
      SOUTH<-1, line=1, adj=.4, cex=1)