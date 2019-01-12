<template>
    <div class="page">
        <!-- 头部 -->
        <mt-header class="header" title="泊啤汇">
            <mt-button slot="left">
                <svg class="icon Ewm" aria-hidden="true">
                    <use xlink:href="#icon-saoma"></use>
                </svg>
            </mt-button>
            <!-- <mt-button slot="right">返回</mt-button> -->
            <mt-button slot="right">
                <svg class="icon Search" aria-hidden="true" @click="goto('search')">
                    <use xlink:href="#icon-sousuo"></use>
                </svg>
            </mt-button>
        </mt-header>
        <!-- 轮播图 -->
        <div class="carousel">
            <mt-swipe :auto="4000">
                <mt-swipe-item v-for="item in recommend" :key="item.id">
                    <img :src="item.url"/>
        </mt-swipe-item>
            </mt-swipe>
        </div>
        <!-- 广告 -->
        <div class="bd">
            <img src="../images/home/home1.jpg" alt="">
        </div>
            <!-- 导航 -->
            <div class="nav">
                <ul>
                    <li v-for="item in nav" :key="item.id">
                        <a href="#">
                      <img :src="item.url" alt="">
                      <span>{{item.name}}</span>
                    </a>
                    </li>
                </ul>
            </div>
            <div class="sort_start clearfix">
                <ul>
                    <li v-for="item of cx">
                        <a href="#">
                        <img :src="item.url" alt="">
                    </a>
                    </li>
                </ul>
            </div>
            <!-- 头条 -->
            <div class="toutiao">
                <div class="left_logo">
                    <img src="//img.bphapp.com/public/attachment/201808/20/16/bbb.png?x-oss-process=image/quality,Q_80" alt="">
                </div>
                <div class="ringht_con">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                        <div class="swiper-slide"><a href="http://www.bphapp.com/wap/index.php?ctl=notice&data_id=11">旧版客服系统将在9月15日停止</a></div>
                        <div class="swiper-slide"><a href="http://www.bphapp.com/wap/index.php?ctl=notice&data_id=16">温州市区门店配送费统一收费公告</a></div>
                        <div class="swiper-slide"><a href="http://www.bphapp.com/wap/index.php?ctl=notice&data_id=18">2019年1月2日0元抽奖中奖名单公布</a></div>
                    </div>
                    </div>
                </div>
            </div>

            <!-- 超级秒杀 -->
            <div class="endtime">
                <seckill Times="1547299257790" title1="//img.bphapp.com/public/attachment/201808/20/16/chaojimiaosha.png" title2="//img.bphapp.com/public/attachment/201808/20/16/sale.png" />
            </div> 

            <!-- 限时抢购 -->
            <div class="endtime">
                <seckill Times="1547499257790" title1="//img.bphapp.com/public/attachment/201808/20/16/xianshiqianggou.png" />
            </div> 
    </div>
</template>
<script>
import Swiper from "swiper";
import seckill from "./Home/seckill_top"
export default {
    data() {
        return {
            recommend: [],
            nav: [],
            cx: []
        }
    },
    components:{
        seckill
    },
    methods: {
        goto(path) {
            this.$router.push({ path });
        }
    },
    created() {
        
        this.$axios.get("http://localhost:5555/home/lb")
            .then(res => {
                // console.log(res);
                this.recommend = res.data.data.filter(item => item.id < 4);
                // console.log(this.recommend)

                this.nav = res.data.data.filter(item => {
                    return (item.id > 6 && item.id < 17)
                });

                this.cx = res.data.data.filter(item => {
                    return (item.id > 16 && item.id < 20)
                });
            }).catch(() => {});
        
    },
    mounted() {
        let mySwiper = new Swiper('.swiper-container', {
                autoplay: true,
                direction: 'vertical', // 垂直切换选项
                loop: true, // 循环模式选项
            })
    }
};
</script>
<style lang="scss">
.page{background: #f2f2f2;

.mint-header {
    background: #fff;
    height:0.533333rem;
    .Ewm {
        font-size: 0.133333rem;
    }

    .Search {
        font-size: 0.24rem;
    }

    h1 {
        color: #f00;
        font-size: 0.24rem;
        font-weight: bold;
        font-style: italic;
    }
}

.mint-swipe img {
    width: 100%;
}

.carousel {
    height: 2.813333rem;
}

.bd img {
    // height: 2.826667rem;
    width:100%;
}

.nav {
    overflow: hidden;
    padding-bottom: 0.266667rem;
    background: #fff;
    li {
        float: left;
        width: 20%;
        margin-top: 0.106667rem;

        a {
            display: block;
            text-align: center;

            img {
                width:45px;
                vertical-align: middle;
                margin:0 auto;
            }

            span {
                display: block;
                padding-top: 0.106667rem;
                color: #979797;
            }
        }
    }
}

.sort_start {
    ul li {
        float: left;
        width:33%;
        img{
            width:100%;
        }
    }
}

.toutiao {
    height: 0.42rem;
    padding: 0.266667rem;
    padding-bottom:0.133333rem;
    background: #fff;
    .left_logo {
        float: left;
        width:0.453333rem;
        height:0.48rem;
        padding-right: 0.16rem;

        img {
            width: 100%;
        }
    }

    .ringht_con {
        height: 0.4rem;
        overflow:hidden;
        a {
            display:block;
            padding-top:0.08rem;
            color: #363636;
            font-size:0.186667rem;
        }
    }
}
    .endtime {
        margin-bottom:4.0rem;
    }

}
</style>