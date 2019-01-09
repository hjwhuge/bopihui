<template>
  <div class="page">
    <mt-header class="header">
      <mt-button slot="left">
        <svg class="icon Ewm" aria-hidden="true">
          <use xlink:href="#icon-saoma"></use>
        </svg>
      </mt-button>
      <!-- <mt-button slot="right">返回</mt-button> -->
      <mt-button slot="right">
        <svg class="icon Search" aria-hidden="true" @click="goto('search')">
          <use xlink:href="#icon-sousuo"></use>
        </svg>
      </mt-button>
    </mt-header>

    <!-- <div class="carousel">
      <mt-swipe :auto="4000">
        <mt-swipe-item v-for="item in recommend" :key="item.id" >
          <img :src="item.images.large">
        </mt-swipe-item>
      </mt-swipe>
    </div> -->

  </div>
</template>
<script>

export default {
  data() {
    return {
      recommend:[]
    }
  },
  methods:{
    goto(path) {
        this.$router.push({ path });
    }
  },
  mounted() {
    // 以/dbapi开头的请求，进入到代理服务器（webpack配置）
    // /dbapi/in_theaters  -> http://api.douban.com/v2/movie/dbapi/in_theaters -> http://api.douban.com/v2/movie/in_theaters
    // this.$axios.get("/dbapi/in_theaters",{
    //   params:{
    //     city:this.currentCity
    //   }
    // }).then(res => {
    //   // 热映电影
    //   let data = res.data;
    //   console.log(data);

    //   // 获取热映top5
    //   this.recommend = data.subjects.sort((a, b) => b.collect_count - a.collect_count).slice(0, 5);

    //   // Indicator.close();
      
    // }).catch(()=>{
    //   // Indicator.close();
    // });
  }
};
</script>
<style lang="scss">
  .mint-header{
    margin:5px 0;
    background: #fff;
    .Ewm{
      font-size:0.213333rem;
    }
    .Search{
      font-size:0.32rem;
    }
    h1{
      color: #f00;
      font-size:0.346667rem;
      font-weight:bold;
      font-style:italic;
    }
  }
  
  .mint-swipe img {
    width: 100%;
  }
  .carousel {
    height: 160px;
  }
</style>