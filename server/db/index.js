/**
 * 关于数据库的所有操作
 * 增
 * 删
 * 改
 * 查
 */


// module.exports.base = (sql,Params) => {
//   // console.log(sql)
//   return new Promise((resolve, reject) => {
//     //引入MySQL
//     const mysql = require('mysql');
//     //连接数据库
//     const connection = mysql.createConnection({
//       host     : 'localhost',
//       user     : 'root',
//       password : '',
//       database : 'bph'
//     });
     
//     connection.connect();
//     // let sql = 'SELECT * FROM images'
//     if(Params){
//         connection.query(sql,Params,(err, result)=>{
//           // console.log(111)
//           if(err){
//             reject({
//               code:0,
//               msg:'查询失败',
//               data:err
//             });
//           }else{
//             resolve({
//               code:1,
//               msg:'success',
//               data:result
//             });
//           }
//       });
//     }else{
//         connection.query(sql,(err, result)=>{
//           console.log(result)
//           if(err){
//             reject({
//               code:0,
//               msg:'查询失败',
//               data:err
//             });
//           }else{
//             resolve({
//               code:1,
//               msg:'success',
//               data:result
//             });
//           }
//       });
//     }
    
//     connection.end();
//   });
// }

exports.find = sql => {
  // console.log(sql)
  return new Promise((resolve, reject) => {
    //引入MySQL
    const mysql = require('mysql');
    //连接数据库
    const connection = mysql.createConnection({
      host     : 'localhost',
      user     : 'root',
      password : '',
      database : 'bph'
    });
     
    connection.connect();

        connection.query(sql,(err, result)=>{
          // console.log(result)
          if(err){
            reject({
              code:0,
              msg:'查询失败',
              data:err
            });
          }else{
            resolve({
              code:1,
              msg:'success',
              data:result
            });
          }
      });

    
    connection.end();
  });
}


exports.add = (sql,Params) => {
  // console.log(sql)
  return new Promise((resolve, reject) => {
    //引入MySQL
    const mysql = require('mysql');
    //连接数据库
    const connection = mysql.createConnection({
      host     : 'localhost',
      user     : 'root',
      password : '',
      database : 'bph'
    });
     
    connection.connect();

        connection.query(sql,Params,(err, result)=>{
          // console.log(111)
          if(err){
            reject({
              code:0,
              msg:'查询失败',
              data:err
            });
          }else{
            resolve({
              code:1,
              msg:'success',
              data:result
            });
          }
      });


    
    connection.end();
  });
}