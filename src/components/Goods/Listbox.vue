<template>
    <div class="list">
        <div class="top">
            <div class="tople">
                <
            </div>
            <div class="topcot">
                商品列表 全国爆款
            </div>
        </div>
        <div class="warp">
            <div class="main_list">
                <ul class="main_cata">
                    <li :id="idx" v-for="(item,idx) in toplist" :key="idx" @click="cocolor(idx)" :class="{active:idx==current}">
                        <a href="#" >{{item}}</a>
                    </li>
                </ul>
            </div>
            <div class="listcontent">
                <div class="list_view">
                    <ul class="list_box">
                        <li class="listeveryone" v-for="(item,idx) in zong" :key=idx >
                            <a href="#" class="everyone">
                                <div class="every">
                                    <div class="listimg">
                                        <img :src=item.imgur alt="">
                                    </div>
                                    <div class="listintro">
                                        <h2>{{item.name}}</h2>
                                        <div class="intro">
                                            <p class="pirct">￥{{item.money}}</p>
                                            <p class="rel_price">
                                                <del>￥{{item.pirce}}</del>
                                                <i>已售{{item.sold}}件</i>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        
    </div>
</template>
<script>
export default {
    data(){
        return {
            toplist:['人气','新品','价格','筛选'],
            cone:[],
            ctwo:[],
            cthree:[],
            cfour:[],
            zong:[],
            current:0
        }
    },
    methods:{
        cocolor(idx){
            var aa;
            if(idx == 0){
                aa = this.cone;
            }
            if(idx == 1){
                aa = this.ctwo;
            }
            if(idx == 2){
                aa = this.cthree;
            }
            if(idx == 3){
                aa = this.cfour;
            }
            this.zong = aa;
            this.current=idx;
        }
    },
    created(){
        this.$axios.get("http://localhost:5555/list")
        .then(res => {
                // console.log(res.data.data);
                // 根据条件获取不同分类的数据
                this.cone = res.data.data.filter(item =>  item.money < 370);
                this.zong = this.cone;
                this.ctwo = res.data.data.filter(item => {
                    return (item.money > 369 && item.money < 400)
                });
                this.cthree = res.data.data.filter(item => {
                    return (item.money > 399 && item.money < 427)
                });
            
                this.cfour = res.data.data.filter(item => {
                    return (item.money > 426)
                });
            }).catch(() => {});
    }
}
</script>
<style lang="scss" scoped>
    .list{
        .top{
            z-index: 1;
            background: #e53935;
            height: .653333rem;
            width: 100%;
            .tople{
                font-size:30px;
                height: .24rem;
                line-height: .24rem;
                padding: .173333rem 0 0 .133333rem;
                min-width: .666667rem;
                float:left;
                font-weight: bold;
                color:#fff;
            }
            .topcot{
                width:3.466667rem;
                float:left;
                text-align: center;
                color: #fff;
                font-size: .24rem;
                line-height: .653333rem;
            }
        }
        .warp{
            width: 100%;
            height: 100%;
            background: #f2f2f2;
            .main_list{
                
                .main_cata{
                    width: 100%;
                    border-bottom: .013333rem solid #e6e6e6;
                    display: -webkit-box;
                    li{
                        position: relative;
                        border:0;
                        -webkit-box-flex: 1;
                        -moz-box-flex: 1;
                        color: #8f8f8f;
                        display: block;
                        height: .56rem;
                        font-size: .186667rem;
                        text-align: center;
                        line-height: .56rem;
                        background: #fff;
                        a{
                            text-decoration: none;
                            color:#8f8f8f;
                        }
                    }
                    .active{
                        background: #ccc;
                        a{
                            color:red;
                            font-weight: bold;
                        }

                    }
                }
            }
            .listcontent{
                padding-bottom:1.066667rem;
                .list_view{
                    border: none;
                    display: -webkit-box;
                        .list_box{
                            margin-bottom: .106667rem;
                            .listeveryone{
                                padding-bottom: .2rem;
                                width: 47%;
                                background: #fff;
                                margin: 2% 0% 0 2%;
                                float:left;
                                .everyone{
                                    text-decoration: none;
                                    color: #8f8f8f;
                                    .every{

                                        .listimg{
                                            overflow: hidden;
                                            position: relative;
                                            img{
                                                border: none;
                                                height:2.346667rem;
                                                width:100%;
                                            }
                                        }
                                        .listintro{
                                            height: .933333rem;
                                            h2{
                                                font-size: .186667rem;
                                                color: #363636;
                                                height: .266667rem;
                                                overflow: hidden;
                                                font-weight: normal;
                                                -webkit-line-clamp: 2;
                                                -webkit-box-orient: vertical;
                                                word-break: break-all;
                                                line-height: .2rem;
                                                display: inline-block;
                                                padding: .133333rem;
                                            }
                                            .intro{
                                                width: 100%;
                                                .pirct{
                                                    font-size: .2rem;
                                                    color: #ff503c;
                                                    font-weight: bold;
                                                    font-style: normal;
                                                    padding-left: .133333rem;
                                                }
                                                .rel_price{
                                                    padding: 0 .133333rem;
                                                    del{
                                                        font-size: .16rem;
                                                        color: #b2b2b2;
                                                    }
                                                    i{
                                                        font-size: .16rem;
                                                        float: right;
                                                    }
                                                }
                                            }

                                        }
                                    }
                                }
                            }
                        }
                }
            }
        }
        
    }
</style>