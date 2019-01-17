<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="门店招商" class="aa">
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>
                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="colcontent">
            <div class="content">
                <div class="conlist">
                    门店招商联系电话：13695802284
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
                       
                    }
                }
            }
        }
        
    }
    
</style>