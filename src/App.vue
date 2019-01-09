<template>
    <div class="container">
        <router-view />
        <mt-tabbar v-model="selected">
            <mt-tab-item :id="tab.name" v-for="tab in tabs" :key="tab.name" @click.native="goto(tab.path)">
                <!-- <myicons :type="tab.icon" /> -->
                <svg class="icon" aria-hidden="true">
                  <use v-bind:xlink:href="tab.icon"></use>
                </svg>
                <div class="text">{{tab.text}}</div>
                
            </mt-tab-item>

        </mt-tabbar>
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



export default {
    data() {
        return {
            tabs: [{
                text: '首页',
                icon: '#icon-jiubei',
                path: '/home',
                name: 'Home'
            }, {
                text: '分类',
                icon: '#icon-fenlei',
                path: '/Goods/list',
                name: 'List'
            }, {
                text: '必喝阿尔寇',
                icon: '#icon-gouwuche',
                path: '/Goods/detail',
                name: 'Detail'
            }, {
                text: '购物车',
                icon: '#icon-gouwuche',
                path: '/Goods/cart',
                name: 'Cart'
            }, {
                text: '我的',
                icon: '#icon-wode',
                path: '/mine',
                name: 'Mine'
            }],
            // 哪个选中就高亮哪个
            selected: 'Home'
        }
    },
    methods: {
        goto(path) {
            this.$router.push({ path });
        }
    }
};
</script>
<style lang="scss">

.mint-tabbar {
    .is-selected {
        color: #f00;
        svg {
            color: #f00;
            fill: #f00
        }
        .mint-tab-item-label {
            color: #f00;
        }
    }
    // 设置导航处的字体大小
    .mint-tab-item{
        .mint-tab-item-label{
            svg{
                font-size:0.266667rem;
            }
        }
        .text{
            font-size:0.24rem
        }
    }
    
}

</style>