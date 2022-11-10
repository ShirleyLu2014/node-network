const Router = require("koa-router");
const upload = require("../middleware/userUpload");
const router = new Router({ prefix: "/users" });
// 解析query参数
router.get("/query", (ctx, next) => {
  console.log("ctx.request.query", ctx.request.query);
  ctx.response.body = ctx.request.query;
});
// 解析params
router.get("/params/:id", (ctx, next) => {
  console.log("ctx.request.params", ctx.request.params);
  ctx.response.body = ctx.request.params;
});
// 解析json 利用第三方库 koa-bodyparser
router.post("/json", (ctx, next) => {
  console.log("ctx.request.body", ctx.request.body);
  ctx.response.body = ctx.request.body;
});

// 解析form-data 利用第三方库 koa-multer
router.post("/formdata", upload.any(), (ctx, next) => {
  console.log(6666);
  console.log("ctx.request.body", ctx.request.body);
  ctx.response.body = ctx.request.body;
});

// 文件上传解析
router.post("/upload", upload.single("image"), (ctx, next) => {
  console.log("文件上传");
  console.log("ctx.request.body", ctx.request.file);
  ctx.response.body = "文件上传成功";
});
module.exports = router;
