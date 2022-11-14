SELECT DATABASE();
USE shirleyHub;
# SELECT 用于从一个或者多个表中检索选中的行record
# 新建一张表
CREATE TABLE IF NOT EXISTS products (
	id INT PRIMARY KEY AUTO_INCREMENT,
	brand VARCHAR(20),
	title VARCHAR(100) NOT NULL,
	price DOUBLE NOT NULL,
	score DECIMAL(2, 1),
	voteCnt INT,
	url VARCHAR(100),
	pid INT
);
# 基本查询 查询表中所有数据和字段
SELECT * FROM products;
# 查询特定的字段
SELECT title, price  FROM products;
# 对查询到的字段起别名
SELECT title as phoneTitle, price as currentPrice FROM products;
# WHWRE查询条件
SELECT title as phoneTitle, price as currentPrice FROM products WHERE id = 1;
# WHERE比较运算符
SELECT price, title FROM products WHERE price > 1000;
SELECT price, title FROM products WHERE price = 999;
SELECT price, title FROM products WHERE price != 999;
# 查询品牌是华为的手机
SELECT * FROM products WHERE brand = '华为';
# 逻辑运算语句 
# 逻辑与
SELECT * FROM products WHERE price > 1000 AND price < 1500;
SELECT * FROM products WHERE price > 1000 && price < 1500;
# BETWEEN  AND 是包含等于的
SELECT * FROM products WHERE price BETWEEN 1000 AND 1500;
# 逻辑或
SELECT * FROM products WHERE price > 5000 || brand = '华为';
# 将某些值设置为null
UPDATE products SET url = NULL WHERE id BETWEEN 85 AND 88;
# 查询某一个值为NULL 查询Null,不可用=号
SELECT * FROM products WHERE url IS NULL;

# 模糊查询
SELECT * FROM products WHERE title LIKE '%华为%';
# 查询出第二个字符是P的 多个__表示多个字符匹配
SELECT * FROM products WHERE title LIKE '_P%';
# in 表示取多个数据集中的一个, 相当于或的关系
SELECT * FROM products WHERE brand IN ('华为', '苹果');

# 对结果排序 
SELECT * FROM products WHERE brand IN ('华为', '苹果') ORDER BY price ASC, score DESC; 
# 分页查询
SELECT * FROM products LIMIT 20 OFFSET 60;
SELECT * FROM products LIMIT 0, 20; # 偏移0 每次查询20条

