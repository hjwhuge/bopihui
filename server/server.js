// nodejs模块化开发
// 基于配置的开发环境

const express = require('express');
const mysql = require('mysql');
// 引入配置文件
const {port,host,root} = require('./config');

// 引入路由文件
const Router = require('./router');

let app = express();

// 利用中间件实现静态资源服务器
app.use(express.static(root));


// 路由
app.use(Router);

// app.get('/',(req,res)=>{
//     res.send('首页');
// });

// app.get('/home',(req,res)=>{
//     //引入MySQL
// 	const mysql = require('mysql');
// 	//连接数据库
// 	const connection = mysql.createConnection({
// 	  host     : 'localhost',
// 	  user     : 'root',
// 	  password : '',
// 	  database : 'bph'
// 	});
	 
// 	connection.connect();
// 	let sql = 'SELECT * FROM images'
// 	connection.query(sql,(err, result)=>{
//             if(err){
//                 // console.log(err.message);
//               return;
//             }else{
//                 // console.log(result);
//                 res.send(result);
//             }
       
//         });
// 	connection.end();
// });

app.listen(port,()=>{
    console.log(`server is running on http://${host}:${port}`);
})
