//链接数据库；
const pool=require("../pool.js");
//引入express;
const express=require("express");
//创建空的路由器
const router=express.Router();
//注册；
router.post("/sigin_01",(req,res)=>{
	var obj=req.body;
	var sql=`INSERT INTO blog_use SET ?`
	pool.query(sql,[obj],(err,result)=>{
		if(err) throw err;
		//console.log(result)
		if(result.affectedRows>0){
			res.send("1");
		}else{
			res.send("0")
		};
	});
});
//登录
router.post("/login",(req,res)=>{
	var obj=req.body;
	var $email=obj.email;
	var $upwd=obj.upwd;
	//console.log($email,$upwd)
	var sql="SELECT *FROM blog_use WHERE email=? AND upwd=?";
	pool.query(sql,[$email,$upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send("1")//登录成功
		}else{
			res.send("0")//请注册，或密码错误
		}
	})
});

//将用户留言信息插入到数据库中！
	router.post("/user_info",(req,res)=>{
		var $words=req.body.words;
		var $nowtime=new Date();
		// console.log($nowtime)
		var $week=$nowtime.getDay();
		// console.log($week)
		var sql=`INSERT INTO use_info value(?,?,?,?)`
		pool.query(sql,[null,$words,$nowtime,$week],(err,result)=>{
			console.log(result)
			if(err) throw err;
			if(result.affectedRows>0){
				res.send("1")
			}else{
				res.send("0")
			}
		})
	})
//从数据库中拿到对应的用户的留言信息
router.get("/backinfo",(req,res)=>{
	var sql=`select * from use_info`;
	pool.query(sql,[],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send(result)
		// console.log(result)
		}else{
			res.send("0")
		}
	})
})
//	回复用户信息！
router.post("/ownback",(req,res)=>{
	var $words=req.body.words;
	// console.log($nowtime)
	var sql=`INSERT INTO ownback value(?,?)`
	pool.query(sql,[null,$words],(err,result)=>{
		console.log(result)
		if(err) throw err;
		if(result.affectedRows>0){
			res.send("1")
		}else{
			res.send("0")
		}
	})
})
//从数据库中拿到将要回复用户的信息！
router.get("/ownbackinfo",(req,res)=>{
	var sql=`select * from ownback`;
	pool.query(sql,[],(err,result)=>{
		if(err)throw err;
		if(result.length>0){
			res.send(result)
		// console.log(result)
		}else{
			res.send("0")
		}
	})
})
//导出路由器；
module.exports=router;