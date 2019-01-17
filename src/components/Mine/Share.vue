<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="分享有礼" class="aa">
            
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>
       
                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="colcontent">
            <div class="content">
                <div class="backgroundimg">
                    <img src="../../images/list/bg.png" alt="">
                </div>
                <div class="backgroundcontent">
                    <div class="backhd">
                       
                    </div>
                    <div class="backdh">
                        
                    </div>
                </div>
                <dir class="backgroundcompany">
                    <div class="comtab">
                        <div>名称</div>
                        <div>时间</div>
                        <div>状态</div>
                    </div>
                    <ul class="comtent">

                    </ul>
                </dir>
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
                .backgroundimg{
                    img{
                        width: 100%;
                    }
                }
                .backgroundcontent{
                    position: absolute;
                    width: 90%;
                    height: 280px;
                    top: 100%;
                    margin-left: 5%;
                    .backhd{
                        width: 100%;
                        height: 48%;
                        background-image: url(http://img.bphapp.com/public/attachment/201806/16/13/hd.png);
                        background-repeat: no-repeat;
                        background-size: 100%;
                        position: relative;
                    }
                    .backdh{
                        width: 100%;
                        height: 48%;
                        background-image: url(http://img.bphapp.com/public/attachment/201806/16/13/dh.png);
                        background-repeat: no-repeat;
                        background-size: 100%;
                        margin-top: 4%;
                        position: relative;
                    }
                }
                .backgroundcompany{
                    position: absolute;
                    width: 80%;
                    height: 4rem;
                    top: 166%;
                    margin-left: 5%;
                    background-image: url(http://img.bphapp.com/public/attachment/201806/16/13/myfriend.png);
                    background-repeat: no-repeat;
                    background-size: 100%;
                    .comtab{
                        width: 85%;
                        margin: .466667rem auto 0 0;
                        border-bottom: .013333rem solid #244A99;
                        height: .666667rem;
                        div{
                            width: 33%;
                            height: .666667rem;
                            line-height: .666667rem;
                            float: left;
                            color: #00DEA8;
                            font-size: .266667rem;
                            text-align: center;
                        }

                    }
                    .comtent{
                        width: 85%;
                        height: 2.533333rem;
                        margin: auto;
                        overflow: hidden;
                        overflow-y: scroll;
                    }

                }
                
            }
        }
        
    }
    
</style>