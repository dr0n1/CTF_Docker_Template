## misc_python2.7

**如何使用**  
1：`files\challenges.py`修改为出题的脚本，在`files\requirements.txt`中添加需要安装的模块  


**注意事项**  
1：flag值需要从`/flag`读取  
2：出题后生成的附件需要套一层压缩包以便访问自动下载，zip需要命名为`attachment.zip`  
3：尽量在脚本结束时删除无用的文件，以防非预期  

```python
flag=open('/flag').read()
....
....
....
....
....
z=zipfile.ZipFile('attachment.zip','w')
z.write('附件')
z.close()
```
