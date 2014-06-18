simple <- function(){
    m=glm(value~altitude+loc,data=longdata)
    m
}

seasonal <- function(measured, predicted){
    measured$DAY = 2*pi*yday(measured$date)/365
    predicted$DAY = 2*pi*yday(predicted$date)/365
    model = glm(value~altitude+loc+sin(DAY)+cos(DAY),data=measured)
    preds = predict(model, predicted)
    list(model=model, predictions=preds)
}
