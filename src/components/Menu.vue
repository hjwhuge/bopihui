<template>
    <div class="menu">
    	<mt-tabbar v-model="check" :fixed="true">
            <mt-tab-item :id="tab.name" v-for="tab in tabs" :key="tab.name" @click.native="goto(tab.path,tab.name)">
                <svg class="icon" aria-hidden="true">
                  <use v-bind:xlink:href="tab.icon"></use>
                </svg>
                <div class="text">{{tab.text}}</div>
            </mt-tab-item>
        </mt-tabbar>
    </div>
</template>
<script>
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
                path: '/Goods/detail/1',
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
            check: 'Home'
	    };
      },
    props: ['selected'],
    methods: {
        goto(path,name) {
            // console.log(this.selected,path,name)
            this.$router.push({ path })               
        }
    },
    created(){
        this.check = this.selected;
    }
}
</script>
<style lang="scss">
.menu{
    
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
            // padding:0.0rem;
            .mint-tab-item-label{
                margin-bottom:0.053333rem;
                svg{
                    font-size:0.186667rem;
                }
            }
            .text{
                font-size:0.186667rem;
            }
        }
        
    }
}


</style>