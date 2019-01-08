<template>
    <div class="container">
        <router-view />
        <mt-tabbar v-model="selected">
            <mt-tab-item :id="tab.name" v-for="tab in tabs" :key="tab.name" @click.native="goto(tab.path)">
                <!-- <myicons :type="tab.icon" /> -->
                <svg class="icon" aria-hidden="true">
                  <use v-bind:xlink:href="tab.icon"></use>
                </svg>
                <p class="text">{{tab.text}}</p>
                
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
.current {
    color: #f00;
    font-weight: bold;
}

.mint-tabbar {

    .is-selected {
        color: #58bc58;

        svg {
            color: #58bc58;
            fill: #58bc58
        }

        .mint-tab-item-label {
            color: #58bc58;
        }
    }
}


.icon {
  width: 1em;
  height: 1em;
  vertical-align: -0.15em;
  fill: currentColor;
  overflow: hidden;
}


</style>