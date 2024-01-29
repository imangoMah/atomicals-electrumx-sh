请确保已经安装`git`  和 ``bitcoin-core``

### bitcoin-core下载地址:
https://bitcoincore.org/
#### 注意 bitcoin全节点中 ```txindex=1``` 一定要设置为1。

安装启动教程自行搜索



随后执行上述命令```atomicals-electrumx.sh``` 自动安装python和依赖项



### atomicals-electrumx ```.env``` 配置文件说明

```DAEMON_URL```: BTC节点  例如: ```http://用户名:密码@localhost:8332/ ```

```DB_DIRECTORY```: atomicals节点数据存储路径

其余默认即可。 详见官方文档。

```.env```中配置完bitcoin节点地址后，运行 ```run.sh``` 即可
``` sh
nohup ./run.sh >output.log 2>&1 & 
