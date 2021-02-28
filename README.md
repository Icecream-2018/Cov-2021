# Cov-2021
全国疫情数据监控项目,更新百度词云源

该项目源自[东方瑞通的视频教程](https://www.bilibili.com/video/BV177411j7qJ#reply2628377537)

#### 项目介绍
基于python3.7 flask框架，部署基于gunicorn

#### 使用说明
1. 环境要求，项目在pycharm下完成，可在window系统下实现本地运行，亦可部署至linux.
2. 注意事项：
- mysql版本为5.7
- 基于utf8，表结构见sql文件
- 数据可通过spider.py运行获取

#### 更新说明
已更新源视频中的腾讯api接口，将原百度疫情热搜更换为百度热点
