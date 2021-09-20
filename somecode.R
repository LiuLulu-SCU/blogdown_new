if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("rstudio/blogdown")
library(blogdown)
new_site(theme = "wowchemy/starter-academic")


#preview your site.预览你的网站
options(blogdown.server.timeout = 600)
blogdown::serve_site()
#

#新建post
blogdown::new_post(title = "Star_constellation",
                   ext = '.Rmarkdown',
                   subdir = "post")

#建立一些设置
blogdown::config_Rprofile()

##图片就放在本目录下（相对路径），不然会报错
#想要显示特色图片 featured-bakers.jpg

#Using GitHub
file.edit(".gitignore")

#
blogdown::check_gitignore()
#check out our content
blogdown::check_content()


#configuration file change the baseurl 在配置文件中更改网址
rstudioapi::navigateToFile("config.yaml", line = 3)

#查看并检查Netlify配置文件
blogdown::config_netlify()
blogdown::check_netlify()
#检查hugo
blogdown::check_hugo()
#检查配置文件
blogdown::check_config()
#
blogdown::check_site()

#打开配置中的参数文件
rstudioapi::navigateToFile("config/_default/params.yaml")
rstudioapi::navigateToFile("config/_default/menus.yaml")
rstudioapi::navigateToFile("config.yaml", line = 15)
rstudioapi::navigateToFile("content/authors/admin/_index.md")

?knitr::include_graphics
