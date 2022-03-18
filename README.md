# v2ray-glitch

在Glitch中部署v2ray服务

### 请勿重度使用！！！

### 请勿重度使用！！！

### 请勿重度使用！！！

官网: https://glitch.com/

## 部署步骤: New Project -> Import form Github -> 将本项目网址粘贴进去 "https://github.com/ALLOC20/v2ray-glitch"

### 1. New Project

<img width="800" alt="1" src="img/1.png">

### 2. Import form Github

<img width="800" alt="2" src="img/2.png">

### 3. 粘贴本项目网址

<img width="800" alt="3" src="img/3.png">

## 必要调整: 改应用名称 -> 生成UUID并填入代码中 -> 是否保持唤醒 -> 刷新

### 1. 改应用名称

<img width="800" alt="4" src="img/4.png">

### 2. 生成UUID并填入代码中

  #### 2.1 前往地址: "https://www.uuidgenerator.net", 生成一个UUID

  <img width="800" alt="5" src="img/5.png">

  #### 2.2 更改下图中箭头指示部分

  <img width="800" alt="6" src="img/6.png">

  #### 2.3 更改self-ping.py中的url部分，将xxx改为(1.)步骤中设置的应用名称
  
  <img width="800" alt="7" src="img/7.png">

### 3.是否保持唤醒(建议关闭,浪费时长)

取消build.sh中第二行注释为保持唤醒

<img width="800" alt="8" src="img/8.png">

### 4.刷新

Tool -> Terminal -> 输入“refresh”回车

<img width="800" alt="9" src="img/9.png">

打开网址显示“Bad Request”表示部署成功

# 客户端配置

### 1.Shadowrocket

<img width="500" alt="10" src="img/10.png">

### 2.V2rayNG

<img width="500" alt="11" src="img/11.png">

### 3.Clash

在proxies字段下填入以下内容，注意缩进

<img width="500" alt="12" src="img/12.png">

# Readme in English  

Official: https://glitch.com/  

How to Install: New Project -> Import form Github -> paste "https://github.com/ALLOC20/v2ray-glitch"

TODO...

# 特别感谢 ：

* [v2fly](https://github.com/v2fly/v2ray-core)
* [bclswl0827](https://github.com/bclswl0827/v2ray-heroku)
