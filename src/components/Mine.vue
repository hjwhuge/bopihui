<template>
    <div class="page">
        <div class="username">
            <div class="uname">
                <div class="quit">
                    <a href="#">退出</a>
                </div>
                <div class="myuser">
                    <div class="via">      
                        <img src="../images/list/m1.png" alt="">
                    </div>
                    <div class="name">
                        <b>啤啤距</b>
                        <p>
                            <span>余额：¥0元</span>
                            <span>积分：0</span>
                        </p>
                    </div>
                    <p class="icon1"> > </p>
                </div>
            </div>
        </div>
        <div class="indent">
            <div class="title">
                <span class="left">
                    <svg class="icon" aria-hidden="true">
                        <use xlink:href="#icon-daifukuan01" class="lcon"></use>
                    </svg>
                    <span>我的订单</span>
                </span>
                <span class="right">
                    <span>查看全部订单</span>
                    <a>></a>
                </span>
            </div>
            <ul>
                <li>
                    <a href="#">
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-50" class="lcon"></use>
                            </svg>
                        </span>
                        待付款
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-weibiaoti2fuzhi02" class="lcon"></use>
                            </svg>
                        </span>
                        待发货
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-daipingjia20" class="lcon"></use>
                            </svg>
                        </span>
                        待评价
                    </a>
                </li>
                <li>
                    <a href="#">
                        <span>
                            <svg class="icon" aria-hidden="true">
                                <use xlink:href="#icon-wodedingdan" class="lcon"></use>
                            </svg>
                        </span>
                        售后
                    </a>
                </li>
                
                
            </ul>
        </div>
        <div class="mytent">
            <ul>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-weibiaoti2fuzhi02" class="lcon"></use>
                                </svg>
                            </div>
                            <d>我的收藏</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-daipingjia20" class="lcon"></use>
                                </svg>
                            </div>
                            <d>我的评价</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-weibiaoti2fuzhi02" class="lcon"></use>
                                </svg>
                            </div>
                            <d>我的优惠劵</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-4" class="lcon"></use>
                                </svg>
                            </div>
                            <d>地址管理</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="share">
            <ul>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-yaoqingyouli" class="lcon"></use>
                                </svg>
                            </div>
                            <d>分享有礼</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-guanyu" class="lcon"></use>
                                </svg>
                            </div>
                            <d>门店招商</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="service">
            <ul>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-kefu" class="lcon"></use>
                                </svg>
                            </div>
                            <d>在线客服</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <div class="mycon">
                            <div class="ileft">
                                <svg class="icon" aria-hidden="true">
                                    <use xlink:href="#icon-jiubei" class="lcon"></use>
                                </svg>
                            </div>
                            <d>关于泊啤汇</d>
                            <span class="iright">></span>
                        </div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="tel">
            客服电话：0577-86191919
        </div>
        <div class="timeuser">
            配送时间：9：00-20：30
        </div>
        <div class="mbot">

        </div>
    </div>
</template>
<script>
export default {
    
}
</script>
<style lang="scss" scoped>
    .page{
        width: 100%;
        height: 100%;
        background:#f2f2f2;
        .username{
            background-color: #fff;
            .uname{
                width: 100%;
                position: relative;
                text-align: center;
                .quit{
                    padding: 8px 10px;
                    position: absolute;
                    right: 0;
                    font-weight: bold;
                    a{
                        text-decoration: none;
                        color:#333;
                        font-size: .186667rem;
                    }
                }
                .myuser{
                    z-index: 100;
                    padding: .4rem .133333rem .266667rem .266667rem;
                    height: .666667rem;
                    .via{
                        width: .666667rem;
                        height: .666667rem;
                        border-radius: .466667rem;
                        overflow: hidden;
                        float: left;
                        img{
                            width: .666667rem;
                            height: .666667rem;
                        }
                    }
                    .name{
                        line-height: 20px;
                        padding: 5px 0 0 10px;
                        float: left;
                        text-align: left;
                        b{
                            font-size: 16px;
                            font-weight: bolder;
                            color: #4C3F3F;
                        }
                        p{
                            font-size: 12px;
                            color: #bcbcbc;
                        }
                    }
                    .icon1{
                        position:absolute;
                        right:.16rem;
                        top:.453333rem;
                        font-size: .32rem;
                        font-weight: bold;
                    }
                    
                }

            }
        }
        .indent{
            width: 100%;
            border-bottom: .013333rem solid #eee;
            background-color: #fff;
            margin-top: .266667rem;
            .title{
                width: 100%;
                border-bottom: .013333rem solid #eee;
                background-color: #fff;
                margin-top: .266667rem;
                padding: .133333rem 0;
                .left{
                    padding-left: 10px;
                    span{
                        font-size: 20px;
                    }
                }
                .right{
                    float: right;
                    color: #bcbcbc;
                    padding: .04rem .133333rem;
                    font-size: .186667rem;
                }

            }
            ul{
                height: .8rem;
                width: 100%;
                padding: 0 .133333rem;
                text-align: center;
                li{
                    float: left;
                    width: 21%;
                    padding: 9px 5px 0;
                    a{
                        font-size: .186667rem;
                        text-decoration: none;
                        display: block;
                        color: #4C3F3F;
                        text-align: center;
                        span{
                            display: block;
                            width: .266667rem;
                            height: .266667rem;
                            margin: 0 auto .106667rem;
                        }
                    }
                }
            }
        }
        .mytent,.share,.service{
            margin-top:.266667rem;
            ul{
                li{
                    a{
                        .mycon{
                            padding: 0 .133333rem;
                            border-bottom: .013333rem solid #eee;
                            color: #333;
                            position: relative;
                            height: .6rem;
                            line-height: .6rem;
                            background-color: #fff;
                            .ileft{
                                padding-top: .08rem;
                                height: .533333rem;
                                float:left;
                            }
                            d{
                                font-size: .186667rem;
                                margin-left:.066667rem;
                            }
                            .iright{
                                font-size:24px;
                                font-weight: bold;
                                float:right;
                            }
                        }
                    }
                }
            }
        }
        .tel{
            font-size: .186667rem;
            margin-top:.266667rem;
            background: #fff;
            padding: .133333rem;
            text-align: center;
            color: #e53935;
        }
        .timeuser{
            font-size:.186667rem;
            padding: .266667rem;
            text-align: center;
            color: #868686;
        }
        .mbot{
            padding-top:1.2rem;
        }
    }
</style>