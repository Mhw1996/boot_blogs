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
      if(result.affectedRows>0){
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
  //将博客中的web内容提交到数据库
  router.post("/web",(req,res)=>{
    var obj=req.body;
    // console.log(obj)
    var $title=obj.title;
    var $img_url=obj.img_url;
    var $content=obj.content;
    var $types=obj.types;
    var $nowtime=new Date();
    var $month=$nowtime.getMonth()+1
    var $year=$nowtime.getFullYear()
    var $day=$nowtime.getDate()
    var $Hours=$nowtime.getHours()
    var $minute=$nowtime.getMinutes()
    var $second=$nowtime.getSeconds()
    console.log(`这是：${$year}年${$month}月${$day}天${$Hours}时${$minute}分${$second}秒`)
    var $week=$nowtime.getDay();
      var sql=`INSERT INTO web value(?,?,?,?,?,?,?,?,?,?,?,?)`
      pool.query(sql,[null,$title,$content,$types,$img_url,$week,$year,$month,$day,$Hours,$minute,$second],(err,result)=>{
      console.log(result)
      if(err) throw err;
      if(result.affectedRows>0){
        res.end("1")
      }else{
        res.send("0")
      }
    })
  });
  //从数据库中web表中将存储的数据发送到web.html页面
  router.get("/web_Rootback",(req,res)=>{
    var sql=`select * from web`;
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
  //发表文章，将数据插入到article表中
  router.post("/article",(req,res)=>{
    var obj=req.body;
    // console.log(obj)
    var $title=obj.title;
    var $header=obj.header;
    var $c_img=obj.c_img;
    var $body=obj.body;
    var $c_img1=obj.c_img1;
    var $footer=obj.footer;
    var $c_img2=obj.c_img2;
    var $type=obj.type;
    var $nowtime=new Date();
    var $month=$nowtime.getMonth()+1
    var $year=$nowtime.getFullYear()
    var $day=$nowtime.getDate()
    var $Hours=$nowtime.getHours()
    var $minute=$nowtime.getMinutes()
    var $second=$nowtime.getSeconds()
    var $week=$nowtime.getDay()
    var $num=100;
    console.log(`这是：${$year}年${$month}月${$day}天${$Hours}时${$minute}分${$second}秒加载${$num}尾部：${$footer}`)
      var sql=`INSERT INTO article value(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)`
      pool.query(sql,[null,$title,$header,$body,$footer,$c_img,$type,$num,$c_img1,$c_img2,$year,$month,$day,$Hours,$minute,$second,$week],(err,result)=>{
      console.log(result)
      if(err) throw err;
      if(result.affectedRows>0){
        res.end("1")
      }else{
        res.send("0")
      }
    })
  });
    //从数据库中aritcle表中将存储的数据发送到article.html页面
  router.get("/get_article",(req,res)=>{
    var $cid=req.query.cid;
    var sql=`select * from article where cid=?`;
    pool.query(sql,[$cid],(err,result)=>{
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