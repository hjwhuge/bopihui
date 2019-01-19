//把路由封装成模块
const express = require('express')

// 引入单独路由模块

const Home = require('./home');
const Detail = require('./detail');
const List = require('./list');
const Cart = require('./cart');

let Router = express.Router();


//给所有路由设置允许跨域
Router.all('*', function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Content-Type,Content-Length, Authorization, Accept,X-Requested-With");
    res.header("Access-Control-Allow-Methods","PUT,POST,GET,DELETE,OPTIONS");
    
    // 跨域请求CORS中的预请求
    if(req.method=="OPTIONS") {
      res.sendStatus(200);/*让options请求快速返回*/
    } else{
      next();
    }
});


// 关于首页路由
Router.use('/home',Home)

// 关于详情页路由
Router.use('/detail',Detail)

// 关于列表页路由
Router.use('/list',List)

// 关于购物车路由
Router.use('/cart',Cart)

module.exports = Router