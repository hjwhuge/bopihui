<template>
    <div class="details">
      <!-- 头部 -->
    	<mt-header fixed title="商品详情">
        <mt-button slot="left" @click="goBack">
          <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-fanhui"></use>
          </svg>
        </mt-button>
        <mt-button slot="right">
            <svg class="icon" @click="toHome" aria-hidden="true">
                <use xlink:href="#icon-fenxiang"></use>
            </svg>
        </mt-button>
      </mt-header>
      <!-- 关于商品 -->
      <div class="goods_abbr">
          <div class="good_detail">
            <div class="good_url">
              <a href="javascript:;">
                <img :src="goods.url" alt="">
              </a>
            </div>
            <div class="good_price">
              <div class="price">
                <span>￥{{goods.price}}</span>
                <span>
                  <del>
                    <span>￥{{goods.oldPrice}}</span>
                  </del>
                </span>
              </div>
              <div class="bar_item">
                <span>{{goods.sales}}人已购买</span>
              </div>
            </div>
            <seckill Times="3299339257790"/>  
            <div class="barter">
              <span>买一箱送一箱</span>
              <span>买一箱送二箱</span>
              <span>整箱装</span>
            </div>  
            <div class="good_info">
              <h3>{{goods.title}}</h3>
              <pre>（12小时每人限购3单、限领3单 ！买一箱送二箱、 数量有限、欲购从速！日期新鲜，保质期至19年11月。）
原产国：葡萄牙
规格：250ml*24瓶
原料与辅料：水 、大麦芽 、玉米 、大麦 、啤酒花   酒精度 ：4.8%vol 
原麦汁浓度 ：10.7°P 
贮藏方式：常温 、避光  。</pre>

            </div>  
          </div>
      </div>
      <!-- 猜你喜欢 -->
      <div class="guess_lick">
        <div class="lick_item">
          <p>猜你喜欢</p>
        </div>
        <div class="lick_list clearfix">
          <ul>
              <li v-for="item in lick" :key="item.id">
                <a href="javascript:;">
                  <img :src="item.url" alt="">
                  <p>{{item.title}}</p>
                  <p class="price">￥{{item.price}}</p>
                </a>
              </li>
          </ul>
        </div>
      </div>

      <!-- 详情及评论 -->
      <div class="comment">
        <mt-navbar v-model="selected">
          <mt-tab-item id="1">商品详情</mt-tab-item>
          <mt-tab-item id="2">用户评价</mt-tab-item>
        </mt-navbar>
        <mt-tab-container v-model="selected">
          <mt-tab-container-item id="1">
            <mt-cell v-for="n in 6" :key="n">
              <img :src="goods.url" alt="">
            </mt-cell>
          </mt-tab-container-item>
          <mt-tab-container-item id="2">
            <mt-cell v-for="n in 10" :key="n" :title="'content ' + n" />
          </mt-tab-container-item>
        </mt-tab-container>
      </div>
      <!-- 底部菜单 -->
      <div class="menu">
          <span class="kufu">
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-kefu"></use>
            </svg>
            <p>客服</p>
          </span>
          <span class="sc">
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-shoucang"></use>
            </svg>
            <p>收藏</p>
          </span>
          <span class="cart" @click="toCart">
            <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-gouwuche"></use>
            </svg>
            <p>购物车</p>
          </span>
          <span class="intocart" @click="addCart(goodsId)">
            加入购物车
          </span>
          <span class="buy">
            立即购买
          </span>
      </div>
  </div>
</template>
<script>
import "../../style/detail.scss"
import seckill from "../Home/seckill_top"
export default {
  data() {
    return {
      goods:{},
      lick:[],
      selected:'1',
      goodsId:''
    }
  },
  methods:{
    goBack(){
      this.$router.replace('/home')
    },
    toHome(){
      this.$router.push('/home')
    },
    addCart(goodsId){
      this.$router.push('/addCart/'+goodsId)
    },
    toCart(){
      this.$router.push('/Goods/cart/0')
    }
  },
  components: {
      seckill
  },
  created() {
    let id = this.$route.params.id;
    this.goodsId = id;
    // console.log(this.$route.params.id)
      //this.$route.params.id:获取动态路由后面的id
    this.$axios.get(`http://hujiawei.top:5010/detail?id=${id}`).then(res=>{
        let goods = res.data.data[0];
        this.goods = goods;
        // console.log(this.goods)
      })

    this.$axios.get("http://hujiawei.top:5010/home/bk")
      .then(res => {
        // console.log(res)
          this.lick = res.data.data.filter(item => {
              return ( item.id >14 && item.id<21)
          });
          
          // console.log(this.lick)
      }).catch(() => {});
      
  },
  mounted() {
    window.scroll(0,0)
  },
}
</script>
