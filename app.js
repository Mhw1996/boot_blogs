//创建web服务器；
//引入express；
const express=require("express");
//引入用户路由器；
const userRouter=require("./routers/user.js");
//引入root路由器
const rootRouter=require("./routers/root.js")
//引入body-parser;
const bodyParser=require("body-parser");
var app=express();
app.listen(3000,()=>{
	console.log("创建web服务器成功");
});
//托管静态文件到public下；
app.use(express.static("public"));
app.use(bodyParser.urlencoded({
	extended:false
}));
//使用路由器来管理路由；
//把用户路由器挂载到/user下；
//访问形式 /user/reginter
app.use('/user',userRouter);
//挂载root
app.use('/root',rootRouter)
