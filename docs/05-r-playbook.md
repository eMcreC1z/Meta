# 05｜R语言实现路线图与常用代码骨架

## 1. R包选择

| 任务 | 推荐包 |
|---|---|
| 常规pairwise Meta | `meta`, `metafor` |
| 高度自定义模型 | `metafor` |
| 网状Meta | `netmeta`, `gemtc`, `BUGSnet` |
| 诊断准确性Meta | `mada`, `metafor`, `meta`, `diagmeta` |
| 剂量反应Meta | `dosresmeta`, `drmeta`, `metafor` |
| 患病率/单臂比例 | `meta`, `metafor` |
| 三层/多层Meta | `metafor` |
| 发表偏倚 | `metafor`, `metasens`, `weightr` |
| GOSH/影响诊断 | `metafor`, `dmetar` |
| 偏倚风险图 | `robvis` |
| PRISMA流程图 | `PRISMA2020`, `DiagrammeR` |
| 数据清洗 | `tidyverse`, `janitor`, `readxl` |
| 表格输出 | `gt`, `flextable`, `gtsummary` |
| 可复现写作 | `rmarkdown`, `quarto`, `renv` |

## 2. 项目目录建议

```text
project-name/
  protocol/
    protocol.md
    registration.pdf
  search/
    search_strategy.txt
    database_results/
    dedup_log.csv
  screening/
    title_abstract.csv
    full_text.csv
    exclusion_reasons.csv
  data/
    raw_extraction.xlsx
    clean_effects.csv
    codebook.csv
  rob/
    rob2.xlsx
    rob_summary.csv
  analysis/
    00_setup.R
    01_clean_data.R
    02_pairwise_meta.R
    03_sensitivity.R
    04_figures.R
  outputs/
    tables/
    figures/
  manuscript/
    manuscript.qmd
    supplement.qmd
```

## 3. 可复现环境

```r
install.packages(c(
  "tidyverse", "janitor", "readxl",
  "meta", "metafor", "netmeta", "mada", "dosresmeta",
  "robvis", "gt", "flextable", "renv"
))

renv::init()
renv::snapshot()
```

建议所有分析脚本顶部写明：

```r
set.seed(20260706)
sessionInfo()
```

## 4. 二分类结局：`meta::metabin`

```r
library(meta)

m1 <- metabin(
  event.e = event_treat,
  n.e     = n_treat,
  event.c = event_control,
  n.c     = n_control,
  studlab = paste(author, year),
  data    = dat,
  sm      = "RR",
  method  = "MH",
  random  = TRUE,
  common  = FALSE,
  method.tau = "REML",
  hakn    = TRUE
)

summary(m1)
forest(m1, prediction = TRUE)
funnel(m1)
metabias(m1, method.bias = "linreg")
```

## 5. 连续型结局：`meta::metacont`

```r
m2 <- metacont(
  n.e     = n_treat,
  mean.e  = mean_treat,
  sd.e    = sd_treat,
  n.c     = n_control,
  mean.c  = mean_control,
  sd.c    = sd_control,
  studlab = paste(author, year),
  data    = dat,
  sm      = "MD",      # 若不同量表可用 "SMD"
  random  = TRUE,
  common  = FALSE,
  method.tau = "REML",
  hakn    = TRUE
)

summary(m2)
forest(m2, prediction = TRUE)
```

## 6. 通用逆方差：HR、调整后OR/RR/β

```r
library(metafor)

dat <- dat |>
  mutate(
    yi  = log(hr),
    sei = (log(ci_upper) - log(ci_lower)) / (2 * 1.96),
    vi  = sei^2
  )

m3 <- rma(
  yi = yi,
  vi = vi,
  data = dat,
  method = "REML",
  test = "knha"
)

summary(m3)
predict(m3, transf = exp)
forest(m3, slab = paste(dat$author, dat$year), transf = exp)
```

## 7. 比例/患病率Meta分析

### 7.1 `meta::metaprop`

```r
m_prop <- metaprop(
  event = cases,
  n = total,
  studlab = paste(author, year),
  data = dat,
  sm = "PLOGIT",
  method = "GLMM",
  random = TRUE,
  common = FALSE
)

summary(m_prop)
forest(m_prop, prediction = TRUE)
```

### 7.2 `metafor::rma.glmm`

```r
m_glmm <- rma.glmm(
  xi = cases,
  ni = total,
  data = dat,
  measure = "PLO",
  model = "UM.RS"
)

summary(m_glmm)
predict(m_glmm, transf = transf.ilogit)
```

## 8. 相关系数Meta分析

```r
dat <- dat |>
  mutate(
    yi = atanh(r),
    vi = 1 / (n - 3)
  )

m_cor <- rma(yi, vi, data = dat, method = "REML", test = "knha")
summary(m_cor)
predict(m_cor, transf = tanh)
```

## 9. 诊断准确性Meta分析

```r
library(mada)

dta <- with(dat, mada::madauni(TP, FN, FP, TN, names = paste(author, year)))

# 描述性
forest(dta)

# Reitsma双变量模型
m_dta <- reitsma(dat[, c("TP", "FN", "FP", "TN")])
summary(m_dta)
plot(m_dta)
```

注意：实际投稿时应报告敏感度、特异度、LR、DOR、SROC，并解释阈值效应和临床适用性。

## 10. 网状Meta分析：`netmeta`

```r
library(netmeta)

pw <- pairwise(
  treat = list(treat1, treat2, treat3),
  event = list(event1, event2, event3),
  n = list(n1, n2, n3),
  studlab = study,
  data = dat,
  sm = "RR"
)

nma <- netmeta(
  TE = pw$TE,
  seTE = pw$seTE,
  treat1 = pw$treat1,
  treat2 = pw$treat2,
  studlab = pw$studlab,
  data = pw,
  sm = "RR",
  random = TRUE,
  common = FALSE,
  method.tau = "REML"
)

summary(nma)
netgraph(nma)
forest(nma, ref = "Placebo")
netrank(nma, small.values = "good")
netheat(nma)
```

网状Meta报告排序时必须同时报告排序不确定性；不能把SUCRA/P-score当作疗效结论。

## 11. 剂量反应Meta分析：`dosresmeta`

```r
library(dosresmeta)

m_dose <- dosresmeta(
  formula = logrr ~ rcs(dose, knots = quantile(dose, c(.10, .50, .90), na.rm = TRUE)),
  id = study_id,
  type = type,
  cases = cases,
  n = total,
  se = se_logrr,
  data = dat,
  method = "reml"
)

summary(m_dose)

newdat <- data.frame(dose = seq(min(dat$dose), max(dat$dose), length.out = 100))
pred <- predict(m_dose, newdata = newdat, xref = 0, expo = TRUE)
```

## 12. 亚组分析

```r
m_sub <- update.meta(m1, subgroup = risk_group)
forest(m_sub, prediction = TRUE)
```

或用`metafor`：

```r
m_mod <- rma(yi, vi, mods = ~ risk_group, data = dat, method = "REML", test = "knha")
summary(m_mod)
```

解释要点：亚组差异应看交互项，不是看各亚组是否分别P<0.05。

## 13. Meta回归

```r
m_reg <- rma(
  yi, vi,
  mods = ~ mean_age + dose + followup_months,
  data = dat,
  method = "REML",
  test = "knha"
)
summary(m_reg)
```

注意：研究数少时不应堆多个协变量。经验上每个协变量至少需要足够研究数，且必须有临床依据。

## 14. Leave-one-out与影响诊断

```r
leave1out(m3)
inf <- influence(m3)
plot(inf)
baujat(m1)
```

## 15. 发表偏倚/小样本效应

```r
funnel(m3)
regtest(m3, model = "rma")
trimfill(m3)
```

注意：研究数少于10时不宜过度解释漏斗图和Egger检验。

## 16. 三层Meta分析

同一研究贡献多个相关效应量时可用三层模型。

```r
m_3level <- rma.mv(
  yi,
  vi,
  random = ~ 1 | study_id/effect_id,
  data = dat,
  method = "REML"
)
summary(m_3level)
```

## 17. 偏倚风险图

```r
library(robvis)

rob_summary <- read.csv("rob/rob_summary.csv")
rob_summary(rob_summary, tool = "ROB2")
rob_traffic_light(rob_summary, tool = "ROB2")
```

## 18. 可复现输出建议

- 所有森林图保存为PDF/SVG。
- 所有表格从清洗后的CSV自动生成。
- 论文结果不要手动复制P值。
- 使用Quarto/R Markdown生成主文和补充材料。
- 使用`renv.lock`固定R包版本。

## 19. 最小分析清单

每个主要结局分析脚本至少包括：

1. 数据读取。
2. 数据检查：缺失、重复、方向、单位。
3. 效应量计算。
4. 主模型。
5. 异质性指标。
6. 预测区间。
7. 森林图。
8. 敏感性分析。
9. 亚组/Meta回归。
10. 发表偏倚。
11. 导出表格与图。
12. sessionInfo。
