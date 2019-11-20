var express=require("express");
var empRouters=require("./emp");
var app=express();


app.use(express.json());

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Methods", "GET,POST,PUT,DELETE");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
});


app.use("/employees",empRouters);

app.listen(4444,function(){
    console.log("server started..." + 4444);
})

