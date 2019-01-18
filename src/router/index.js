
import Vue from 'vue';
// 1.安装 npm install -D vue-router
// 2.引入Vue-Router
import VueRouter from 'vue-router';//console.dir(VueRouter)
// 3. 使用插件，使用use的是安装 Vue.js 插件
Vue.use(VueRouter);


// 引入路由组件
import Home from '@com/Home';
import Search from '@com/Search';
import List from '@com/Goods/List';
import Listbox from '@com/Goods/Listbox';
import Detail from '@com/Goods/Detail';
import Cart from '@com/Goods/Cart';
import Mine from '@com/Mine';
import Login from '@com/Login';
import Collect from '@com/Mine/Collect';
import Comment from '@com/Mine/Comment';
import Coupon from '@com/Mine/Coupon';
import Address from '@com/Mine/Address';
import Share from '@com/Mine/Share';
import Merchants from '@com/Mine/Merchants';
import Introduction from '@com/Mine/Introduction';
import Service from '@com/Mine/Service';
// 4.实例化路由并配置相关参数
	/*
		* 配置相关参数
			name：设置路由名称，方便执行路由跳转
			path：访问这个页面的路径
			component 指定路由组件（显示到<router-view/>中的组件）
			redirect：重定向,如果有这个就不会有component选项
      children：嵌套路由配置
          *子路由一般使用相对路径的path
	 */
const routes = [
    { path:'/',redirect:{name:'Home'}},
    { name:'Home', path: '/home', component: Home },
    { name:'Search', path: '/search', component: Search },
    { 
      name:'List', 
      path: '/Goods/list', 
      component: List
    },
    { name:'Detail', path: '/Goods/detail/:id', component: Detail },
    { 
      name:'Listbox', 
      path: '/Goods/listbox', 
      component: Listbox
    },
    { name:'Cart', path: '/Goods/cart', component: Cart },
    { name:'Collect', path: '/collect', component: Collect },
    { name:'Comment', path: '/comment', component: Comment },
    { name:'Coupon', path: '/coupon', component: Coupon },
    { name:'Address', path: '/address', component: Address },
    { name:'Share', path: '/share', component: Share },
    { name:'Merchants', path: '/merchants', component: Merchants },
    { name:'Introduction', path: '/introduction', component: Introduction },
    { name:'Service', path: '/service', component: Service },
    { 
      name:'Mine',
      path: '/mine', 
      component: Mine,
      
    },
    { name:'Login', path: '/login', component: Login },
    { name:'bbb', path: '/collect', component: Collect },
  ]
// 实例化路由
let router = new VueRouter({
    // mode:'history',
    routes
});


export default router;