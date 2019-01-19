const express = require('express');
let Router = express.Router();

// const bodyParser = require('body-parser');
// let urlencodedParser = bodyParser.urlencoded({ extended: false });

const db = require('../db');

Router.get('/lb',async(req,res)=>{
	let sql = 'SELECT * FROM images';
    let data = await db.find(sql);
    res.send(data);
})


Router.get('/bk',async(req,res)=>{
    let sql = 'SELECT * FROM goodslist';
    let data = await db.find(sql);
    res.send(data);
})

// RESTful风格api
// Router.route('/')



    // .get((req, res) => {
    // 	let sql = 'SELECT * FROM images';
    //     // console.log(555);
    //     let data = db.base(sql).then(aa=>{
    //     	// console.log(res)
    //     	res.send(aa);
    //     });
    //     // console.log(111);
        
    // })

	// .get(async(req, res) => {

	//     let sql = 'SELECT * FROM images';
	//     let data = await db.base(sql);
	//     res.send(data);
	// })

// RESTful风格api
// Router.route('/:id')
//     .get(async(req, res) => {
//         let {id,state} = req.query;
//         // console.log(id);
//         let data
//         try{
//             data = await db.find('list',{_id:ObjectID(id)},{state});
//         }catch(err){
//             data = err;
//         }

//         res.send(data);
//     })
//     //修改商品信息
//     .post(urlencodedParser,async(req, res) => {
//         let {id,goods,priceOld,priceNow,stock,state,classify} = req.body;
//         // console.log(id);
//         let data
//         try{
//             data = await db.update('list',{_id:ObjectID(id)},{goods,priceOld,priceNow,stock,state,classify});
//         }catch(err){
//             data = err;
//         }

//         res.send(data);
//     })
//     //添加商品信息
//     .put(urlencodedParser,async(req, res) => {
//         let {goods,priceOld,priceNow,stock,state,classify,url} = req.body;
//         // console.log(url)
//         let data
//         try{
//             data = await db.insert('list',{goods,priceOld,priceNow,stock,state,classify,url,time:show()});
//         }catch(err){
//             data = err;
//         }
//         res.send(data);
//     })

//     //删除商品信息
//     .delete(urlencodedParser,async(req, res) => {
//         let {id} = req.body;
//         console.log(id);
//         let data
//         try{
//             data = await db.delete('list',{_id:ObjectID(id)});
//         }catch(err){
//             data = err;
//         }

//         res.send(data);
//     })





module.exports = Router;