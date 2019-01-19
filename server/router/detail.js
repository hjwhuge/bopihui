const express = require('express');
let Router = express.Router();

// const bodyParser = require('body-parser');
// let urlencodedParser = bodyParser.urlencoded({ extended: false });

const db = require('../db');


Router.get('/',async(req,res)=>{
    let {id} = req.query;
    let sql = `SELECT * FROM goodslist where id=${id}`;
    let data = await db.find(sql);
    res.send(data);
})




module.exports = Router;