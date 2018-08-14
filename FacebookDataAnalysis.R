library(httpuv)
library(Rfacebook)
library(RColorBrewer)

acess_token = "EAAGbcAm6l30BAOmdpZBSgQlulhWiranw0DYeDEOwLXiT1OHF0iciQX5hIY4fc7Q8zXjd66k6exoEd5MeQYudXJp7N7WdKzyaX2jFNf7bY473cSsE6CS3iJ49p07x0MTfZBECgwZCNvtwiH4qS4F6BOZB1YHiPmZCkZAsepgFVecp5frTHvK8q5YrqoTwTBWcW8lnAiuLvGjAZDZD"
options(RCurlOptions = list(verbose=FALSE, capath=system.file("CurlSLL","cacert.pem",package = "RCurl"),ssl.verifypeer=FALSE))
me<-getUsers("me", token = acess_token)
myFriends<-getFriends(acess_token,simplify = FALSE)
table(me)
pie(table(me$name),col = brewer.pal(9,"Set2"))