<template>
    <div class="cart">
    <!-- 头部 -->
    	<mt-header title="购物车">
        <mt-button slot="left"  @click="goBack" v-if="!seen">
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
                            <img :src="item.url" alt=""  @click="goDetail('Detail',item.id)">
                        </div> 
                    </div>
                    <div class="goods_right">
                        <div class="goods_title">
                            <p @click="goDetail('Detail',item.id)">{{item.title}}</p>
                        </div>
                        <div class="goods_detail">
                            <span class="goods_price">￥{{(item.price*item.num).toFixed(1)}}</span>
                            <div class="goods_num">
                                <span :class="{down:true,colors:item.isLed}" @click="down(item.id,item.num)">-</span><span class="num">{{item.num}}</span><span class="up" @click="up(item.id,item.num)">+</span>
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
    <div :class="{bottom:true,clearfix:true,marginb:seen}">
          <span class="sum">
            合计￥ <i>{{sum}}</i>
          </span>
          <span class="btn" >
            结算
          </span>
      </div>
      <Menu selected="Cart" v-if="seen"/>
  </div>
</template>
<script>
import Qs from 'qs'
import Menu from '../Menu';
export default {
  data() {
    return {
        goods:[],
        seen:false
    }
  },
  components: {
        Menu   
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
        goDetail(name,id) {
            let obj = {name}
            obj.params = {id}
            this.$router.push(obj)
        },
      down(id,number){
        //   console.log(number)
        //   if(number=2){
        //       
        //   }
          this.goods.filter(item=>{
              if(item.id == id){
                  if(item.num<=2){
                      item.num = 1;
                      item.isLed = true;
                  }else{
                      item.num--
                  }
              }
              return item;
          })
        //   console.log(this.goods)
        if(number>=2){
            this.$axios(
              {
                  method: 'post',
                  url: '/cart',
                  data: {
                      'id':id,
                      'num':number-1,
                  },
              transformRequest: [function (data) {
              // 对 data 进行任意转换处理
                  return Qs.stringify(data)
              }],
          })
        }
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
                url: '/cart',
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
                url: '/cart',
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
    let seen = this.$route.params.seen;
    // console.log(seen)
    if(seen == 1){
        this.seen = true;

    }else{
        this.seen = false;
    }
    // console.log(this.seen)
    // let token = localStorage.getItem('token')
    // console.log(token)
    this.$axios.get('/cart').then(res=>{
        // console.log(res)
        let goods = res.data.data;
        goods.map(item=>{
            return item.isLed = false;
        })
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
        .marginb{
            bottom:.8rem;
        }
        
    }
</style>