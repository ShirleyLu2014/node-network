const multer = require("@koa/multer"); // 解析form-data数据格式中间件
// const upload = multer({
//   dest: "./uploadfile",
// });

// const path = require('path');
const storage = multer.diskStorage({
  // destination:'public/uploads/'+new Date().getFullYear() + (new Date().getMonth()+1) + new Date().getDate(),
  destination: "src/upload/user",
  filename(ctx, file, cb) {
    const filenameArr = file.originalname.split(".");
    cb(
      null,
      filenameArr[0] + Date.now() + "." + filenameArr[filenameArr.length - 1]
    );
  },
});
const upload = multer({ storage });
module.exports = upload;
