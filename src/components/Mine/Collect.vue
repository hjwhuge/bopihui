<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="我的收藏" class="aa">
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>
                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="colcontent">
            <div class="content">
                <div class="conlist">
                    <ul class="collectlist">
                        <li class="collect_li">
                            <div class="list_item">
                                <div class="list_img">
                                    <img src="http://img.bphapp.com/public/attachment/201702/08/11/589a9600cf7d9.jpg?x-oss-process=image/resize,m_lfit,h_170,w_280/quality,Q_80" alt="">
                                </div>
                                <a href="javascript:;" class="confirm">
                                    删除
                                    <i></i>
                                </a>
                                <div class="collecttitle">
                                    <h2>大萨达</h2>
                                    <div class="titlemoney">
                                        <p class="pirce">
                                            <em style="font-style: normal;">
                                                198
                                                <i style="font-style: normal;">元</i>
                                            </em>  
                                        </p>
                                        <p class="bought">
                                            已售4786
                                        </p>
                                    </div>
                                </div>
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
            background: #f2f2f2;
            .content{
                .conlist{
                    border: none;
                    .collectlist{
                        overflow: auto;
                        margin-bottom: .4rem;
                        .collect_li{
                            width: 46%;
                            float: left;
                            background: #fff;
                            margin: 2% 1% 0 2%;
                            list-style: none;
                            .list_item{
                                background: #fff;
                                padding: .066667rem;
                                position: relative;
                                .list_img{

                                    img{
                                        vertical-align: middle;
                                        width:100%;
                                    }
                                    
                                }
                                .confirm{
                                    position: absolute;
                                    right: .066667rem;
                                    bottom: .066667rem;
                                    text-decoration: none;
                                    color:#000;
                                }
                                .collecttitle{
                                    font-style: normal;
                                    h2{
                                        font-style: normal;
                                        text-overflow: ellipsis;
                                        white-space: nowrap;
                                        overflow: hidden;
                                        font-size: 100%;
                                        font-weight: normal;    
                                    }
                                    .titlemoney{
                                        .pirce{
                                            font-style: normal;
                                            p{
                                                font-style: normal;
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