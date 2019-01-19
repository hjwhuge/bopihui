<template>
    <div>
        <div class="coltop">
            <mt-header title="客服嘤嘤嘤" class="aa">
                    <mt-button icon="back" slot="left" @click="goback">返回</mt-button>
                <mt-button slot="right"></mt-button>
            </mt-header>
        </div>
        <div class="service">
            本店客服正在喝着茅台配送货物酒驾回来中，请耐心等待...
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
    .service{
        font-size: .186667rem;
    }
</style>