<template>
    <div class="page">
        <div class="top">
            <div class="tople">
                <
            </div>
            <div class="topcot">
                分类
            </div>
            <div class="topri">
                 <svg class="icon" aria-hidden="true">
                    <use xlink:href="#icon-sousuo" class="lcon"></use>
                </svg>
            </div>
        </div>
        <div class="contleft">
            <div class="side">
                <a href="#" :id="idx" v-for="(item,idx) in genre" :key="idx" @click="cocolor(idx)" :class="{active:idx==current}">{{item}}</a>
            </div>
        </div>
        <div class="contright">
            <div class="rightget">
                <a href="#" >啤酒</a>
                <a href="#">查看全部</a>
            </div>
            <div class="rightbot">
                <a v-for="(item,idx) in zong" v-bind:key="idx">
                    <div>
                        <img :src=item.imgur>
                        <span>{{item.origin}}</span>
                    </div>
                </a>
            </div>
        </div>
    </div>
</template>
<script>

export default {
    data(){
        return{
            genre:['啤酒','红酒','洋酒','黄/白酒','饮料','其他'],
            cone:[],
            ctwo:[],
            cthree:[],
            cfour:[],
            cfive:[],
            csix:[],
            zong:[],
            current:0
        }
    },
    methods:{
        // 根据获取到分类的idx，获取不同的数据赋值给zong[]，从而渲染页面
        cocolor(idx){
            var aa;
            if(idx == 0){
                aa = this.cone;
            }
            if(idx == 1){
                aa = this.ctwo;
            }
            if(idx == 2){
                aa = this.cthree;
            }
            if(idx == 3){
                aa = this.cfour;
            }
            if(idx == 4){
                aa = this.cfive;
            }
            if(idx == 5){
                aa = this.csix;
            }
            this.zong = aa;
            this.current=idx;
        }
    },
    created(){
        this.$axios.get("http://localhost:5010/list")
        .then(res => {
                console.log(res.data.data);
                // 根据条件获取不同分类的数据
                this.cone = res.data.data.filter(item =>  item.money < 370);
                this.zong = this.cone;
                this.ctwo = res.data.data.filter(item => {
                    return (item.money > 369 && item.money < 400)
                });
                this.cthree = res.data.data.filter(item => {
                    return (item.money > 399 && item.money < 427)
                });
            
                this.cfour = res.data.data.filter(item => {
                    return (item.money > 426 && item.money < 430)
                });
                this.cfive = res.data.data.filter(item => {
                    return (item.money > 429 && item.money < 999)
                });
                this.csix = res.data.data.filter(item =>  item.money > 999);
            }).catch(() => {});
    }
};
</script>
<style lang="scss" scoped>
    .page{
        display: flex;
        overflow: hidden;
        .top{
            z-index: 1;
            background: #e53935;
            height: .653333rem;
            width: 100%;
            .tople{
                font-size:30px;
                height: .24rem;
                line-height: .24rem;
                padding: .173333rem 0 0 .133333rem;
                min-width: .666667rem;
                float:left;
                font-weight: bold;
                color:#fff;
            }
            .topcot{
                width:3.466667rem;
                float:left;
                text-align: center;
                color: #fff;
                font-size: .24rem;
                line-height: .653333rem;
            }
            .topri{
                float:left;
                font-size: .213333rem;
                height: .24rem;
                line-height: .24rem;
                padding: .106667rem 0 0 .066667rem;
                float:left;
                .icon{
                    .lcon{
                        font-family: "iconfont" !important;
                        color:#fff;
                    }
                }
            }
        }
        .contleft{
            width: 25%;
            float: left;
            background: #fff;
            height: 100%;
            box-sizing: border-box;
            position: fixed;
            left: 0;
            top:.666667rem;
            .side{

                a{
                    text-decoration:none;
                    color:#333;
                    display: block;
                    height: .773333rem;
                    text-align: center;
                    line-height: .773333rem;
                    border-bottom: .026667rem solid #F0F1F2;
                }
                .active{
                    color: #FF5815;
                    background: #F3F5F7;
                }
            }
        }
        .contright{
            width: 75%;
            background: #FAFAFA;
            vertical-align: top;
            margin-left: 25%;
            height: 100%;
            box-sizing: border-box;
            position: fixed;
            top: 0;
            right: 0;
            overflow-x: hidden;
            .rightget{
                    display: block;
                    height: .666667rem;
                    background: #fff;
                    position: fixed;
                    width: 66%;
                    border-top: .2rem solid #fafafa;
                    border-bottom: .2rem solid #fafafa;
                    border-left: .226667rem solid #fafafa;
                    border-right: .226667rem solid #fafafa;
                    margin-top: .666667rem;
                    a:nth-child(1){
                        text-decoration:none;
                        color:#333;
                        line-height: .666667rem;
                        float:left;
                        line-height: .666667rem;
                        padding: 0 .2rem;
                        font-size:.186667rem;
                    }
                    a:nth-child(2){
                        font-size:.186667rem;
                        float:right;
                        text-decoration:none;
                        color:#9A9A9A;
                        line-height: .666667rem;
                        line-height: .666667rem;
                        padding: 0 .2rem;
                    }
            }
            .rightbot{
                display: block;
                margin: 0 17px;
                margin-top: 1.893333rem;
                margin-bottom: .666667rem;
                a{
                    text-decoration: none;
                    color:#333;
                    div{
                        width: 32%;
                        background: #fff;
                        display: inline-block;
                        margin: .026667rem .013333rem;
                        img{
                            width: 88%;
                            display: block;
                            margin: 0 auto;
                            margin-top: .213333rem;
                        }
                        span{
                            display: block;
                            text-align: center;
                            margin: 11px 0;
                            font-size: .186667rem;
                        }
                    }
                }
            }

        }
    }
</style>