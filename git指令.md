# 只介绍会用到的基本指令，更多指令参见 https://www.git-scm.com/book/zh/v2

## 初始化仓库
### 从本地项目初始化仓库
$ git init
### 将本地仓库同步到远端
$ git remote add origin #{仓库地址}
### 从远程仓库克隆到本地
$ git clone #{仓库地址}

## 提交
### 跟踪文件（跟踪未跟踪的文件，对于已跟踪的文件，作用是将其添加到暂存区）
$ git add * （*代表全部文件，也可以只add某个或某种文件，写法参考通配符）
### 提交到本地仓库
$ git commit -m #{提交说明}


## 打标签（本地）
### 查看已有标签
$ git tag
### 添加标签
git tag #{标签}
### 删除标签
$ git tag -d #{标签}

## 分支
### 查看已有分支
$ git branch
### 创建分支
$ git branch #{分支名}
### 合并分支
$ git merge #{分支名}
### 删除分支
$ git branch -d #{分支名}

## 拉取
$ git pull

## 推送（远程）
### 推送分支
$ git push #{远端名} #{分支名}
（默认情况下，远端名为origin，主分支为master，如果不写分支名，则默认推送当前分支，如果当前分支只有一个追踪分支，那么主机名都可以省略）
#### 指定默认远端
$ git push -u #{远端名} #{分支名}
（如果当前分支与多个主机存在追踪关系，那么这个时候-u选项会指定一个默认主机，这样后面就可以不加任何参数使用git push）
### 删除分支
$ git push origin --delete #{分支名}
### 推送标签
#### 某个标签
$ git push origin #{标签名}
#### 所有远端未记录的标签
$ git push origin --tags
#### 删除标签
git push origin :refs/tags/#{标签名}


