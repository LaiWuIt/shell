#!/bin/bash
#生成随机字符文件名
#使用for循环在当前目录下批量创建10个html文件，其中每个文件需要包含10个随机小写字母加固定字符串rand,示例：
#ad9862fdcf_rand.html

dir=./rand
[ -d $dir ] || mkdir $dir 
for i in `seq 10`
do
	#rand=$(echo $RANDOM|md5sum|sed 's#[^a-z]##g'|cut -c 2-11)
	rand=$(openssl rand -base64 40|sed 's#[^a-z]##g'|cut -c 2-11)
	touch rand/${rand}_dog.html
done



