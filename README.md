# CTF_Docker_Template

收集&创建&备份 一些CTF题目的docker部署模板  


## 注意事项

1：每个模板中包含了一道例题，请注意识别替换  
2：如果遇到sh文件换行报错可用 `sed -i 's/\r$//' start.sh` 命令解决  


## 构建测试

```shell
docker build -t <镜像名> .
docker run -itd -p 8088:80 -e FLAG=flag{ffflllaaagggg} <镜像名> /start.sh
```

更详细的平台搭建和题目部署过程可以参考[ctf平台搭建与出题指南](https://www.dr0n.top/posts/5ae46a89/)