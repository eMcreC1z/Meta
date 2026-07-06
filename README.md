# Meta分析知识库

面向医学科研、SCI论文写作、证据合成方法学与R语言实现的中文Meta分析知识库。

> 定位：不是“森林图模板库”，而是从研究问题、证据结构、偏倚风险、统计模型、报告规范到审稿应对的完整方法学框架。

## 目录

### 一、总论与决策树

- [00｜Meta分析类型学与选题决策树](docs/00-taxonomy-and-decision-tree.md)
- [01｜系统综述与Meta分析核心流程](docs/01-core-principles.md)
- [02｜效应量、模型、异质性与稳健性分析](docs/02-effect-sizes-and-models.md)

### 二、专题方法

- [03｜17类及扩展类型Meta分析操作要点](docs/03-specialized-meta-analyses.md)
- [04｜偏倚风险、报告规范与证据确定性分级](docs/04-risk-of-bias-and-certainty.md)
- [05｜R语言实现路线图与常用代码骨架](docs/05-r-playbook.md)
- [06｜论文写作、投稿与审稿人红线](docs/06-writing-and-reviewer-checklist.md)

### 三、模板与清单

- [Protocol模板](templates/protocol-template.md)
- [统计分析计划模板](templates/analysis-plan-template.md)
- [数据提取字典CSV](templates/data-extraction-dictionary.csv)
- [关键指南与工具索引](references/key-guidelines.md)
- [最小可复现R脚本](scripts/00_minimal_meta_examples.R)

## 使用原则

1. **先定问题，再定模型。** 不要从“想画森林图”开始，应从PICO/PECO、目标估计量和数据结构开始。
2. **Meta分析不是单一类型。** 干预、诊断、患病率、危险因素、预后、剂量反应、网状、IPD、伞状综述等，对应完全不同的统计假设和报告规范。
3. **效应量不能混合滥用。** OR、RR、HR、MD、SMD、率、相关系数、AUC、C-index、敏感度/特异度、DOR等必须按研究问题和原始数据结构选择。
4. **异质性不是只报告I²。** 还要解释临床异质性、方法学异质性、统计异质性，并在随机效应下报告预测区间。
5. **偏倚风险工具必须匹配研究设计。** RCT、非随机干预研究、暴露研究、诊断准确性研究、预测模型、系统综述二次研究各有对应工具。
6. **GRADE/证据确定性不是装饰。** 高水平医学期刊更关心结论可信度，而不是单纯P值。

## 推荐学习路径

### 初学者

1. 读 `docs/00-taxonomy-and-decision-tree.md`，明确自己要做哪类Meta。
2. 读 `docs/01-core-principles.md`，按流程设计protocol。
3. 用 `templates/protocol-template.md` 写注册稿。
4. 用 `scripts/00_minimal_meta_examples.R` 跑通最小分析。

### 有论文基础者

1. 读 `docs/02-effect-sizes-and-models.md`，检查效应量和模型是否合理。
2. 读 `docs/04-risk-of-bias-and-certainty.md`，补齐RoB与GRADE。
3. 读 `docs/06-writing-and-reviewer-checklist.md`，按审稿红线自查。

### 方法学进阶者

重点关注网状Meta、剂量反应Meta、IPD-MA、预测模型/AI模型综述、伞状综述、living review、trial sequential analysis与小样本随机效应推断。

## 更新说明

- 初始同步：建立中文Meta分析知识库骨架、核心知识点、R代码骨架、Protocol模板、分析计划模板、数据提取字典与指南索引。
- 维护建议：以后每次做具体课题时，在 `projects/` 下单独建目录，保留protocol、search strategy、screening log、extraction sheet、analysis script、figures、manuscript与response letter。
