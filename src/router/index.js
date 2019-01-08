
import Vue from 'vue';
// 1.安装 npm install -D vue-router
// 2.引入Vue-Router
import VueRouter from 'vue-router';//console.dir(VueRouter)
// 3. 使用插件，使用use的是安装 Vue.js 插件
Vue.use(VueRouter);


// 引入路由组件
import Home from '@com/Home';
import List from '@com/List';
import Mine from '@com/Mine';
import Cart from '@com/Cart';
import Detail from '@com/Detail';
import Login from '@com/Login';

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
    // { path: '/', component: Home },
    { name:'Home', path: '/home', component: Home },
    { 
      name:'List', 
      path: '/list', 
      component: List
    },
    { 
      name:'Mine', 
      path: '/mine', 
      component: Mine,
    },
    { name:'Login', path: '/login', component: Login },
    { name:'Cart', path: '/cart', component: Cart },
    { name:'Detail', path: '/detail', component: Detail },
    { path:'/',redirect:{name:'Home'}}
  ]
// 实例化路由
let router = new VueRouter({
    // mode:'history',
    routes
});


export default router;