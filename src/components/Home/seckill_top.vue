<template>
    <div class="endtime">
        <div class="left">
            <span class="left_title">

    			<img :src="title1" alt="" v-if="title1">

    			<img :src="title1" alt="">

    			<img :src="title2" alt="" v-if="title2">
    		</span>
            <count-down :endTime="Times" :callback="callback" endText="已经结束了" id="clock"></count-down>
        </div>

        <div class="right" v-if="title1 && title2">

        <div class="right">

            <span>更多</span>
            <svg class="icon" aria-hidden="true">
                <use xlink:href="#icon-xiayiyeqianjinchakangengduo-yuankuang"></use>
            </svg>
        </div>
    </div>
</template>
<script>
import countDown from "./count_down"

export default {
    data() {
        return {
            endTime: ''
        }
    },
    props: {
    	'Times':[String, Number],
    	'title1':{

	        type: String,
            default: ''

	        type: String

	      }, 
    	'title2':{
    		default: ''
    	}
    },
    components: {
        countDown
    },
    methods: {
        callback() {
            console.log('结束了')
        }
    }

}
</script>
<style lang="scss">
.endtime {
	height:0.666667rem;
	border-bottom:1px solid #ccc;
    .left {
    	float:left;
    	width:76%;
    	line-height: 0.666667rem;
    	.left_title{
    		padding:0 0.16rem;
	    	img{
	    		display:inline-block;
	    		vertical-align: middle;
	    		width:16%;
	    	}
    	}
    	
        #clock {
            color: #999;
            vertical-align: middle;
            i {
                font-style: normal;
            }

            p {
                font-size: 0.24rem;
                color: #7E878D;
                display: inline-block;
            }

            span {
                padding: 0.026667rem 0.04rem;
                font-size: 0.16rem;
                background: #7E878D;
                color: #fff;
                border-radius: 0.04rem;
            }
        }
    }
	.right{
		float:right;
		height:0.666667rem;
		line-height: 0.666667rem;
    	color: #bcbcbc;
    	span{
    		padding:0 0.08rem;
    		vertical-align: middle;
    	}
    	svg{
    		padding-right:0.08rem;
    		display:inline-block;
    		vertical-align: middle;
    	}
	}
}
</style>