<template>
    <span :endTime="endTime" :callback="callback" :endText="endText">
        <i>{{state}}</i>
        <span>{{hour}}</span>
        <p>：</p>
        <span>{{min}}</span>
        <p>：</p>
        <span>{{sec}}</span>
    </span>
</template>
<script>
export default {
    data() {
        return {
            state:'距结束',
            hour: '',
            min: '',
            sec: ''
        }
    },
    props: {
        endTime: {
            type: String,
            default: ''
        },
        endText: {
            type: String,
            default: '已结束'
        },
        callback: {
            type: Function,
            default: ''
        }
    },
    mounted() {
        this.countdowm(this.endTime)
    },
    methods: {
        countdowm(timestamp) {
            // 改变this指向，不然指向window
            let self = this;
            let timer = setInterval(function() {
                let nowTime = new Date();
                let endTime = new Date(timestamp*1);
                let t = endTime.getTime() - nowTime.getTime();
                // console.log(t)
                if (t > 0) {
                    let hour = Math.floor((t / 3600000) % 24);
                    let min = Math.floor((t / 60000) % 60);
                    let sec = Math.floor((t / 1000) % 60);
                    hour = hour < 10 ? "0" + hour : hour;
                    min = min < 10 ? "0" + min : min;
                    sec = sec < 10 ? "0" + sec : sec;
                    // console.log(hour,min,sec,self)
                    self.hour = hour;
                    self.min = min;
                    self.sec = sec;
                } else {
                    clearInterval(timer);
                    this.state = this.endText;
                    this._callback();
                }
            }, 1000);
        },
        _callback() {
            if (this.callback && this.callback instanceof Function) {
                this.callback(...this);
            }
        }
    }
}
</script>
