# 06｜论文写作、投稿与审稿人红线

## 1. 题名

题名应清楚说明研究类型和研究问题。

### 推荐结构

```text
[干预/暴露/检测/模型] for [疾病/人群/结局]: a systematic review and meta-analysis
```

### 示例

- Efficacy and safety of X for Y: a systematic review and meta-analysis of randomized controlled trials.
- Diagnostic accuracy of X for detecting Y: a systematic review and meta-analysis.
- Dose-response association between X and risk of Y: a systematic review and meta-analysis.
- External validation performance of AI models for predicting Y: a systematic review and meta-analysis.

## 2. 摘要

摘要应按结构化格式写：Background、Objective、Methods、Results、Conclusions。

### Methods必须包括

- 数据库与检索截止日期。
- 纳入研究设计。
- 效应量和模型。
- 偏倚风险工具。
- 证据确定性评价。
- 注册号。

### Results必须包括

- 研究数和样本量。
- 主要结局合并效应。
- 95% CI。
- 异质性。
- 证据确定性。
- 关键敏感性分析。

### Conclusions必须避免

- 过度推荐临床应用。
- 用“证明”表达。
- 忽视低确定性证据。
- 把统计显著等同临床重要。

## 3. Introduction

引言三段式：

1. 疾病负担和临床问题。
2. 现有证据冲突或不足。
3. 本综述的增量价值和目标。

### 高分写法

- 说明为什么现有综述不够：过时、未纳入新研究、方法不合适、没有GRADE、未处理剂量反应/网络结构/外部验证。
- 明确临床决策场景。
- 不夸大Meta分析的证据等级。

## 4. Methods

Methods是审稿重点。必须足够详细，让他人可复现。

### 4.1 Protocol and registration

写明：

- Protocol注册平台和编号。
- 是否有偏离protocol。
- 偏离原因。

### 4.2 Eligibility criteria

按PICO/PECO/PIRD/PIRT报告：

- Population。
- Intervention/exposure/index test/model。
- Comparator/reference standard。
- Outcomes。
- Study designs。
- Setting。
- Language/date restrictions。

### 4.3 Information sources

写明：

- 所有数据库。
- 注册平台。
- 灰色文献。
- 引文追踪。
- 联系作者。
- 检索截止日期。

### 4.4 Search strategy

主文概述，补充材料给完整检索式。检索式应可直接复制运行。

### 4.5 Selection process

写明：

- 几名研究者独立筛选。
- 冲突如何解决。
- 使用的软件。
- 全文排除理由。

### 4.6 Data collection process

写明：

- 数据提取者数量。
- 预先设计的数据表。
- 是否联系作者。
- 图中数据提取方法。
- 数据转换规则。

### 4.7 Effect measures

必须预设每类结局的效应量。

示例：

- 二分类结局使用RR及95% CI。
- 连续结局使用MD；不同量表时使用SMD。
- 时间到事件结局使用HR。
- 诊断准确性使用敏感度、特异度、LR和DOR。
- 患病率使用logit转换比例。

### 4.8 Risk of bias assessment

写明工具、评价者数量和冲突解决方法。不要只写“质量评价”。

### 4.9 Synthesis methods

应包括：

- 是否做Meta分析的判断标准。
- 主要模型。
- τ²估计方法。
- Hartung-Knapp是否使用。
- 异质性指标。
- 预测区间。
- 零事件处理。
- 多臂研究处理。
- 亚组和Meta回归。
- 敏感性分析。
- 发表偏倚评价。
- 软件和版本。

### 4.10 Certainty assessment

说明使用GRADE、GRADE-DTA、CINeMA或其他框架，明确评价者和降级规则。

## 5. Results

### 5.1 Study selection

报告：

- 检索记录总数。
- 去重后数量。
- 标题摘要筛选数量。
- 全文评估数量。
- 最终纳入数量。
- 排除理由。

### 5.2 Study characteristics

至少包括：

- 国家/地区。
- 研究设计。
- 样本量。
- 人群特征。
- 干预/暴露/检测。
- 对照/参考标准。
- 结局。
- 随访时间。
- 资助。

### 5.3 Risk of bias

不要只说“多数研究质量较高”。应按领域报告：

- 哪些领域偏倚风险高。
- 哪些结局受影响。
- 敏感性分析是否排除高风险研究。

### 5.4 主分析

推荐句式：

```text
For [outcome], [k] studies involving [N] participants were included. Compared with [control], [intervention] was associated with [effect direction] ([effect measure] = x.xx, 95% CI x.xx to x.xx; τ² = x.xx; I² = xx%; prediction interval x.xx to x.xx; certainty: [GRADE level]).
```

### 5.5 异质性解释

应结合：

- 人群差异。
- 干预剂量/疗程。
- 测量方法。
- 随访时间。
- 研究设计。
- 偏倚风险。
- 基线风险。

### 5.6 亚组和Meta回归

必须明确是预设还是探索性。避免“显著/不显著”的机械比较。

### 5.7 敏感性分析

报告哪些结论稳健，哪些依赖特定研究或方法选择。

### 5.8 发表偏倚

研究数不足时，应直接说明无法可靠评价，而不是强行解读。

## 6. Discussion

### 6.1 Principal findings

用证据确定性约束结论。

### 6.2 Comparison with previous reviews

比较时强调增量：

- 更新检索。
- 纳入新研究。
- 更严格RoB。
- 使用更合适模型。
- 加入GRADE。
- 新做剂量反应/NMA/IPD/外部验证分析。

### 6.3 Mechanisms and clinical implications

机制解释应适度，不能超出纳入研究设计。

### 6.4 Strengths and limitations

Strengths可写：

- 预注册protocol。
- 完整检索。
- 双人独立流程。
- 预设统计分析。
- RoB和GRADE。
- 公开数据代码。

Limitations必须诚实：

- 纳入研究数量少。
- 偏倚风险。
- 异质性。
- 数据缺失。
- 发表偏倚。
- 证据间接性。
- 无法进行关键亚组分析。

## 7. Conclusion

### 推荐表达

- “The evidence suggests...”
- “Low-certainty evidence indicates...”
- “The effect remains uncertain because...”
- “Further adequately powered trials are required...”

### 避免表达

- “This meta-analysis proves...”
- “X is recommended for all patients...”
- “No significant difference means equivalent。”
- “High heterogeneity was solved by random-effects model。”

## 8. 表格与补充材料

### 主文表格

1. 纳入研究特征表。
2. 主分析结果表。
3. GRADE Summary of Findings表。

### 补充材料

1. Protocol。
2. 完整检索式。
3. 全文排除理由。
4. 数据提取表。
5. 偏倚风险详细评价。
6. 敏感性分析。
7. 亚组/Meta回归。
8. 发表偏倚分析。
9. R代码和sessionInfo。

## 9. 审稿人常见问题与回应策略

### Q1：为什么需要这篇Meta？已有综述了。

回应要点：

- 说明已有综述检索截止日期。
- 新增研究数量和样本量。
- 说明方法改进：RoB 2、GRADE、NMA、剂量反应、IPD、外部验证等。
- 说明临床问题更聚焦。

### Q2：异质性太高，合并不合理。

回应要点：

- 区分临床、方法学和统计异质性。
- 给出预设亚组和敏感性分析。
- 报告预测区间。
- 必要时改为叙述性综合或只合并更同质的子集。

### Q3：为什么用随机效应/固定效应？

回应要点：

- 模型选择基于estimand和研究差异，而不是只基于I²。
- 说明τ²估计方法。
- 提供敏感性分析。

### Q4：发表偏倚没有充分评估。

回应要点：

- 说明研究数是否足够。
- 补充注册平台和灰色文献检索。
- 补充小样本效应分析。
- 在GRADE中考虑发表偏倚。

### Q5：观察性研究混杂严重。

回应要点：

- 优先合并调整后效应量。
- 列出调整变量。
- 用ROBINS-I/ROBINS-E评价混杂。
- 做排除高风险研究的敏感性分析。

### Q6：结论过度。

回应要点：

- 按GRADE修改措辞。
- 区分统计显著性和临床重要性。
- 强调不确定性和未来研究方向。

## 10. 投稿前顶刊自查清单

### 10.1 方法学

- [ ] 有protocol和注册号。
- [ ] 纳入标准与PICO/PECO一致。
- [ ] 检索至少覆盖核心数据库。
- [ ] 完整检索式可复现。
- [ ] 双人独立筛选和提取。
- [ ] 偏倚风险工具匹配研究设计。
- [ ] 效应量选择合理。
- [ ] 主模型预设。
- [ ] 异质性解释充分。
- [ ] 敏感性分析完整。
- [ ] 发表偏倚评价合理。
- [ ] GRADE/证据确定性完成。

### 10.2 统计

- [ ] 多臂研究处理正确。
- [ ] 零事件处理预设。
- [ ] HR使用log尺度合并。
- [ ] SMD方向统一。
- [ ] 比例资料方法合理。
- [ ] DTA使用联合模型。
- [ ] NMA评价传递性和一致性。
- [ ] 预测区间报告。
- [ ] 小样本随机效应推断合理。

### 10.3 报告

- [ ] PRISMA流程图完整。
- [ ] 研究特征表完整。
- [ ] RoB图清楚。
- [ ] SoF表完整。
- [ ] 补充材料包括全部检索式。
- [ ] 代码和数据可复现。
- [ ] 结论与证据确定性一致。

## 11. 一句话标准

一篇值得投高水平期刊的Meta分析，应能回答：

> 这个临床问题为什么重要；现有证据为什么需要重新合成；合并效应是否有统计、临床和方法学合理性；偏倚风险和证据确定性是否足以支持作者的结论。
