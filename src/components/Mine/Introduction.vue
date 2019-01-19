<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="关于泊啤汇" class="aa">
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>
                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="colcontent">
            <div class="content">
                <div class="inbopihui">
                    <p class="Introduction">
                        <span>简介须知</span>
                    </p>
                    <p class="connew">&nbsp&nbsp&nbsp&nbsp温州泊啤汇网络科技有限公司是由温州奇盟商贸有限公司与2015年底在浙江温州成立。我们是一家专业销售进口啤酒、进口红酒的电商平台。平台为降价商家经营成本，最大限度让利于消费者，果断采用O2O（线上和线下）和C2O（消费者和商家结合）二者复合型创新经济模式。泊啤汇APP目前汇聚100多个国外知名啤酒及优质红酒品牌，同时联合全国23个省份60个地区，上千家实体门店，让您从下单、交易、配送、售后，全面你覆盖的无忧服务体验！
                    </p>
                    <p style="text-align:center;">客服电话：0577-86191919</p>
                    <p style="text-align:center;">联系地址：浙江省温州市鹿城区南汇街道牛山北路50号</p>
                    <p style="text-align:center;margin-top:.373333rem;">APP下载</p>
                    <p class="inimg">
                        <img src="../../images/list/erweima.jpg" alt="">
                    </p>
                    <p style="text-align:center;margin-top:.746667rem;">Copyright 2017 温州泊啤汇网络科技有限公司</p>
                </div>
            </div>
        </div>
        
    </div>
</template>
<script>

export default {
    methods:{
        goback:function(){
            this.$router.go(-1)

        }
    }
}
</script>
<style lang="scss" scoped>
    .mycollect{
        font-size:.186667rem;
        font-family: 'microsoft yahei',Verdana,Arial,Helvetica,sans-serif;
        color: #000;
        .coltop{
                .aa{
                    background:#e53935;
                    height: .653333rem;
                    
                }
        }
        .colcontent{
            padding-bottom:.8rem;
            width: 100%;
            height: 100%;
            .content{
                .inbopihui{
                    padding: 12px;
                    line-height: 2;
                    .Introduction{
                        text-align: center;
                        span{
                            font-size: 16px;
                        }
                    }
                    .connew{
                        text-align: left;
                    }
                    .inimg{
                        img{
                            margin:0 auto;
                        }
                    }
                }
            }
        }
        
    }
    
</style>