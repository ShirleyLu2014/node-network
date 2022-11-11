# 新建数据库
CREATE DATABASE IF NOT EXISTS shirleyhub;

# 查看所有数据库
SHOW DATABASES;

# 使用某个数据库 
USE coderhub;

# 查看正在使用哪个数据库
SELECT DATABASE();

# 删除数据库
DROP DATABASE IF EXISTS shirleyhub;

# 修改数据库
ALTER DATABASE shirleyhub CHARACTER SET = utf8
												  COLLATE = utf8_unicode_ci;





