# 00｜Meta分析类型学与选题决策树

## 1. 先澄清：Meta分析不是“论文类型”，而是证据合成模型

Meta分析是对多个研究结果进行定量合成的一组统计方法。系统综述强调系统检索、选择、评价和叙述/定量综合；Meta分析只是其中可能采用的定量合成环节。高质量论文的核心不是“做了Meta”，而是：

- 研究问题是否有临床、公共卫生或方法学价值；
- 纳入证据是否足以支持定量合成；
- 效应量与统计模型是否匹配数据结构；
- 偏倚风险、异质性、发表偏倚和证据确定性是否被正确处理。

## 2. 四轴分类法

不要机械背诵“17种Meta分析”。更严谨的分类应按四个轴判断。

### 2.1 研究问题轴

| 研究问题 | 常见目标 | 常用效应量/指标 |
|---|---|---|
| 干预效果 | 药物、手术、护理、康复、公共卫生干预是否有效/安全 | RR、OR、RD、HR、MD、SMD、IRR |
| 危险因素/病因 | 暴露与疾病发生或预后是否相关 | adjusted OR、RR、HR、β |
| 患病率/发病率 | 疾病负担、检出率、感染率、并发症率 | proportion、prevalence、incidence rate |
| 单臂疗效/安全性 | ORR、DCR、AE发生率、pCR率等 | proportion、rate、time-to-event summary |
| 诊断准确性 | 某检查能否识别目标疾病 | sensitivity、specificity、LR+、LR-、DOR、AUC |
| 预后/预测模型 | 模型是否可区分或校准风险 | C-index、AUC、calibration slope、O:E |
| 剂量反应 | 暴露或剂量与结局是否线性/非线性相关 | log RR/OR/HR across dose、spline curve |
| 多干预比较 | 多种药物/方案排序与比较 | NMA中的相对效应、rank、SUCRA/P-score |
| 基因/组学关联 | SNP、基因、表达谱与结局关系 | OR、β、Z-score、p-value、effect allele |
| 证据二次整合 | 总结多个系统综述/Meta分析 | AMSTAR 2、ROBIS、GRADE、overlap index |

### 2.2 数据结构轴

- 二分类结局：事件数/总人数，适合RR、OR、RD。
- 连续型结局：均值、SD、样本量，适合MD或SMD。
- 时间到事件结局：HR及其SE/CI，不能简单用终点死亡率替代。
- 计数/发生率：事件次数、人时，适合rate ratio或incidence rate。
- 比例：患病率、检出率、AE发生率，需要转换或GLMM。
- 诊断四格表：TP、FP、FN、TN，适合双变量/HSROC模型。
- 相关系数：r、Spearman rho，通常先Fisher z转换。
- 多臂/多剂量资料：需要处理组间相关性，避免重复使用共同对照。
- 个体数据：IPD one-stage或two-stage模型。

### 2.3 统计模型轴

- common-effect/fixed-effect：假定研究估计同一个共同效应。
- random-effects：假定真实效应在研究间分布，重点报告τ²、I²和预测区间。
- multilevel/multivariate meta-analysis：处理同一研究内多个效应量相关性。
- meta-regression：解释异质性，但小样本极易过拟合。
- Bayesian meta-analysis：在小样本、复杂层级模型、NMA中常用。
- HSROC/bivariate model：诊断准确性Meta的核心模型。
- network meta-analysis：整合直接与间接比较。
- dose-response meta-analysis：线性、非线性、限制性立方样条。
- IPD meta-analysis：个体水平建模，适合亚组、交互和时间到事件。

### 2.4 报告与证据层级轴

- 系统综述与Meta分析：PRISMA 2020。
- 方案注册：PRISMA-P、PROSPERO/OSF。
- 诊断准确性：PRISMA-DTA。
- 网状Meta：PRISMA-NMA。
- IPD：PRISMA-IPD。
- 范围综述：PRISMA-ScR。
- 检索报告：PRISMA-S。
- 伞状综述/overview：Cochrane Overview思路、AMSTAR 2、ROBIS、overlap处理。
- 非定量合成：SWiM。

## 3. 选题决策树

### Step 1：是否真需要系统综述？

- 已有高质量、近期、问题完全一致的综述：优先做更新综述、伞状综述、方法学改进或IPD，而不是重复。
- 原始研究数量少且异质性极大：可做系统综述，Meta分析应谨慎或不做。
- 临床问题重要且证据分散：适合系统综述/Meta分析。

### Step 2：PICO/PECO是否清楚？

- P：人群/疾病/阶段/场景。
- I/E：干预、暴露、检测、模型或剂量。
- C：对照、参考标准、非暴露、替代方案。
- O：患者重要结局、诊断准确性、预后指标、安全性。

没有清楚PICO/PECO，不应开始检索和森林图。

### Step 3：判断研究设计

- RCT为主：干预效果Meta，RoB 2。
- 非随机干预研究：干预效果但混杂严重，ROBINS-I。
- 暴露/危险因素研究：病因/危险因素Meta，ROBINS-E或NOS/JBI/STROBE辅助。
- 诊断准确性研究：DTA Meta，QUADAS-2。
- 预测模型研究：预测模型系统综述，PROBAST/PROBAST+AI，TRIPOD+AI/TRIPOD-SRMA。
- 系统综述作为纳入单位：伞状综述/overview，AMSTAR 2/ROBIS。

### Step 4：判断效应量

| 原始资料 | 优先效应量 | 注意点 |
|---|---|---|
| 事件数/总人数 | RR、OR、RD | 罕见事件、零事件处理要预设 |
| 均值/SD | MD或SMD | SMD解释困难，方向必须统一 |
| HR/CI | log HR + SE | 不要与OR/RR混合主分析 |
| 患病率/检出率 | proportion/logit proportion | 极端比例需稳健方法 |
| 诊断四格表 | sens/spec联合建模 | 不要只合并DOR |
| 相关系数 | Fisher z | Pearson与Spearman谨慎混合 |
| 多剂量分层 | log RR + dose | 需要剂量中位数/范围/病例数 |
| 预测模型 | AUC、C-index、calibration | 区分开发、内部验证、外部验证 |

### Step 5：是否可以Meta分析？

满足以下条件才进入定量合成：

1. 研究问题足够相似；
2. 效应量可换算到同一尺度；
3. 研究设计和偏倚风险可解释；
4. 异质性有临床或方法学解释；
5. 合并结果比叙述性总结更有信息量。

## 4. 选题质量分层

### 4.1 低质量高风险选题

- 单纯换疾病/指标的模板化Meta。
- 仅合并P值或仅报告“有统计学意义”。
- 单臂Meta却试图得出优于标准治疗的结论。
- 小样本观察性研究堆砌，未合并调整后效应量。
- 放射组学/机器学习Meta不区分训练、内部验证和外部验证。
- 伞状综述不处理原始研究重叠。

### 4.2 中等质量可发表选题

- 临床问题明确的pairwise Meta。
- 严格执行PRISMA、RoB、GRADE。
- 对异质性和敏感性分析有明确解释。
- 方法不复杂但结论对临床实践有增量价值。

### 4.3 高质量潜在高分选题

- IPD-MA：统一变量定义、亚组/交互、时间到事件建模。
- NMA：多干预比较，传递性和一致性充分论证。
- Dose-response：回答阈值、平台期、非线性关系。
- 高质量DTA或预测模型Meta：可直接影响诊断路径或风险分层。
- Living review：证据快速迭代领域。
- 伞状综述+证据可信度分级：适合指南和政策问题。

## 5. 一句话判断分类

- 问“有没有效”：干预Meta。
- 问“有没有害/有没有风险”：危险因素或安全性Meta。
- 问“有多少”：患病率、发生率或单臂比例Meta。
- 问“查得准不准”：诊断准确性Meta。
- 问“哪个最好”：网状Meta。
- 问“剂量多少合适”：剂量反应Meta。
- 问“模型预测准不准”：预测模型/机器学习Meta。
- 问“已有综述怎么说”：伞状综述。
- 问“能不能获得原始数据重新分析”：IPD-MA。
