console.log(1222);
const Koa = require("koa"); // 导出一个类
const userRouter = require("./src/router/user");
const bodyparser = require("koa-bodyparser");
const upload = require("./src/middleware/userUpload");
const app = new Koa();
// 处理json参数中间件
app.use(bodyparser());
// app.use(upload.any());
app.use(userRouter.routes());
app.use(userRouter.allowedMethods()); // 处理非法路由 会返回 Method Not Allowed
// 中间件
// app.use(async ctx => {
//   // 返回
//   // ctx.body = 'Hello World koa'; // 如果没有返回结果，就会显示not found
// });

app.listen(3000, () => {
  console.log(12333);
}); // 监听端口
