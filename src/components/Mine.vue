<template>
    <div class="page">

        <Menu selected="Mine"/>
    </div>
</template>
<script>
import Menu from './Menu';
export default {
    methods: {
        goto(){console.log(111)
            this.$router.push({path:'/mine/collect'});
        }
    },
    components:{
        Menu
    }

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