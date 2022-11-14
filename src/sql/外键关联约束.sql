USE shirleyhub;
SELECT DATABASE();
CREATE TABLE IF NOT EXISTS brand (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	website VARCHAR(100),
	phoneRank INT
);
# 插入数据
INSERT INTO brand (name, website, phoneRank) 
            VALUES ('华为', 'www.huawei.com', 2);
INSERT INTO brand (name, website, phoneRank) 
            VALUES ('OPPO', 'www.OPPO.com', 2);
INSERT INTO brand (name, website, phoneRank) 
            VALUES ('锤子科技', 'www.chuizi.com', 2);
INSERT INTO brand (name, website, phoneRank) 
            VALUES ('vivo', 'www.chuizi.com', 2);
INSERT INTO brand (name, website, phoneRank) 
            VALUES ('小米', 'www.xiaomi.com', 2);
INSERT INTO brand (name, website, phoneRank) 
            VALUES ('苹果', 'www.apple.com', 2);
UPDATE brand SET website = 'www.vivo.com' WHERE name = 'vivo';
DELETE FROM brand WHERE name = '锤子科技';
# 给products添加一个brand_id
ALTER TABLE products ADD brand_id INT;
ALTER TABLE products DROP brand_id;
# 关联外键
ALTER TABLE products ADD FOREIGN KEY(brand_id) REFERENCES brand(id);
UPDATE products SET brand_id = 1 WHERE brand = '华为';
UPDATE products SET brand_id = 2 WHERE brand = 'OPPO';
UPDATE products SET brand_id = 4 WHERE brand = 'vivo';
# 修改brand_id关联外键时的action
# 1.获取到目前的外键名称
# 2.根据名称把外键删除
# 3.重新添加外键约束




						
						