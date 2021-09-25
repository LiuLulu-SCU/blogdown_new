# (PART) 研究人群 {-}

# 人群纳排代码



## ACS识别

### 住院库中有ACS主要诊断

```stata
use "文件路径",clear
gen ACS=0
replace ACS=1 if strmatch(cyzd,"*I20.0*")
replace ACS=1 if strmatch(cyzd,"*I21")
replace ACS=1 if strmatch(cyzd,"*I21.*")
replace ACS=1 if strmatch(cyzd,"*I22")
replace ACS=1 if strmatch(cyzd,"*I22.*")
replace ACS=1 if strmatch(cyzdmc,"*冠综*")
replace ACS=1 if strmatch(cyzdmc,"*冠脉综合*")
replace ACS=1 if strmatch(cyzdmc,"*冠状动脉综合*")
replace ACS=1 if strmatch(cyzdmc,"*心肌梗死*")
replace ACS=1 if strmatch(cyzdmc,"*心肌梗塞*")
replace ACS=1 if strmatch(cyzdmc,"*心梗*")
replace ACS=1 if strmatch(cyzdmc,"*不稳定心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*不稳定性心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*不稳定型心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*胸痹*")
replace ACS=1 if strmatch(cyzdmc,"*心痛*")
replace ACS=1 if strmatch(cyzdmc,"*初发劳力心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*初发劳力性心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*初发劳力型心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*恶化劳力*")
replace ACS=1 if strmatch(cyzdmc,"*恶化性劳力*")
replace ACS=1 if strmatch(cyzdmc,"*恶化型劳力*")
replace ACS=1 if strmatch(cyzdmc,"*初发劳累心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*初发劳累性心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*初发劳累型心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*恶化劳累*")
replace ACS=1 if strmatch(cyzdmc,"*恶化性劳累*")
replace ACS=1 if strmatch(cyzdmc,"*恶化型劳累*")
replace ACS=1 if strmatch(cyzdmc,"*自发心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*自发性心绞痛*")
replace ACS=1 if strmatch(cyzdmc,"*自发型心绞痛*")
keep if ACS==1
destring grbm,replace

```


### 排除陈旧性心肌梗死

```stata
replace ACS=0 if strmatch(cyzd,"*I25.2*")
replace ACS=0 if strmatch(cyzdmc,"*陈旧*")
```

### 排除未造成心肌梗死

```stata
replace ACS=0 strmatch(cyzdmc,"*未造成心肌梗死*")
```

