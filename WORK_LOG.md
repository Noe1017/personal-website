# 个人网站工作记录

本文档记录个人网站的维护和更新历史，用于保存工作上下文，方便快速复现。

---

## 📋 工作记录模板

```markdown
### [日期] - [工作主题]

**工作目标：**
- [目标1]
- [目标2]

**修改文件：**
- `filename.ext` - 修改内容说明

**工作内容：**
1. 具体工作步骤1
2. 具体工作步骤2

**遇到的问题：**
- 问题描述及解决方案

**测试情况：**
- 测试环境及结果

**备注：**
- 其他需要注意的事项
```

---

## 📅 工作历史

### 2025-01-17 - 创建简历 LaTeX 文件并生成 PDF

**工作目标：**
- 将 CV.tex LaTeX 文件编译为 PDF 格式
- 部署到网站并更新 CV 链接

**修改文件：**
- `CV.tex` - 用户的中文简历 LaTeX 源文件
- `resume.cls` - 创建自定义的简历样式类
- `CV.pdf` - 成功生成的 PDF 简历（210KB）
- `index.html` - CV 链接已确认指向 cv.pdf

**工作内容：**
1. 安装 Tectonic LaTeX 引擎（通过 Homebrew）
2. 创建自定义 `resume.cls` 样式文件，支持中文简历格式
3. 修复 CV.tex 中的 LaTeX 语法问题：
   - 将 `\item[-]` 替换为标准的 itemize 环境
   - 修复 geometry、hyperref 等包的选项冲突
   - 添加 array 包以支持高级表格格式
4. 成功编译生成 PDF 文件
5. 确认网站 CV 链接正常工作（macOS 大小写不敏感，cv.pdf 即 CV.pdf）
6. 在浏览器中测试本地网站

**遇到的问题：**
- **geometry 包冲突**：resume.cls 和 CV.tex 都加载了 geometry 包
  - 解决：从 resume.cls 中移除 geometry，让 CV.tex 统一管理
- **\item[-] 语法错误**：不在 list 环境中使用 \item
  - 解决：将所有 \item[-] 替换为标准的 itemize 环境
- **tabular 列格式错误**：缺少 array 包
  - 解决：在 CV.tex 中添加 `\usepackage{array}`
- **\item[] 孤立**：rSubsection 环境改为非 list 环境
  - 解决：删除所有 `\item[]` 行

**测试情况：**
- Tectonic 编译成功
- PDF 文件大小：210KB
- 在浏览器中成功打开预览
- CV 链接正常工作（指向 cv.pdf/CV.pdf）

**备注：**
- CV.tex 是一份完整的中文简历，包含教育、工作经历、项目、技能等部分
- 支持中文（使用 xeCJK 包）
- PDF 已部署到网站，可通过 index.html 的 CV 链接下载

### 2025-01-17 - 创建工作记录系统

**工作目标：**
- 建立工作记录系统，方便保存和复现工作上下文

**修改文件：**
- `WORK_LOG.md` - 新建工作记录文件

**工作内容：**
1. 创建 WORK_LOG.md 文件
2. 设计工作记录模板格式
3. 建立工作历史记录区

**网站当前状态：**
- 域名：jixiangli1017.xyz
- 托管：GitHub Pages
- 主要文件：
  - `index.html` - 主页面（个人信息：李吉祥，美团数据工程师）
  - `stylesheet.css` - 样式表
  - `images/` - 图片资源
  - `CNAME` - 域名配置

**需要完善的内容：**
- News 部分使用占位内容，需更新真实新闻
- Google Scholar、Twitter、Github 链接需要替换
- Honors & Awards 部分使用占位内容
- Hobbies 部分需要填写

**备注：**
- 首次创建工作记录系统
- 后续所有维护工作都应在此文件中记录

---

## 🔗 快速链接

- [网站在线地址](https://jixiangli1017.xyz)
- [GitHub 仓库](#) (添加仓库链接)
- [部署文档](README.md)

---

## 📝 维护清单

### 定期检查项
- [ ] 新闻动态是否需要更新
- [ ] 个人信息和联系方式是否最新
- [ ] 链接是否有效
- [ ] 图片资源是否正常加载

### 待办事项
- [ ] 更新 Google Scholar 链接
- [ ] 更新社交媒体链接
- [ ] 填写真实的荣誉奖项
- [ ] 完善个人兴趣部分
