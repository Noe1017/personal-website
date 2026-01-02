# 学术个人网站

这是一个简洁的学术个人网站模板，类似 https://www.junyi42.com/ 的风格。

## 📁 文件结构

```
personal-website/
├── index.html          # 主页面
├── stylesheet.css      # 样式文件
├── images/             # 图片文件夹
│   ├── profile.jpg     # 你的头像（需要添加）
│   ├── pub1.jpg        # 论文图片（需要添加）
│   ├── pub2.jpg        # 论文图片（需要添加）
│   └── univ1.jpg       # 大学logo（需要添加）
└── README.md           # 本文件
```

## ✏️ 自定义内容

### 1. 编辑个人信息

打开 `index.html`，修改以下内容：

**基本信息：**
- `Your Name` - 你的姓名
- `中文名` - 你的中文名
- `[Your Position]` - 你的职位（如：PhD学生、助理教授等）
- `[Your University/Company]` - 你的学校或公司
- `Prof. Advisor Name` - 导师姓名
- `[Degree/Major/University]` - 学历信息
- `[Research Areas]` - 研究方向

**联系方式：**
- `your.email@example.com` - 你的邮箱
- `cv.pdf` - 你的CV文件路径
- Google Scholar URL - 替换为你的Google Scholar链接
- Twitter URL - 替换为你的Twitter链接
- Github URL - 替换为你的Github链接

**新闻动态：**
在 News 部分修改日期和内容。

**发表论文：**
- 修改论文标题、作者、会议/期刊信息
- 添加项目链接

**教育经历：**
- 添加你的教育背景
- 包含时间、学校、专业、GPA等

**荣誉奖项：**
- 添加你的获奖记录

**个人兴趣：**
- 修改 Hobbies 部分的内容

### 2. 添加图片

将以下图片放到 `images/` 文件夹：

1. **profile.jpg** - 你的头像照片（建议正方形，至少 300x300px）
2. **pub1.jpg, pub2.jpg** - 论文展示图片（建议 400x240px）
3. **univ1.jpg** - 大学/公司logo（建议 200x200px）

## 🚀 部署到 GitHub Pages（推荐）

### 步骤 1：创建 GitHub 仓库

1. 登录 GitHub
2. 创建新仓库，命名为 `yourname.github.io`（替换 `yourname` 为你的GitHub用户名）
   - 或使用任意名字，如 `personal-website`

### 步骤 2：上传文件

**方法 A：通过网页上传**
1. 在仓库页面点击 "uploading an existing file"
2. 拖拽所有文件（index.html, stylesheet.css, images/）
3. 点击 "Commit changes"

**方法 B：通过命令行**
```bash
cd personal-website
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/yourusername/your-repo-name.git
git push -u origin main
```

### 步骤 3：启用 GitHub Pages

1. 进入仓库 Settings
2. 左侧菜单找到 "Pages"
3. Source 选择 "Deploy from a branch"
4. Branch 选择 "main" 和 "/ (root)"
5. 点击 Save

几分钟后，你的网站会在以下地址可用：
- `https://yourusername.github.io/your-repo-name/`

## 🌐 绑定自定义域名 (jixiangli1017.xyz)

### 步骤 1：在 GitHub 添加自定义域名

1. 仓库 Settings → Pages
2. 在 "Custom domain" 处输入：`jixiangli1017.xyz`
3. 点击 Save
4. 等待DNS检查完成
5. 勾选 "Enforce HTTPS"（可选但推荐）

### 步骤 2：配置域名DNS

在你的域名服务商（阿里云/腾讯云/Cloudflare等）添加以下DNS记录：

**如果你使用仓库名为 `yourname.github.io`：**
```
类型: CNAME
主机记录: www
记录值: yourname.github.io
```

```
类型: A
主机记录: @
记录值: 185.199.108.153
```

```
类型: A
主机记录: @
记录值: 185.199.109.153
```

```
类型: A
主机记录: @
记录值: 185.199.110.153
```

```
类型: A
主机记录: @
记录值: 185.199.111.153
```

**如果仓库名是其他名字（如 `personal-website`）：**
```
类型: CNAME
主机记录: www
记录值: yourname.github.io
```

```
类型: CNAME
主机记录: @
记录值: yourname.github.io
```

### 步骤 3：添加 CNAME 文件（可选）

在网站根目录创建 `CNAME` 文件（无扩展名），内容为：
```
jixiangli1017.xyz
```

然后将此文件也上传到 GitHub。

### 步骤 4：等待生效

DNS 更改通常需要 10分钟 到 24小时 生效。
完成后，访问 `https://jixiangli1017.xyz` 即可看到你的网站。

## 📱 其他部署方式

### Vercel（最简单）

1. 访问 [vercel.com](https://vercel.com)
2. 用 GitHub 登录
3. 导入你的仓库
4. Vercel 会自动检测并部署
5. 在 Settings → Domains 添加 `jixiangli1017.xyz`
6. Vercel 会提供DNS配置，按提示添加即可

### Netlify

1. 访问 [netlify.com](https://netlify.com)
2. 拖拽 `personal-website` 文件夹到网站
3. 在 Site Settings → Domain management 添加自定义域名
4. 按提示配置DNS

## 🎨 自定义样式

如果需要修改颜色、字体、间距等，编辑 `stylesheet.css` 文件。

主要样式变量：
- 主色调：修改 `a` 标签的 `color` 属性
- 字体：修改 `body` 的 `font-family`
- 间距：调整各部分的 `margin` 和 `padding`

## 📝 注意事项

1. 确保所有图片都已添加到 `images/` 文件夹
2. 检查所有链接是否正确
3. 在不同设备上测试网站响应式效果
4. 定期更新内容和新闻
5. 建议使用 HTTPS 访问

## 🆘 常见问题

**Q: 网站显示不正常？**
A: 检查 `stylesheet.css` 文件路径是否正确。

**Q: 图片不显示？**
A: 确保图片在 `images/` 文件夹中，文件名与 HTML 中的引用一致。

**Q: 域名无法访问？**
A: DNS 配置需要时间生效，一般几分钟到几小时。检查DNS记录是否正确。

**Q: 想要添加更多功能？**
A: 可以添加 JavaScript、更多页面（如 research.html, teaching.html）等。

## 📧 联系方式

如有问题，请参考 GitHub Pages 官方文档：
https://docs.github.com/en/pages

祝你创建网站顺利！🎉
