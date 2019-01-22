const path = require('path');

const HtmlWebpackPlugin = require('html-webpack-plugin');
const CleanWebpackPlugin = require('clean-webpack-plugin');
const { VueLoaderPlugin } = require('vue-loader');

module.exports = {
    // 入口文件
    entry:{
        main:'./src/index.js',
    },

    // 出口：打包文件放置的目录
    output:{
        path:path.resolve(__dirname,'./dist/'), //打包文件存放路径
        filename:'js/[name][hash:5].js',
        publicPath:'/'
    },

    // 编译模式
    mode:'development',

    // 测试服务器：安装
    devServer:{
        contentBase:'./src/',
        port:2809,

        //默认是localhost访问
        // host:'0.0.0.0',//localhost,127.0.0.1,ip地址都可以访问
        // open:true,
        // 服务器代理
        // proxy:{
        //     '/Api':{
        //         target:"http://localhost:1809",//代理目标服务器
        //         changeOrigin: true,
        //         pathRewrite: {'^/Api' : ''}, //替换部分路径，替换完之后会拼接到target的url后面去
        //     }
        // }
    },

    resolve:{
        // 别名
        alias:{
            'vue$':'vue/dist/vue',
            '@':path.resolve('src'),
            '@com':path.resolve('src/components')
        },
        extensions:['.js','.json','.vue']
    },

    // 加载器配置
    module:{
        rules:[
            // 编译vue单文件组件：vue-loader
            {
                test:/\.vue$/,
                loader:'vue-loader'
                // use:{
                //     loader:'vue-loader'
                // }
            },

            // 编译es6->es5：babel(babel-loader,babel-core,babel-preset-env)
            {
                test:/\.js$/,
                exclude:path.resolve(__dirname,'./node_modules'),
                use:{
                    loader:'babel-loader',
                    // 配置loader选项
                    // stage-0：设置之后webpack可以编译es6中最新语法，eg：async、await
                    options:{
                        presets:['env','stage-0'], //编译ES6->ES5
                        // 按需引入部分内容
                        // plugins:[["component", [
                        //     {
                        //          要按需加载的框架
                        //       "libraryName": "mint-ui",
                        //          是否自动引入样式
                        //       "style": true
                        //     }
                        //   ]]]
                    }
                }
            },

            // 样式加载器
            {
                test:/\.css$/,
                loader:['style-loader','css-loader']
            },

            // sass编译加载器
            {
                test:/\.scss$/,
                loader:['style-loader','css-loader','sass-loader']
            },

            // 图片的处理：依赖file-loader
            {
                test:/\.(jpe?g|png|gif|bmp)$/,
                use:
                    {
                        loader:'url-loader',
                        options:{
                            // 设置转换base64编码的临界值
                            limit:10000,
                            name:'img/[name].[hash:5].[ext]'
                        }
                    }
            }
        ]
    },

    plugins:[
        // 根据指定模板生成html结构
        new HtmlWebpackPlugin({
            template:'./src/template.html'
        }),

        // Vue-loader的使用，在15.*之后的版本都需要伴随 VueLoaderPlugin
        new VueLoaderPlugin(),
        
        // 每次编译先清除dist目录
        new CleanWebpackPlugin('dist')
    ]
}