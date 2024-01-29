请确保已经安装`git`  和 ``bitcoin-core``

###bitcoin-core下载地址:
https://bitcoincore.org/

安装启动教程自行搜索

随后执行上述命令```atomicals-electrumx.sh``` 自动安装python和依赖项



###atomicals-electrumx ```.env``` 配置文件说明

DAEMON_URL: BTC节点地址
DB_DIRECTORY: atomicals节点数据存储路径

其余默认即可。 详见官方文档。

```.env```中配置完bitcoin节点地址后，运行 ```run.sh``` 即可
nohup ./run.sh >output.log 2>&1 & 
