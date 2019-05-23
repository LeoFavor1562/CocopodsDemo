# CocopodsDemo
A demo of how to use cocopods to manage own code.

# 创建pod账号
$ pod trunk me，查看pod账号信息
如果没有，$ pod trunk register #{邮箱账号} #{昵称}
之后被填写的邮箱会受到验证邮件，单击链接验证即可，验证后$ pod trunk me查看是否注册成功

# 创建版本库
## 远端版本库
1.创建Github账号
2.创建远程仓库，如图“创建版本库”
## 将本地库与远端同步
从远程仓库拉取：cd到想存储本地库的文件夹，$ git clone #{远程版本库的地址}
将需要管理的源文件拷贝到该文件夹中（需要被管理的版本库与.git平级）
$ git add *
$ git commit -m #{提交信息}
$ git tag 0.0.1
$ git push --tags
or 
将本地库同步到远端：cd到项目文件夹中 
$ git init
$ git add *
$ git commit -m #{提交信息}
$ git tag 0.0.1
$ git remote add origin #{远端库地址}
$ git pull (如果报fatal: refusing to merge unrelated histories，是因为远程仓库认为远端和本地是两个不相干的库，因此拒绝访问，解决办法$ git pull origin master --allow-unrelated-histories)
$ git push -u origin master
更多git指令参考文件“git指令.md”


# 创建podspec文件
podspec文件是cocopods的索引文件，通过这个文件才能在cocopods中搜索到版本库
1.$ pod spec create #{项目名}
创建podspec文件，可以用xcode打开
2.podspec具体内容见“CocopodsDemo.podspec”文件
3.$ pod spec lint #{podspec文件名，包含后缀} 验证文件，成功会提示：CocopodsDemo.podspec passed validation. 有错误百度
4.验证无误后，

