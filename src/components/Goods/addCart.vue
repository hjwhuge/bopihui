<template>
    <div class="addCart">
    <!-- 头部 -->
    	<mt-header title="加入购物车">
        <mt-button slot="left" @click="goBack">
          <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-fanhui"></use>
          </svg>
        </mt-button>
      </mt-header>
    <!-- 商品详情 -->
        <div class="goosurl clearfix">
            <div class="url_left">
                <img :src="goods.url" alt="">
            </div>
            <div class="url_right">
                <p>{{goods.title}}</p>
            </div>
        </div>
        <div class="price">
            <span>单价</span>
            <span>￥ {{goods.price}}</span>
        </div>
        <div class="num">
            <div class="num_left">
                <span>数量</span>
            </div>
            <div class="num_right">
                <span @click="downNum">-</span>
                <span>{{num}}</span>
                <span @click="upNum">+</span>
            </div>
        </div>
        <div class="sum">
            <span>总额</span>
            <span>￥<b>{{(goods.price*num).toFixed(1)}}</b></span>
        </div>
        <div class="bottom">
          <span>
            ￥ {{(goods.price*num).toFixed(1)}}
          </span>
          <span class="btn" @click="toCart(goods.id)">
            确定
          </span>
      </div>
  </div>
</template>
<script>
// 用来axios发送其他请求时，处理数据格式
import Qs from 'qs';
export default {
  data() {
    return {
        goods:[],
        num:1
    }
  },
  computed:{
      
  },
  methods:{
    callback(n,m){
        if(n>0){
                this.$axios(
                    {
                        method: 'post',
                        url: '/cart',
                        data: {
                            id:this.goods.id,
                            num:this.num+m,
                        },
                    transformRequest: [function (data) {
                    // 对 data 进行任意转换处理
                        return Qs.stringify(data)
                    }],
                })
                .then(res=>{
                    console.log(res)
                })
            }else{
                this.$axios(
                    {
                        method: 'put',
                        url: '/cart',
                        data: {
                            id:this.goods.id,
                            title:this.goods.title,
                            price:this.goods.price,
                            num:this.num,
                            url:this.goods.url
                        },
                    transformRequest: [function (data) {
                    // 对 data 进行任意转换处理
                        return Qs.stringify(data)
                    }],
                })
                .then(res=>{
                    // console.log(res)
                })
            }
    },
    goBack(){
      this.$router.go(-1)
    },
    downNum(){
        if(this.num <= 1){
            this.num = 1;
        }else{
            this.num --;
        }  
    },
    upNum(){
        this.num ++;
    },
    toCart(id){
        this.$router.go(-1);
        // 查询
        this.$axios.get(`/cart?id=${id}`).then(res=>{
            // n用来判断当前数据是否存在数据库，m用来获取之前存在数据库的数量
            let n = res.data.data.length;
            let m = null;
            if(n === 0){
                m = undefined;
            }else{
                m = res.data.data[0].num;
            }
            // console.log(n,m)
            // console.log('res',res,n)
            this.callback(n,m)
        })
        

    }


  },
  created() {
    let id = this.$route.params.id;
    // console.log(id)
    this.$axios.get(`/detail?id=${id}`).then(res=>{
        let goods = res.data.data[0];
        this.goods = goods;
        // console.log(this.goods)
      })

    
  }

}
</script>
<style lang="scss" scoped>
    .addCart {
        background: #f2f2f2;
        .mint-header {
            background: #f00;
            .mint-header-title{
                font-size:0.24rem;
                font-weight: 900;
                height:0.266667rem;
            }
        }
        .goosurl{
            height: 1.706667rem;
            background: #fff;
            margin-bottom: 14px;
            .url_left{
                float: left;
                padding:.266667rem;
                img{
                    width:1.173333rem;
                }
            }
            .url_right{
                float:right;
                width: 3.2rem;
                padding-top: .533333rem;
            }
        }
        .price{
            background: #fff;
            height: .56rem;
            line-height: .56rem;
            padding:0 .266667rem;
            border-bottom:1px solid #ccc;
            span:nth-child(1){
                float: left;
                
            }
            span:nth-child(2){
                float: right;
            }
        }
        .num{
            background: #fff;
            height: .56rem;
            line-height: .56rem;
            padding:0 .266667rem;
            border-bottom:1px solid #ccc;
            .num_left{
                float: left;
                
            }
            .num_right{
                float: right;
                span{
                    display:inline-block;
                }
                span:nth-child(1){
                    margin-bottom: .053333rem;
                    width: .36rem;
                    height:.36rem;
                    background: #f00;
                    color:#fff;
                    text-align: center;
                    line-height: .32rem;
                    font-size: .48rem;
                    vertical-align: middle;
                    border-radius: .04rem;
                }
                span:nth-child(2){
                    margin:0 .16rem;
                    vertical-align: top;
                }
                span:nth-child(3){
                    margin-bottom: .053333rem;
                    width: .36rem;
                    height:.36rem;
                    background: #f00;
                    color:#fff;
                    text-align: center;
                    line-height: .32rem;
                    font-size: .48rem;
                    vertical-align: middle;
                    border-radius: .04rem;
                }
            }
        }
        .sum{
            background: #fff;
            height: .56rem;
            line-height: .56rem;
            padding:0 .266667rem;
            border-bottom:.013333rem solid #ccc;
            span:nth-child(1){
                float: left;
                
            }
            span:nth-child(2){
                float: right;
                font-size: .186667rem;
                color:#f00;
                b{
                    font-weight: 900;
                }
                
            }
        }
        .bottom{
            background: #fff;
            height: .666667rem;
            line-height: .666667rem;
            text-align: center;
            border-bottom:1px solid #ccc;
            position:fixed;
            bottom:0;
            left: 0;
            right:0;
            span:nth-child(1){
                float: left;
                width: 64%;
                color:#333;
            }
            span:nth-child(2){
                float: right;
                background: #f00;
                color:#fff;
                width: 36%;
            }
        }
    }
</style>
