<template>
    <div class="cart">
    <!-- 头部 -->
    	<mt-header title="购物车">
        <mt-button slot="left"  @click="goBack">
          <svg class="icon" aria-hidden="true">
              <use xlink:href="#icon-fanhui"></use>
          </svg>
        </mt-button>
      </mt-header>
    <!-- 商品详情 -->
        <div class="goods">
            <ul>
                <li v-for='item in goods' :key="item.name" class="clearfix">
                    <div class="goods_left">
                        <div class="goods_url">
                            <img :src="item.url" alt="">
                        </div> 
                    </div>
                    <div class="goods_right">
                        <div class="goods_title">
                            <p>{{item.title}}</p>
                        </div>
                        <div class="goods_detail">
                            <span class="goods_price">￥{{(item.price*item.num).toFixed(1)}}</span>
                            <div class="goods_num">
                                <span class="down" @click="down(item.id,item.num)">-</span><span class="num">{{item.num}}</span><span class="up" @click="up(item.id,item.num)">+</span>
                            </div>
                            <div class="goods_del" @click="del(item.id)">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-iconfontshanchu3"></use>
                                </svg>
                            </div>
                        </div>
                        
                    </div>
                </li>
            </ul>
        </div>
    <!-- 底部按钮 -->
    <div class="bottom clearfix">
          <span class="sum">
            合计￥ <i>{{sum}}</i>
          </span>
          <span class="btn" >
            结算
          </span>
      </div>
  </div>
</template>
<script>
import Qs from 'qs'
export default {
  data() {
    return {
        goods:[]
    }
  },
  computed:{
      sum:function (){
          let sum = 0;
        //   console.log(this.goods)
          this.goods.map(item=>{
              return sum += item.num * item.price
          })
        //   console.log(sum)
        return (sum).toFixed(1);
      }
  },
  methods:{
      down(id,number){
          this.goods.filter(item=>{
              if(item.id == id){
                  item.num--
              }
              return item;
          })
        //   console.log(this.goods)
          this.$axios(
            {
                method: 'post',
                url: 'http://localhost:5010/cart',
                data: {
                    'id':id,
                    'num':number-1,
                },
            transformRequest: [function (data) {
            // 对 data 进行任意转换处理
                return Qs.stringify(data)
            }],
        })
      },
      up(id,number){
          this.goods.filter(item=>{
              if(item.id == id){
                  item.num++
              }
              return item;
          })
          this.$axios(
            {
                method: 'post',
                url: 'http://localhost:5010/cart',
                data: {
                    'id':id,
                    'num':number+1,
                },
            transformRequest: [function (data) {
            // 对 data 进行任意转换处理
                return Qs.stringify(data)
            }],
        })
      },
      del(id){
          var arr= this.goods.filter(item=>{
                // console.log(id,item.id)
                  return item.id != id;  
          })
          this.goods = arr;
        //   console.log(this.goods)
          this.$axios(
            {
                method: 'delete',
                url: 'http://localhost:5010/cart',
                params: {
                    'id':id
                }
        })
      },
       goBack(){
           this.$router.go(-1)
       }
  },
  created() {
    this.$axios.get('http://localhost:5010/cart').then(res=>{
        // console.log(res)
        let goods = res.data.data;
        this.goods = goods;
        // console.log(this.goods)
      })

  },
  mounted(){


  }


}
</script>
<style lang="scss" scoped>
    .cart {
        background: #f2f2f2;
        .mint-header {
            background: #fff;
            color:#000;
            border-bottom:.013333rem solid #ccc;
            .mint-header-title{
                font-size:0.24rem;
                font-weight: 900;
                height:0.266667rem;
                
            }
            .mint-button .mint-button-text svg{
                font-size: .16rem;
                color:#333;
            }
        }
        .goods{ 
            
            ul li{
                margin-bottom:.16rem;
                padding-top:.16rem;
                background: #fff;
            .goods_left{
                float:left;
                width:20%;
                margin-right: .48rem;
                margin-left: 0 .186667rem;
                img{
                    width: 1.066667rem;
                }
            }
            .goods_right{
                float:left;
                width:68%;
                margin-left: 0 .186667rem;
                .goods_title{
                    margin-bottom: .266667rem;
                }
                .goods_detail{
                    .goods_price{
                        display:inline-block;
                        color:#f00;
                        width:.8rem;
                        margin-right: .666667rem;
                        vertical-align: middle;
                    }
                    .goods_num{
                        display:inline-block;
                        margin-right: .266667rem;
                        vertical-align: middle;
                        span{
                            display:inline-block;
                            width: 20px;
                            height:20px;
                            border:1px solid #ccc;
                            text-align: center;
                        }
                        .down{
                            border-right: 0 none;
                            
                        }
                        .num{
                            border-right: 0 none;
                            
                        }
                        .colors{
                            color:#ccc;
                        }
                    }   
                    .goods_del{
                        display:inline-block;
                        vertical-align: middle;
                    }
                }
            }
            }
            
        }
        .bottom{
            position:fixed;
            bottom:0;
            left:0;
            right:0;
            height: .666667rem;
            height: .666667rem;
            text-align: center;
            .sum{
                float:left;
                width:70%;
                color:#fff;
                background: #222;
                height: .666667rem;
                line-height: .666667rem;
                i{
                    font-style: normal;
                    color:#f00;
                    margin-left: .106667rem;
                }
            }
            .btn{
                float:left;
                width:30%;
                background: #f00;
                color:#fff;
                height: .666667rem;
                line-height: .666667rem;
            }
        }
        
    }
</style>