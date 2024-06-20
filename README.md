# HUST_CSE 2024 信息系统安全实验

## 实验环境

> ubuntu 22.04 lts
> 
> python3.10

- 安装实验环境

```bash
sudo dpkg --add-architecture i386
sudo apt update
sudo apt install -y \
    python3.10-venv \
    seccomp:i386 libseccomp2:i386 libseccomp-dev:i386 \
    apparmor apparmor-utils
```

- 配置python环境

```bash
python -m venv venv
source ./venv/bin/activate
pip install -r requirements.txt
```

## lab1

**使用make run编译运行实验**

需要手动修改exp.py中相关地址

## lab2

**使用make run编译运行实验**

需要手动修改exp.py中相关地址

apparmor实验需要使用`aa-genprof`手动创建配置，配置文件参考`lab2/task5/home.noxke.iss-exp.lab2.task5.banksv`，需要按照实际路径进行修改

## lab3

实验三建议使用提供的seedubuntu虚拟机

首先保持实验环境为初始状态，运行`backup-lab.sh`脚本备份实验环境

`task-run.sh`脚本包含所有操作

执行`./task-run.sh 0`还原实验环境

- task1
  
  `./task-run.sh 1`

- task2
  
  `./task-run.sh 2`

- ...
