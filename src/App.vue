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

export default {
    data() {
        return {
            
        }
    }
};
</script>
<style lang="scss">

</style>