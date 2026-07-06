# 系统综述与Meta分析Protocol模板

## 1. 标题

[研究对象/干预/暴露/检测/模型] 与 [结局] 的关系：系统综述与Meta分析Protocol

英文标题：

[Intervention/exposure/test/model] for [population/outcome]: protocol for a systematic review and meta-analysis

## 2. 背景

### 2.1 疾病负担或临床问题

- 简述疾病/问题的重要性。
- 给出临床或公共卫生决策场景。

### 2.2 现有证据不足

- 原始研究结果是否不一致。
- 是否已有系统综述。
- 既有综述的局限：过时、范围过宽、方法不规范、未做GRADE、未分析剂量反应/亚组/安全性等。

### 2.3 本综述的必要性

本研究将通过系统检索、偏倚风险评价和Meta分析，评估……

## 3. 研究目的

### 3.1 主要目的

评估 [I/E/T/M] 对 [O] 的影响/关联/诊断准确性/预测性能。

### 3.2 次要目的

- 评价安全性或次要结局。
- 探索异质性来源。
- 进行亚组分析。
- 评价证据确定性。

## 4. 研究问题框架

### 4.1 PICO/PECO/PIRD/PIRT

| 要素 | 定义 |
|---|---|
| Population |  |
| Intervention/Exposure/Index test/Model |  |
| Comparator/Reference standard |  |
| Outcome |  |
| Study design |  |
| Timing |  |
| Setting |  |

## 5. 纳入与排除标准

### 5.1 纳入标准

- 人群：
- 干预/暴露/检测/模型：
- 对照/参考标准：
- 结局：
- 研究设计：
- 发表类型：
- 语言：
- 时间范围：

### 5.2 排除标准

- 不符合PICO/PECO/PIRD/PIRT。
- 重复数据。
- 数据无法提取。
- 病例报告/评论/社论。
- 动物或体外研究（如不适用）。
- 其他：

## 6. 信息来源

将检索以下数据库：

- PubMed/MEDLINE。
- Embase。
- Cochrane CENTRAL。
- Web of Science/Scopus。
- ClinicalTrials.gov。
- WHO ICTRP。
- 其他：

灰色文献：

- 会议摘要。
- 学位论文。
- 监管机构报告。
- 预印本。

检索截止日期：YYYY-MM-DD。

## 7. 检索策略

### 7.1 检索词组

#### Population

```text

```

#### Intervention/Exposure/Test/Model

```text

```

#### Outcome/Study design（如适用）

```text

```

### 7.2 PubMed示例检索式

```text
(
  population terms
)
AND
(
  intervention/exposure/test/model terms
)
AND
(
  outcome terms, if appropriate
)
```

完整检索式将在补充材料中报告。

## 8. 文献管理与筛选

- 文献管理软件：
- 去重方法：
- 标题/摘要筛选：两名研究者独立完成。
- 全文筛选：两名研究者独立完成。
- 分歧解决：讨论或第三名研究者仲裁。
- 排除理由：全文阶段逐条记录。

## 9. 数据提取

两名研究者将使用预设表格独立提取数据。

### 9.1 基础信息

- 作者、年份、国家。
- 研究设计。
- 招募时间。
- 样本量。
- 人群特征。
- 纳入排除标准。
- 随访时间。
- 资助和利益冲突。

### 9.2 暴露/干预/检测/模型信息

- 干预剂量、频率、疗程。
- 暴露定义和测量方法。
- 检测阈值和参考标准。
- 模型算法、变量、验证方式。

### 9.3 结局数据

- 二分类：事件数和总人数。
- 连续型：均值、SD、样本量。
- 时间到事件：HR及95% CI。
- 诊断：TP、FP、FN、TN。
- 比例：事件数和总人数。
- 预测模型：AUC/C-index、校准指标。

## 10. 偏倚风险评价

拟使用工具：

- RCT：RoB 2。
- 非随机干预：ROBINS-I。
- 暴露/危险因素：ROBINS-E/NOS/JBI。
- 诊断准确性：QUADAS-2。
- 预测模型：PROBAST/PROBAST+AI。
- 系统综述：AMSTAR 2/ROBIS。

评价者：两名研究者独立完成，分歧由第三人仲裁。

## 11. 效应量

| 结局类型 | 效应量 | 转换方法 |
|---|---|---|
| 二分类 | RR/OR/RD | log转换 |
| 连续型 | MD/SMD | 方向统一 |
| 时间到事件 | HR | log HR + SE |
| 比例 | proportion | logit/GLMM |
| 诊断准确性 | sensitivity/specificity/LR/DOR | 双变量/HSROC |
| 相关系数 | r | Fisher z |
| 预测模型 | AUC/C-index/calibration | logit或适当变换 |

## 12. 数据合成计划

### 12.1 主模型

- 主分析采用 [random-effects/common-effect] 模型。
- τ²估计方法：[REML/Paule-Mandel/其他]。
- 小样本时采用Hartung-Knapp调整：[是/否]。

### 12.2 异质性

将报告：

- Q检验。
- I²。
- τ²/τ。
- 预测区间。

### 12.3 亚组分析

预设亚组：

1. 
2. 
3. 

### 12.4 Meta回归

若研究数量足够，将探索以下协变量：

1. 
2. 
3. 

### 12.5 敏感性分析

- 排除高偏倚风险研究。
- 改变模型或τ²估计方法。
- 排除极端权重研究。
- 排除转换数据研究。
- 不同零事件处理方法。

### 12.6 发表偏倚/小样本效应

若纳入研究数≥10，将使用漏斗图和Egger/Peters/Harbord等检验，视效应量类型选择。

## 13. 证据确定性评价

将使用GRADE/GRADE-DTA/CINeMA/其他框架评价主要结局证据确定性。

降级因素：

- 偏倚风险。
- 不一致性。
- 间接性。
- 不精确性。
- 发表偏倚。

## 14. 软件

- R版本：
- R包：`meta`、`metafor`、`netmeta`、`mada`、`dosresmeta`等。
- 其他软件：RevMan、Stata、JAGS/Stan等。

## 15. 数据与代码开放

计划在以下平台开放：

- GitHub：
- OSF/Zenodo：

开放内容：

- 检索式。
- 筛选日志。
- 数据提取表。
- 分析代码。
- 图表生成代码。

## 16. Protocol偏离记录

| 日期 | 偏离内容 | 原因 | 对结果影响 |
|---|---|---|---|
|  |  |  |  |

## 17. 作者贡献

- Conceptualization：
- Search strategy：
- Screening：
- Data extraction：
- Risk of bias：
- Statistical analysis：
- Writing：

## 18. 利益冲突与资助

- 资助来源：
- 利益冲突：
