const express = require('express');
let Router = express.Router();



const db = require('../db');


Router.get('/',async(req,res)=>{
    let sql = 'SELECT * FROM bopihui';
    let data = await db.find(sql);
    res.send(data);
})


module.exports = Router;