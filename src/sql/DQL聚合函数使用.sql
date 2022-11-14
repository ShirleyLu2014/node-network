# 聚合函数
USE shirleyhub;
SELECT DATABASE();
# 求所有手机价格的总和 as可以省略
SELECT SUM(price) as totalPrice FROM products WHERE brand = '华为';
# 求华为手机的平均价格
SELECT AVG(price) as totalPrice FROM products WHERE brand = '华为';
# 求最高价格 最低价格
SELECT MAX(price) FROM products;
SELECT MIN(price) FROM products;
# 求华为手机的个数 count()可以传递参数 例如 price
SELECT COUNT(*) FROM products WHERE brand = '华为';
SELECT COUNT(price) FROM products WHERE brand = '华为';
# 去除重复
SELECT COUNT(DISTINCT price) FROM products WHERE brand = '华为';
# 对数据进行分组 GROUP BY 只有分组前面可以加brand因为是按照brand分组的
SELECT brand, AVG(price), AVG(score) FROM products GROUP BY brand;
# HAVING 的使用
SELECT brand, AVG(price) avgPrice, AVG(score) FROM products GROUP BY brand HAVING avgPrice > 2000;
# 评分大于7.5分的手机的平均价格
SELECT AVG(price) FROM products WHERE score > 7.5;
# 评分大于7.5分的手机的平均价格 按照品牌进行分类
SELECT brand, AVG(price) FROM products WHERE score > 7.5 GROUP BY brand;