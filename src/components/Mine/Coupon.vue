<template>
    <div class="mycollect">
        <div class="coltop">
            <mt-header title="我的优惠券" class="aa">

                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>

                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="tabplay">
            <!-- v-model="selected" -->
            <mt-navbar class="tabcut">
                <mt-tab-item id="1" class="tab1">未使用</mt-tab-item>
                <mt-tab-item id="2" class="tab1">已使用</mt-tab-item>
                <mt-tab-item id="3" class="tab1">已过期</mt-tab-item>
            </mt-navbar>
        </div>
        <div class="colcontent">
            <!-- <mt-tab-container v-model="selected">
                <mt-tab-container-item id="1">
                    <mt-cell v-for="n in 10" :title="'内容 ' + n" />
                </mt-tab-container-item>
                <mt-tab-container-item id="2">
                    <mt-cell v-for="n in 4" :title="'测试 ' + n" />
                </mt-tab-container-item>
                <mt-tab-container-item id="3">
                    <mt-cell v-for="n in 6" :title="'选项 ' + n" />
                </mt-tab-container-item>
            </mt-tab-container> -->
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
            
        }
        
    }
    
</style>