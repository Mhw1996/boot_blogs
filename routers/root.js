const pool=require("../pool.js");
//引入express;
const express=require("express");
//创建空的路由器
const router=express.Router();
  //将博客中的日记提交的数据库中
  router.post("/root_01",(req,res)=>{
    var obj=req.body;
    // console.log(obj)
    var $title=obj.title;
    var $img=obj.img;
    var $content=obj.content;
    var $nowtime=new Date();
    var $month=$nowtime.getMonth()+1
    var $year=$nowtime.getFullYear()
    var $day=$nowtime.getDate()
    var $Hours=$nowtime.getHours()
    var $minute=$nowtime.getMinutes()
    var $second=$nowtime.getSeconds()
    console.log(`这是：${$year}年${$month}月${$day}天${$Hours}时${$minute}分${$second}秒`)
    var $week=$nowtime.getDay();
      var sql=`INSERT INTO datas value(?,?,?,?,?,?,?,?,?,?,?)`
      pool.query(sql,[null,$title,$content,$img,$week,$year,$month,$day,$Hours,$minute, $second],(err,result)=>{
      console.log(result)
      if(err) throw err;
      if(result.affectedRows>1){
        res.end("1")
      }else{
        res.send("0")
      }
    })
  });
  //从数据库中取出数据
  router.get("/Rootback",(req,res)=>{
    var sql=`select * from datas`;
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