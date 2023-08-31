regseason <- read.csv("RSmastersheet.csv", header=TRUE)

regseason$TOT.PTS <- regseason$GP * regseason$PTS


# summary(regseason)


#sum(regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "15-16", ]$TOT.POSS)
#summary(regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "15-16", ])
#print(regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "15-16" & regseason$TOT.POSS > 50 & order(regseason$EFG.,decreasing="TRUE"), ])
df <- regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "15-16" & regseason$TOT.POSS > 50, ]
df4 <- regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "19-20" & regseason$TOT.POSS > 50, ]
print(df4[order(df4$EFG.), ])
df5 <- regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "20-21" & regseason$TOT.POSS > 50, ]
print(df5[order(df5$EFG.), ])
df6 <- regseason[regseason$PLAYTYPE == "P&R Roll Man" & regseason$YEAR == "21-22" & regseason$TOT.POSS > 50, ]
print(df6[order(df6$EFG.), ])
