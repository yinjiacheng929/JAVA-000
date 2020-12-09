# 作业说明

### 数据库数据
* test.sql 和test1.sql

配置两个数据库，端口3306和3307

### shardingSphere 配置文件
config-sharding.yaml



```schemaName: sharding_db
 
 dataSources:
   ds_0:
     url: jdbc:mysql://127.0.0.1:3306/test0?serverTimezone=UTC&useSSL=false
     username: root
     password: 150405
     connectionTimeoutMilliseconds: 30000
     idleTimeoutMilliseconds: 60000
     maxLifetimeMilliseconds: 1800000
     maxPoolSize: 50
     minPoolSize: 1
     maintenanceIntervalMilliseconds: 30000
   ds_1:
     url: jdbc:mysql://127.0.0.1:3307/test1?serverTimezone=UTC&useSSL=false
     username: root
     password: 150405
     connectionTimeoutMilliseconds: 30000
     idleTimeoutMilliseconds: 60000
     maxLifetimeMilliseconds: 1800000
     maxPoolSize: 50
     minPoolSize: 1
     maintenanceIntervalMilliseconds: 30000
 
 rules:
 - !SHARDING
   tables:
     t_order:
       actualDataNodes: ds_${0..1}.order_${0..15}//两个库，每个库16张表
       tableStrategy:
         standard:
           shardingColumn: id
           shardingAlgorithmName: order_inline
       keyGenerateStrategy:
         column: id
         keyGeneratorName: snowflake
   defaultDatabaseStrategy:
     standard:
       shardingColumn: id
       shardingAlgorithmName: database_inline
   defaultTableStrategy:
     none:
   
   shardingAlgorithms:
     database_inline:
         type: INLINE
         props:
           algorithm-expression: ds_${id % 2}
     t_order_inline:
       type: INLINE
       props:
         algorithm-expression: order_${id % 3}
   keyGenerators:
     snowflake:
       type: SNOWFLAKE
       props:
           worker-id: 123
```
 server.yaml

```authentication:
    users:
      root:
        password: root
      sharding:
        password: sharding
        authorizedSchemas: sharding_db
  
  props:
    max-connections-size-per-query: 1
    acceptor-size: 16  # The default value is available processors count * 2.
    executor-size: 16  # Infinite by default.
    proxy-frontend-flush-threshold: 128  # The default value is 128.
      # LOCAL: Proxy will run with LOCAL transaction.
      # XA: Proxy will run with XA transaction.
      # BASE: Proxy will run with B.A.S.E transaction.
    proxy-transaction-type: LOCAL
    proxy-opentracing-enabled: false
    proxy-hint-enabled: false
    query-with-cipher-column: true
    sql-show: true
    check-table-metadata-enabled: false
```
直接运行start.bat 会提示mysql服务已存在，指定一个不会重复的端口启动就运行成功了

>C:\Users\Admin>mysql -P13306 -uroot -proot
 mysql: [Warning] Using a password on the command line interface can be insecure.
 Welcome to the MySQL monitor.  Commands end with ; or \g.
 Your MySQL connection id is 6
 Server version: 5.7.29-ShardingSphere-Proxy 5.0.0-RC1
 
