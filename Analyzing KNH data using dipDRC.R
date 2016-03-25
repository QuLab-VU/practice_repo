# Should work with the master branch of dipDRC git repo
# may need to change line below to specify location of dipDRC.r
source('dipDRC.r',chdir=TRUE)

load('ResponseData2016-10.Rdata')	# object named 'Lizard'

RespData <- Lizard
colnames(RespData)	<-	tolower(colnames(RespData))

dev.new(width=10,height=8)
par(mfrow=c(4,5))

dip.m <- dipDRC(RespData, type='confidence',ylim=c(-0.02,0.05), 
	yName='count', var=c('cell.line','treatment','conc','date'))

names(dip.m)
dip.m[[1]]