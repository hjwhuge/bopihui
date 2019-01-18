<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="我的评价" class="aa">
                
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>

                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="colcontent">
            <div class="content">
                <div class="conlist">
                    <ul class="collectlist">
                        <li class="collect_li">
                            <div class="aa">
                                <p>贵州茅台998*1瓶 2019/1/23</p>
                                <p class="a1">白酒雪碧加红牛，黄泉路上不回头，雪碧红牛掺白酒，黄泉路上走一走。我有故事也有酒，谁能陪我喝一宿？</p>
                                <p class="a2">
                                    <span class="ab"></span>
                                    <span>匿名：断肠人</span>
                                </p>
                            </div>
                        </li>
                    </ul>
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
                .conlist{
                    border: none;
                    .collectlist{
                        overflow: auto;
                        margin-bottom: .4rem;
                        li{
                            .aa{
                                border:1px dashed #333;
                                padding:.133333rem;
                                margin-top:.266667rem;
                                .a1{
                                    font-size: .186667rem;
                                    color:#333;
                                }
                                .a2{
                                    margin-top:.133333rem;
                                    .ab{
                                        display:inline-block;
                                        width: 75%;
                                    }
                                    span{
                                        font-size: .186667rem;
                                        color:#333;
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