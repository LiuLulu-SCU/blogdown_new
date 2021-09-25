# 有用的统计数字 {#useful}



## 医保药店 {#num_of_pharmacy}

利用2017城职门诊库，医保数据库中有688家药店，天津有2203家药店，**医保药店的比例为31.23%**。


```stata
use "I:\cz\fyxx\2017\2017_mzfyxx_1.dta",clear
keep if yylb=="00"
bysort yymc:keep if _n==1

set more off
forvalues i=2/16{
append using "I:\cz\fyxx\2017\2017_mzfyxx_`i'.dta", force
keep if yylb=="00"
bysort yymc:keep if _n==1
}

codebook yymc
```




