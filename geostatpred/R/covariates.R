unpack_cook = function(rawcook){
    info2d = data.frame(
        name = c("MUSYM", "DEM", "TWI", "X2012", "X2013"),
        type = c("factor","numeric","numeric","numeric","numeric")
        )
    cr = function(r){
        print(r)
        d2d = rawcook$covs2D
        v = as.numeric(d2d[,r])
        m = cbind(d2d$longitude, d2d$latitude, v)
        r = rasterFromXYZ(m)
        projection(r) = study_proj
        r
    }
    rs = lapply(as.character(info2d$name), cr)
    rs
}

    
