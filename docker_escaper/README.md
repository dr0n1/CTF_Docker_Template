## docker_escaper

>来自[WinMin](https://github.com/WinMin)师傅

docker（deploy）-> qemu（flag）-> docker（attack）

**如何使用**  
1：修改Dockerfile中qemu-system-x86_64的启动参数  
2：修改user-data为自定义的配置(可以参考[官方手册](https://cloudinit.readthedocs.io/en/latest/))  
3：构建镜像：`docker build -t <镜像名> .`


**注意事项**  
1：不支持动态flag，请设定静态flag
2：运行的时候注意手动指定kvm的映射(如果使用了kvm)
