<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="地址管理" class="aa">
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>
                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="colcontent">
            <div class="content">
                <div class="conlist">
                    <a href="javascript:;" class="addres">添加新地址</a>
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
                        text-align: center;
                        margin-top: .266667rem;
                        margin-bottom: .4rem;
                        .addres{
                                height: .44rem;
                                line-height: .44rem;
                                text-align: center;
                                color: #fff;
                                font-size: .186667rem;
                                border-radius: .066667rem;
                                background: #e53935;
                                border: none;
                                padding: .106667rem .946667rem;
                        }
                    }   
                }
            }
        }
        
    
    
</style>