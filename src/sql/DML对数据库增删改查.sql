SELECT DATABASE();
USE shirleyhub;
ALTER TABLE user ADD updateTime TIMESTAMP;

ALTER TABLE user MODIFY updateTime DATETIME;
ALTER TABLE user MODIFY createTime DATETIME;
# 给表格中插入数据
INSERT INTO user（id, `name`, age, phoneNum, createTime, updateTime）
								 VALUES (null, 'lulu', 20, '18818218069', '2022-10-10 10:00:00', '2022-11-02 10:00:00');
ALTER TABLE user DROP createTime;
ALTER TABLE user DROP updateTime;
ALTER TABLE user DROP age;
ALTER TABLE user DROP `name`;
ALTER TABLE user DROP `phoneNum`;
INSERT INTO user id VALUES 10;
DROP TABLE user;
CREATE TABLE IF NOT EXISTS user (
	id INT PRIMARY KEY AUTO_INCREMENT,
	age INT,
	name VARCHAR(20)
);
INSERT INTO user (id, name, age)
					  VALUES (1, 'HAHAH', 20);
ALTER TABLE user ADD updateTime DATETIME; 
INSERT INTO user ( name, age, updateTime)
					  VALUES ('HAHAH', 20, '2022-10-01 10:10:10');
ALTER TABLE user ADD createTime TIMESTAMP;
# 修改createtime在创建时为默认当前时间戳
ALTER TABLE user MODIFY COLUMN createTime TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP;
# 修改updateTime在创建时候为当前时间戳更新时候为当前时间戳
ALTER TABLE user MODIFY updateTime TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;
# 插入数据
INSERT INTO user (name, age) 
					 VALUES ('shirley', 28);
					 
# 删除所有数据
DELETE FROM user;

# 删除符合条件的数据
DELETE FROM user WHERE id = 1;
# 更新所有数据
UPDATE user SET name = 'shirley', age = 18;
# 更新特定的数据
UPDATE user SET name = 'lulu', age = 19  WHERE id = 2;

