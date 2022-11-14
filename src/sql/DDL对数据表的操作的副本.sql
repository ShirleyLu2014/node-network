# 查看所有数据表
SHOW TABLES;
USE shirleyhub;
# 新建表
CREATE TABLE IF NOT EXISTS students (
		name VARCHAR(10),
		age INT,
		score INT
);
# 删除表
DROP TABLE IF EXISTS user;

# 查看表结果
DESC students; 

# 创建一个完整的表
CREATE TABLE IF NOT EXISTS user (
		id INT PRIMARY KEY AUTO_INCREMENT,
		name VARCHAR(20) NOT NULL,
		age INT  DEFAULT 0,
		phoneNum VARCHAR(20) UNIQUE DEFAULT '',
		createTime TIMESTAMP
);

# 修改表
# 修改表名称
ALTER TABLE users RENAME TO user;

