# Pencil-Kernel
#### 介绍
64位,支持UEFI引导的Pencil-Kernel
#### 编译环境
##### 编译器
使用GCC编译(版本4.9.1)<br />
Windows下,可以用`Mingw`编译UEFI程序和内核.<br />
Linux下编译UEFI需要用交叉编译器.<br />
```bash
sudo apt install gcc-mingw-w64-x86-64
```
注意:不同的编译器编译的结果可能不同.我们所用的编译器从左至右分别使用`rcx`,`rdx`,`r8`,`r9`和栈传递参数.
如果编译器使用不同调用约定,可能导致部分模块工作不正常.会受到影响的有`interrupt.c`中的中断入口向中断处理函数传参的内联汇编代码和
`thread.c`中的`swtich`函数.
#### 运行(以U盘为例)
1.先格式化为FAT32/16/12文件系统.(如果原来就是FAT32/16/12文件系统,则可以跳过此步骤)<br />
2.在根目录下创建EFI目录,然后在EFI文件夹中创建Boot目录<br />
3.将编译后的程序命名为`BootX64.efi`,复制到`(2)`中创建的Boot文件夹中<br />
4.将编译后的kernel.sys复制到根目录下.<br />
5.在根目录下创建`BootConfig.txt`,并输入以下内容:
```
.x=1920
.y=1018
.kernel = "kernel.sys"
.typeface = "typeface.sys"
```
需要保存为UTF-16 LE 格式.
其中,`.x`和`.y`设置分辨率,`.kernel`指定内核文件.<br />
6.将符合utf-8编码的16*16点阵字库命名为`BootConfig.txt`中设定的文件名,并复制到根目录下.<br />
7.从U盘启动即可.<br />