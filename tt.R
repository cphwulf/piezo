install.packages("serial")
library(serial)

conarduiona <- serialConnection(
  name = "mytest",
  port = "com3",
  mode = "9600,n,8,1",
  buffering = "none",
  newline = 0,
  eof = "",
  translation = "auto",
  handshake = "none",
  buffersize = 4096
)

open(conarduiona)

stoptime = Sys.time()+20;

start <- while (Sys.time() < stoptime) {
  tempvar = read.serialConnection(conarduiona)
  print(tempvar)
  Sys.sleep(1)
}
start

close(conarduiona)
