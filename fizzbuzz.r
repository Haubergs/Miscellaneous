#FizzBuzz in R

fizzBuzz=function(x){
 if(length(x)>1 | !is.integer(x)) stop("input must be a single integer")
 if( !(x%%3L) & !(x%%5L) ){
   "FizzBuzz"
 }else if(!(x%%3L)){
   "Fizz"
 }else if(!(x%%5L)){
  "Buzz"
 }else{
  x
 }
}
sapply(1L:100,fizzBuzz)


wordGame=function(x,tags=c(Fizz=3L,Buzz=5L)){
  if(length(x)>1 | !is.integer(x)) stop("input must be a single integer")
  residuals= x %% tags #creates named vector with residuals of the tags
  if(all(residuals)){
    x
  }else{
    paste(  names(residuals)[!residuals]  ,collapse="")
  }
}

sapply(1:100,wordGame)
