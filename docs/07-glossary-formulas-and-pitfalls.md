# 07｜术语、公式与常见陷阱速查

## 1. 核心术语

| 术语 | 含义 | 常见误区 |
|---|---|---|
| Systematic review | 用系统、透明、可复现方法识别、评价和综合证据 | 不等于一定有Meta分析 |
| Meta-analysis | 对多个研究的效应量进行定量合成 | 不等于简单画森林图 |
| Effect size | 单项研究的效应估计 | P值不是效应量 |
| Estimand | 目标估计量，即希望估计的真实效应 | 模型选择应服务estimand |
| Common-effect | 各研究估计同一共同效应 | 常被误称为fixed-effect |
| Random-effects | 各研究真实效应来自某分布 | 不能“解决”异质性，只是建模异质性 |
| Heterogeneity | 研究间效应差异 | I²只是其中一个统计表达 |
| Prediction interval | 未来类似研究真实效应可能范围 | 随机效应Meta比CI更具临床解释价值 |
| Risk of bias | 系统性偏离真实效应的风险 | 不等于论文写得是否规范 |
| Certainty of evidence | 对整体证据效应估计的信心 | 不等于单篇研究质量 |
| Publication bias | 发表与结果大小/方向相关 | 漏斗图不对称不一定是发表偏倚 |
| Small-study effects | 小研究效应系统性大于大研究 | 可能来自偏倚、异质性或真实差异 |
| Transitivity | NMA中间接比较可成立的前提 | 排名依赖该前提 |
| Inconsistency | 直接证据与间接证据不一致 | NMA必须评估 |
| Threshold effect | DTA中阈值变化导致敏感度/特异度权衡 | 不能忽略检测阈值 |
| Calibration | 预测概率与实际风险的一致性 | AUC高不代表校准好 |

## 2. 常用效应量公式速查

## 2.1 二分类四格表

|  | 事件 | 非事件 | 总数 |
|---|---:|---:|---:|
| 干预/暴露组 | a | b | n1 |
| 对照/非暴露组 | c | d | n0 |

- Risk in exposed/intervention: `p1 = a / n1`
- Risk in control: `p0 = c / n0`
- RR: `p1 / p0`
- OR: `(a / b) / (c / d) = ad / bc`
- RD: `p1 - p0`
- NNT/NNH: `1 / |RD|`

Meta分析通常在log尺度合并：

- `log(RR)`
- `log(OR)`
- `log(HR)`

## 2.2 由95% CI估计SE

对比值类效应量：

```text
SE(log effect) = [log(upper CI) - log(lower CI)] / (2 × 1.96)
```

## 2.3 连续型结局

- MD: `mean_treat - mean_control`
- SMD: `(mean_treat - mean_control) / pooled SD`

注意方向统一：所有研究必须让正值代表同一临床方向。

## 2.4 相关系数

Fisher z转换：

```text
z = 0.5 × ln((1 + r) / (1 - r))
SE(z) = 1 / sqrt(n - 3)
```

反转换：

```text
r = (exp(2z) - 1) / (exp(2z) + 1)
```

## 2.5 诊断四格表

|  | 目标疾病+ | 目标疾病- |
|---|---:|---:|
| Index test + | TP | FP |
| Index test - | FN | TN |

- Sensitivity: `TP / (TP + FN)`
- Specificity: `TN / (FP + TN)`
- LR+: `Sensitivity / (1 - Specificity)`
- LR-: `(1 - Sensitivity) / Specificity`
- DOR: `LR+ / LR- = TP × TN / (FP × FN)`

## 3. 异质性指标

### 3.1 Q检验

检验研究间变异是否超过抽样误差。小样本功效低，大样本过于敏感。

### 3.2 I²

```text
I² = max(0, (Q - df) / Q) × 100%
```

解释：总变异中由研究间差异而非抽样误差解释的比例。

### 3.3 τ²/τ

真实效应的研究间方差/标准差。比I²更接近随机效应模型的核心参数。

### 3.4 预测区间

表示未来类似研究真实效应可能落入的范围。若预测区间跨越无效线，即使合并CI显著，临床解释仍应谨慎。

## 4. 常见模型误区

### 4.1 “I²<50%用固定效应，I²≥50%用随机效应”

这是机械规则。模型选择应根据：

- 研究问题。
- 目标估计量。
- 临床异质性。
- 推广范围。
- 统计假设。

### 4.2 “随机效应解决异质性”

随机效应只是在模型中允许研究间真实效应不同，并没有解释异质性来源。

### 4.3 “P>0.05说明无效”

不显著可能来自样本量不足、效应小、异质性大或测量不准。应看效应量、CI、临床阈值和证据确定性。

### 4.4 “OR=2等于风险翻倍”

只有罕见结局时OR近似RR。常见结局下OR会夸大相对风险。

### 4.5 “SMD越大临床意义越大”

SMD受测量工具和样本SD影响，必须转换回临床可解释单位或结合最小临床重要差异解释。

## 5. 17类Meta常见一句话陷阱

| 类型 | 最常见陷阱 |
|---|---|
| 头对头Meta | 混合不同设计、结局时间点和效应量 |
| 单臂Meta | 无对照却推断相对疗效 |
| 患病率Meta | 不区分样本来源和检测方法 |
| P值合并 | 没有效应大小和方向 |
| 累积Meta | 早期低质量研究塑造错误趋势 |
| TSA | 参数事后选择 |
| NMA | 只看排名，不看传递性和一致性 |
| DTA Meta | 分别合并敏感度/特异度，不用联合模型 |
| 剂量反应Meta | 剂量单位和暴露定义不一致 |
| 相关Meta | 把相关写成因果 |
| 危险因素Meta | 未调整效应和调整后效应混合 |
| 机器学习Meta | 内部验证和外部验证混合 |
| 放射组学Meta | 忽略特征选择数据泄漏 |
| 交叉RCT Meta | 忽略配对结构和carry-over |
| 伞状综述 | 不处理原始研究重叠 |
| IPD-MA | 只获得部分IPD却不评估选择性可得性 |
| GWAS/生态Meta | 等位基因方向/生态学谬误处理不足 |

## 6. 审稿人最敏感的10个问题

1. 是否有注册Protocol。
2. 检索是否可复现。
3. 是否存在重复纳入同一队列。
4. 效应量是否与数据结构匹配。
5. 统计模型是否预设且合理。
6. 多臂研究、零事件和缺失数据是否处理正确。
7. 偏倚风险工具是否匹配研究设计。
8. 异质性是否有临床解释。
9. 证据确定性是否约束结论。
10. 数据和代码是否可复现。

## 7. 结论措辞速查

| 证据状态 | 推荐措辞 | 避免措辞 |
|---|---|---|
| 高确定性且效应明确 | X reduces/increases Y | X proves Y |
| 中等确定性 | X probably reduces/increases Y | X definitely works |
| 低确定性 | X may reduce/increase Y | X is recommended |
| 极低确定性 | The effect is very uncertain | X has no effect |
| CI跨临床重要阈值 | Evidence is compatible with benefit and harm/no effect | No difference |

## 8. 最小可接受复现包

投稿或共享时至少包含：

- 完整检索式。
- PRISMA流程图原始数字。
- 全文排除清单。
- 数据提取表。
- 偏倚风险判定依据。
- R分析脚本。
- sessionInfo。
- 主要图表生成代码。
- GRADE Summary of Findings表。
