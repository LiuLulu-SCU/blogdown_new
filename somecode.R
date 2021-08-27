if (!requireNamespace("remotes")) install.packages("remotes")
remotes::install_github("rstudio/blogdown")
library(blogdown)
new_site(theme = "wowchemy/starter-academic")


#preview your site.预览你的网站
blogdown::serve_site()

#新建post
blogdown::new_post(title = "Hi Hugo",
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




