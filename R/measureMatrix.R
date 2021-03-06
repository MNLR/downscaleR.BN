#' @export
measureMatrix <- function( data , measure = "phiCoef", mark.diagonal.na = TRUE, ... ){
  if (class(data) == "measureMatrix"){
    return(data)
  }
  else{
    if (is.matrix(data) | is.data.frame(data)){
      data <- list(Data = data)
    }
    mS <- matrix(0, nrow = ncol(data$Data), ncol = ncol(data$Data))
    for (i in 1:nrow(mS)){
      mS[i, ] <- measureVector(data = data, station = i, measure = measure, ...)
    }
    if (mark.diagonal.na){
      for (i in 1:nrow(mS)){
        mS[i,i] <- NA
      }
    }
    colnames(mS) <- data$Metadata$station_id
    rownames(mS) <- data$Metadata$station_id
    class(mS) <- "measureMatrix"
    return(mS)
  }
}
