const express = require('express');
let Router = express.Router();
const bodyParser = require('body-parser');
let urlencodedParser = bodyParser.urlencoded({ extended: false });


const db = require('../db');

// 查找商品
Router.get('/',async(req,res)=>{
    let goodId = req.query.id;
    let sql = '';
    // res.send(req.query)
    if(goodId != undefined){
        sql = 'SELECT * FROM cart WHERE id=' + goodId;
    }else{
        sql = 'SELECT * FROM cart';
    }
    var data = await db.find(sql);
    res.send(data);
})

// 删除商品
// db文件夹下的find可以用来删除商品
Router.delete('/',urlencodedParser,async(req,res)=>{
    let {id} = req.query;
    // console.log(req.query)
    var delSql = 'DELETE FROM cart where id=' + id;
    var data = await db.find(delSql);
    res.send(data);
})

// 修改商品
// db文件夹下的add可以用来修改商品
Router.post('/',urlencodedParser,async(req,res)=>{
    let {num,id} = req.body
    let modSql = 'UPDATE cart SET num = ? WHERE id = ?';
    let modSqlParams = [num, id];

    var data = await db.add(modSql,modSqlParams);
    res.send(data);
})

// 添加商品
Router.put('/',urlencodedParser,async(req,res)=>{
    let {id,title,price,num,url} = req.body;
    let Params = [id,title,price,num,url];
    // console.log(title,price,num,url)
    // res.send(req.body)
    var sql = 'INSERT INTO cart (id,title,price,num,url)  VALUES(?,?,?,?,?)';
    var data = await db.add(sql,Params);
    res.send(data);
})


module.exports = Router;