# 特效教学区

线上入口 `/learn/`，作业入口 `/classroom/results.html`。48节课程、7项作业保留已核对值、补设值和未完成项；0/7完整考核验收。

`static/classroom/` 是可部署静态资源快照，包含教学截图、预览、工程与证据文件。原教学视频托管于GitHub Release，可逐课下载，不进入Git源码；通过文件选择器在浏览器本地播放，定位按钮仍可使用。图片用WebP压缩，工程保持原始文件。

推送main后由GitHub Actions使用Hugo 0.167.0构建，直接通过Pages artifact部署。不要把public/或resources/_gen缓存提交。
