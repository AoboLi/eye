//vue_server_00/app.js
//1:复制服务器端模块
//2:引入第三方模块
//  mysql/express/
const mysql = require("mysql");
const express = require("express");
// 2.1引入
const session=require("express-session");
//3:创建连接池
const pool = mysql.createPool({
  host:"127.0.0.1",
  user:"root",
  password:"",
  database:"eye"
});
//4:创建express对象
var server = express(); 
server.use(session(
  {//配置秘钥
  secret:"128位字符串",
  //每次请求是否跟新数据
  resave:false,
  //保存初始化数据
  saveUninitialized:true
}))
//app.js 录一段跨域配置
const cors = require("cors");
server.use(cors({
   origin:["http://127.0.0.1:8080",
   "http://localhost:8080"],
   credentials:true
}))

//5:绑定监听端口 3000
server.listen(3000);
//5.1:指定静态目录.保存图片资源
//    项目中所有图片都需要保存在服务器端
//    重启动服务器 
server.use(express.static("public"));

//6:处理用户登录请求

//功能三:学子商城首页轮播图114~128  14:18
//1:将轮播保存服务器端 
//   public/img/banner1.png
//2:接收客户端发送请求 /imglist

  //3:创建数据发送客户端
  
  

  server.get("/home",(req,res)=>{
    var sql="SELECT*FROM eye_bai";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })
  server.get("/lun",(req,res)=>{
    var sql="SELECT*FROM eye_lun";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })
  server.get("/jiqi",(req,res)=>{
    var sql="SELECT*FROM eye_jiqi";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })
  

  server.get("/anli",(req,res)=>{
    //1:获取二个参数,只要分页功能
    //  pno      页码
    //  pageSize 页大小
    var pno = req.query.pno;
    var pageSize = req.query.pageSize;
    //1.1:为参数设置默认值
    if(!pno){
      pno = 1;
    }
    if(!pageSize){
     pageSize = 5;
    }
    //1.1:创建变量保存发送给客户端数据
    var obj = {code:1};
    //1.2:创建变量保存进度
    var progress = 0;
  
    //2:创建一条sql语句
    var sql =" SELECT id,title";
        sql+=" FROM eye_anli";
        sql+=" LIMIT ?,?";
    //2.1:创建一个变量offset 起始行数
    var offset = (pno-1)*pageSize; 
    //2.2:创建一个变量ps     一页数据
    var ps = parseInt(pageSize);
    //3:执行sql语句
    pool.query(sql,[offset,ps],(err,result)=>{
      if(err)throw err;
      progress+=50;
      obj.data = result;
      //4:获取数据库返回结果
      //5:发送数据+不再发送数据
      //res.send({code:1,data:result});
      if(progress==100){
       res.send(obj);
      }
    })
    //6:计算总页数
    //6.1:创建sql查询总记录数
    var sql =" SELECT count(id) AS c FROM";
        sql+=" eye_anli";
    pool.query(sql,(err,result)=>{
      //result [{id:1,name:"tom"},{id:2}]
      //result [{c:11}]
      //result[0].c
      if(err)throw err;
      progress+=50;
      var pc = Math.ceil(result[0].c/pageSize);
      obj.pageCount = pc;
      if(progress==100){
        res.send(obj)
      }
    });    
    //6.2:计算总页数
  });

  server.get("/zhengjian",(req,res)=>{
    var sql="SELECT*FROM eye_zhengjian";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })

  server.get("/mingyi",(req,res)=>{
    var sql="SELECT*FROM eye_mingyi";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })

  server.get("/yuyue",(req,res)=>{
    var sql="SELECT*FROM eye_yuyue";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })

  server.get("/bingtai",(req,res)=>{
    var sql="SELECT*FROM eye_bingtai";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send({code:1,data:result})
    })
  })
// 注册

server.get('/reg',(req,res)=>{
  var $uname=req.query.username;
  var $tel=req.query.tel;
  
  var sql="INSERT INTO eye_zhuce(username,tel) VALUES(?,?)"
  pool.query(sql,[$uname,$tel],(err,result)=>{
    if(err) throw err;
    //console.log(result);
    if(result.affectedRows>0){
      res.send({code:1,data:result});
    }
  });
});
//留言板
server.get("/report",(req,res)=>{
  var txt=req.query.text;
  var time=req.query.sj;
  var sql="INSERT INTO eye_liuyan VALUES(NULL,?,?)";
  pool.query(sql,[txt,time],(err,result)=>{
    if(err) throw err;
    if(result.affectedRows>0){
      //查询留言板
      var sql="SELECT id,sj,txt FROM eye_liuyan";
      pool.query(sql,(err,result)=>{
        if(err) throw err;
        res.send(result);
      })
    }else{
      res.send({code:-1,msg:"发布失败"})
    }
  })
})