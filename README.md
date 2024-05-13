# CTF_Docker_Template

一些适用于动态flag题目的docker部署模板


## 注意事项

**每个模板中包含了一道例题，请注意识别替换**

1：注意`EXPOSE`的使用，可能会在某些平台中产生错误  
2：默认使用`$FLAG`传递flag，如果是其他变量，手动替换下start.sh中的`$FLAG`即可  
3：注意平台题目内存大小的设置


更详细的部署过程可以参考[ctf平台搭建与出题指南](https://www.dr0n.top/posts/5ae46a89/)