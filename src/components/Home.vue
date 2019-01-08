<template>
  <div class="page">
    <mt-header title="泊啤汇">
      <mt-button slot="left" >{{currentCity}}</mt-button>
      <mt-button icon="search" slot="right"></mt-button>
    </mt-header>
    <div id="bdmap">
      
    </div>
  </div>
</template>
<script>
// 这个是loadding效果，放到请求拦截处，APP.vue文件里
// import { Indicator } from 'mint-ui';
export default {
  data() {
    return {
      currentCity:'广州'
    };
  },
  methods:{
  

  }
};
</script>
<style>
.mint-swipe img {
  width: 100%;
}
.carousel {
  height: 160px;
}
#bdmap {
  height: 200px;
}
</style>
