<template>
  <div class="page">
      <div class="top">
          <div class="tople">
              <
          </div>
          <div class="topcot">
              登录
          </div>
          <div class="topri">
                <svg class="icon" aria-hidden="true">
                  <use xlink:href="#icon-sousuo" class="lcon"></use>
              </svg>
          </div>
      </div>
      <div class="login">
          <div class="telephone">
              <div class="mobile">
                  手机登录
              </div>
          </div>
          <div class="phoneverify ">
                <div class="number">
                  <input type="text" class="phone" placeholder="请输入手机号">
                </div>
                <div class="second">
                  <input type="button" class="btnphone" value="发送验证码">
                </div>
            </div>
          <div class="note">
              <input type="text" placeholder="请输入手机短信中的验证码" class="noteverify">
          </div>
          <div class="btnenter">
              <input type="button" class="btn" value="登录" >
          </div>
          <div class="wei">
              <div class="weibtn">
                  <img src="../images/list/weixin.png" alt="">
              </div>
              <div class="weienter">
                  <p>微信登录</p>
                  <div class="backpass">
                      <span>
                          找回密码
                      </span>
                      <span style="margin-right:5px;">
                          注册
                      </span>
                  </div>
              </div>
          </div>
      </div>
  </div>
</template>
<script>

export default {
  data() {
    return {
       
    };
  },
};
</script>
<style lang="scss" scoped>
    .page{
      background: none;
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
      .login{
          width: 100%;
          height: 100%;
          .telephone{
              width: 100%;
              padding: 0;
              margin: 0 auto;
              .mobile{
                  width: 100%;
                  height: .64rem;
                  line-height: .64rem;
                  color:#333;
                  cursor: pointer;
                  text-align: center;
                  background: #f5f5f5;
                  font-weight: bold;
                  border-bottom: .013333rem solid #ccc;
                  font-size: .186667rem;
              }
              
          }
          .phoneverify{
                width: 100%;
                margin-top: .133333rem;
                height:.633rem;
                .number{
                    box-shadow: .04rem .04rem .066667rem #ccc inset;
                    line-height: .6rem;
                    height: .6rem;
                    width: 55%;
                    background: #f5f5f5;
                    border: .013333rem solid #ccc;
                    border-radius: .053333rem;
                    text-align: center;
                    float: left;
                    color: #c0c0c0;
                    font-size: .2rem;
                    padding-left: .133333rem;
                    margin-left:.066667rem;
                    .phone{
                        width: 100%;
                        background: none;
                        box-shadow: none;
                        border: none;
                        float: none;
                        color: #000;
                        font-size: .266667rem;
                        border-radius: .053333rem;
                        text-align: center;
                    }
                }
                .second{
                    float: right;
                    height: .6rem;
                    width: 35%;
                    border: .013333rem solid #D26C3C;
                    border-radius: .053333rem;
                    color: #363636;
                    text-align: center;
                    font-size: .2rem;
                    margin-right:.066667rem;
                    .btnphone{
                        width: 100%;
                        height: 100%;
                        color: #363636;
                        background: none;
                        line-height: .6rem;
                        font-size: .2rem;
                        text-align: center;
                        border:none;
                    }
                }
            }
          }
          .note{
              border: .013333rem solid #ccc;
              border-radius: .053333rem;
              height: .6rem;
              background: #f5f5f5;
              margin-top: .133333rem;
              width: 97%;
              box-shadow: .026667rem .04rem .066667rem #ccc inset;
              margin:.133333rem  .066667rem 0 .053333rem;
              .noteverify{
                  background: none;
                  border: none;
                  width: 100%;
                  height: 44px;
                  text-align: center;
                  box-shadow: none;
                  color: #000;
                  font-size: 20px;
              }
          }
          .btnenter{
              width: 90%;
              height: 50px;
              overflow: hidden;
              margin: 30px auto;
              background: #e53935;
              .btn{
                  background: none;
                  width: 100%;
                  border-radius: 15px;
                  height: 50px;
                  line-height: 50px;
                  text-align: center;
                  color: #fff;
                  font-size: 20px;
                  font-weight: bolder;
                  border: none;
              }
          }
          .wei{
              width: 100%;
              font-size: .186667rem;
              .weibtn{
                  height: .666667rem;
                  padding:.066667rem 0;
                  img{
                      margin:0 auto;
                      width: .56rem;
                      height: .56rem;
                  }
              }
              .weienter{
                  p{
                    text-align: center;
                  }
                  .backpass{
                      padding:0 10px;
                      span{
                          float:right;
                      }
                  }
                
              }
          }
    }
</style>