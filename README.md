# 2020_project
## Anonymous BBS powered by flask.  
## 基于Flask实现的匿名论坛
- 前端框架：Bootstrap  
- 后端框架：Flask  
- 开发文档：<a herf="/24-赵书彬-开源软件基础大作业.pdf"></a>
- 测试环境见<a href="/requirements.txt">requirements.txt</a>
- 特别鸣谢<a href="https://github.com/tzY15368">@tzY15368</a>
----
## 安装

下载项目并进入目录：

```shell
git clone git@github.com:StuGRua/2020_project.git
cd 2020_project
```

后端使用Python3.7，通过命令安装依赖项:

```shell
pip install -r requirements.txt
```

## 使用说明

### 服务器启动
导入数据库表：
<a herf="/db_backup.sql">db_backup.sql</a>

启动后端服务：

```shell
python app.py
```

之后可以通过服务器地址在公网中访问  
或者可以通过<http://127.0.0.1:5000>在本地访问


