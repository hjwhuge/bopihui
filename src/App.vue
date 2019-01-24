<template>
    <div class="container">
        <router-view />
    </div>
</template>
<script>
import Vue from "vue";


// 引入阿里巴巴图标
// import "./assets/iconfont/iconfont.css";
import icons from  "./assets/iconfont/iconfont.js";

// 引入并使用MintUI
import MintUI from "mint-ui";
Vue.use(MintUI);
import "mint-ui/lib/style.css";

import "./style/common.scss"

import axios from 'axios';

// 把axios写入Vue的原型对象，方便后面调用
Vue.prototype.$axios = axios;

// loading效果
// 利用axios拦截器全局设置
import { Indicator } from 'mint-ui';
axios.interceptors.request.use(config => {
    Indicator.open();
    // console.log('config:',config);
    // config.params.token = '10086';
    return config
}, error => {
    Indicator.close();
    
    return Promise.reject(error)
})
// http响应拦截器
axios.interceptors.response.use(data => {
    // 响应成功关闭loading
    Indicator.close();
    return data
}, error => {
    Indicator.close();
    return Promise.reject(error)
})





/*  
    baseURL相关操作
        axions下面的baseURL属性：`baseURL`将被添加到`url`前面，除非`url`是绝对的
            eg：baseURL: 'https://hujiawei.top/',url:'/home'  最终访问网址：https://hujiawei.top/home
*/

// 引入全局变量，用来指定base_url
import global_ from './config/global.js';
// 把全局变量写入vue下
Vue.prototype.GLOBAL = global_;
// 设置baseURL
axios.defaults.baseURL = global_.BASE_URL;


export default {
    data() {
        return {
            
        }
    }
};
</script>
<style lang="scss">

</style>