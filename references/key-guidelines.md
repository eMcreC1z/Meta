# 关键指南、工具与资源索引

> 更新日期：2026-07-06。建议投稿前重新核对官方页面和期刊Instructions for Authors。

## 1. 报告规范

### PRISMA 2020

- 用途：系统综述与Meta分析通用报告规范。
- 内容：27项清单、扩展清单、摘要清单、流程图模板。
- 官方页面：https://www.prisma-statement.org/prisma-2020-statement
- 代表文献：Page MJ, et al. The PRISMA 2020 statement: an updated guideline for reporting systematic reviews. BMJ 2021;372:n71.

### PRISMA Extensions

- 用途：覆盖主PRISMA未充分覆盖的专题综述。
- 官方页面：https://www.prisma-statement.org/extensions
- 常用扩展：PRISMA-DTA、PRISMA-NMA、PRISMA-IPD、PRISMA-P、PRISMA-ScR、PRISMA-S、PRISMA-Harms、PRISMA-Living Systematic Reviews。

### PRISMA-DTA

- 用途：诊断准确性系统综述与Meta分析。
- 页面：https://www.equator-network.org/reporting-guidelines/prisma-dta/
- 代表文献：McInnes MDF, et al. Preferred Reporting Items for a Systematic Review and Meta-analysis of Diagnostic Test Accuracy Studies: The PRISMA-DTA Statement. JAMA. 2018;319(4):388-396.

### PRISMA-NMA

- 用途：网状Meta分析报告。
- 官方页面：https://www.prisma-statement.org/nma
- 代表文献：Hutton B, et al. The PRISMA Extension Statement for Reporting of Systematic Reviews Incorporating Network Meta-analyses. Ann Intern Med. 2015;162(11):777-784.

### PRISMA-IPD

- 用途：个体参与者数据Meta分析。
- 官方页面：https://www.prisma-statement.org/ipd
- 代表文献：Stewart LA, et al. Preferred Reporting Items for Systematic Review and Meta-Analyses of individual participant data: the PRISMA-IPD Statement. JAMA. 2015;313(16):1657-1665.

### PRISMA-P

- 用途：系统综述与Meta分析Protocol。
- 官方入口：https://www.prisma-statement.org/extensions

### PRISMA-S

- 用途：系统综述检索策略报告。
- 官方入口：https://www.prisma-statement.org/extensions

### PRISMA-ScR

- 用途：范围综述。
- 官方入口：https://www.prisma-statement.org/extensions

### SWiM

- 用途：不能进行效应量Meta分析时的干预综述叙述性综合报告。
- 官方入口：https://www.prisma-statement.org/extensions

### TRIPOD+AI / TRIPOD-SRMA

- 用途：预测模型、AI模型、机器学习模型研究和相关系统综述。
- 官方页面：https://www.tripod-statement.org/
- 备注：TRIPOD+AI替代原TRIPOD 2015，适用于回归、机器学习、AI预测模型的透明报告。

## 2. 方法学手册

### Cochrane Handbook for Systematic Reviews of Interventions

- 用途：干预性系统综述与Meta分析核心方法手册。
- 当前在线版：https://www.cochrane.org/authors/handbooks-and-manuals/handbook/current
- 数据分析与Meta分析章节：https://www.cochrane.org/authors/handbooks-and-manuals/handbook/current/chapter-10
- 网状Meta章节：https://www.cochrane.org/authors/handbooks-and-manuals/handbook/current/chapter-11
- IPD章节：https://www.cochrane.org/authors/handbooks-and-manuals/handbook/current/chapter-26

### GRADE Handbook

- 用途：证据确定性和推荐强度评价。
- 官方页面：https://gdt.gradepro.org/app/handbook/handbook.html
- GRADEpro：https://www.gradepro.org/

## 3. 偏倚风险与质量评价工具

### RoB 2

- 用途：随机对照试验偏倚风险。
- 官方页面：https://www.riskofbias.info/
- 版本：个体随机、集群随机、交叉设计RCT。

### ROBINS-I

- 用途：非随机干预研究偏倚风险。
- 官方页面：https://www.riskofbias.info/

### ROBINS-E

- 用途：非随机暴露研究偏倚风险。
- 官方页面：https://www.riskofbias.info/

### ROB-ME

- 用途：综合中缺失证据/选择性未报告结果导致的偏倚。
- 官方页面：https://www.riskofbias.info/

### QUADAS-2

- 用途：诊断准确性研究偏倚风险和适用性。
- 页面：https://www.bristol.ac.uk/population-health-sciences/projects/quadas/quadas-2/

### PROBAST / PROBAST+AI

- 用途：诊断或预后预测模型偏倚风险和适用性。
- 官方入口：https://www.probast.org/
- 关联报告规范：https://www.tripod-statement.org/

### AMSTAR 2

- 用途：系统综述方法学质量，尤其是干预效果综述。
- 官方页面：https://amstar.ca/Amstar-2.php
- 关键点：16条目，不建议总分化；整体评级基于关键缺陷。

### ROBIS

- 用途：系统综述偏倚风险。
- 官方页面：https://www.bristol.ac.uk/population-health-sciences/projects/robis/

### robvis

- 用途：偏倚风险可视化。
- 入口：https://www.riskofbias.info/
- R包：`robvis`

## 4. 证据分级与网状Meta评价

### GRADE

- 用途：干预、诊断、预后等证据确定性评价。
- 官方手册：https://gdt.gradepro.org/app/handbook/handbook.html

### CINeMA

- 用途：网状Meta分析中每个比较的证据可信度评价。
- 页面：https://cinema.ispm.unibe.ch/

## 5. 注册平台

### PROSPERO

- 用途：健康相关系统综述Protocol注册。
- 页面：https://www.crd.york.ac.uk/prospero/

### OSF Registries

- 用途：开放科学注册，适合PROSPERO不接收或非健康领域综述。
- 页面：https://osf.io/registries

## 6. 常用R包文档入口

### meta

- CRAN：https://cran.r-project.org/package=meta
- 主要函数：`metabin()`、`metacont()`、`metagen()`、`metaprop()`、`metareg()`。

### metafor

- 官方站点：https://www.metafor-project.org/
- CRAN：https://cran.r-project.org/package=metafor
- 主要函数：`rma()`、`rma.mv()`、`rma.glmm()`、`escalc()`。

### netmeta

- CRAN：https://cran.r-project.org/package=netmeta
- 主要函数：`pairwise()`、`netmeta()`、`netgraph()`、`netrank()`。

### mada

- CRAN：https://cran.r-project.org/package=mada
- 用途：诊断准确性Meta。

### dosresmeta

- CRAN：https://cran.r-project.org/package=dosresmeta
- 用途：剂量反应Meta。

### dmetar

- GitHub/文档：https://dmetar.protectlab.org/
- 用途：教学友好的Meta分析辅助函数。

## 7. 投稿前必须核对

1. 目标期刊是否要求PRISMA 2020清单。
2. 是否要求protocol注册号。
3. 是否要求完整检索式作为补充材料。
4. 是否要求数据和代码开放。
5. 是否要求GRADE Summary of Findings表。
6. 是否对预印本、AI辅助写作、数据共享有特殊政策。
