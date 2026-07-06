# 00_minimal_meta_examples.R
# Minimal reproducible examples for common meta-analysis tasks in R.
# Replace the toy data with extracted study-level data.

set.seed(20260706)

required_pkgs <- c("tidyverse", "meta", "metafor")
for (pkg in required_pkgs) {
  if (!requireNamespace(pkg, quietly = TRUE)) {
    install.packages(pkg)
  }
}

library(tidyverse)
library(meta)
library(metafor)

# -----------------------------------------------------------------------------
# 1. Binary outcome: RR with random-effects model
# -----------------------------------------------------------------------------

dat_bin <- tibble::tribble(
  ~study, ~event_treat, ~n_treat, ~event_control, ~n_control,
  "Study A", 12, 100, 20, 100,
  "Study B", 30, 220, 42, 215,
  "Study C",  8,  90, 10,  88,
  "Study D", 25, 160, 38, 170
)

m_bin <- metabin(
  event.e = event_treat,
  n.e = n_treat,
  event.c = event_control,
  n.c = n_control,
  studlab = study,
  data = dat_bin,
  sm = "RR",
  method = "MH",
  common = FALSE,
  random = TRUE,
  method.tau = "REML",
  hakn = TRUE
)

print(summary(m_bin))
# forest(m_bin, prediction = TRUE)
# funnel(m_bin)

# -----------------------------------------------------------------------------
# 2. Continuous outcome: MD or SMD
# -----------------------------------------------------------------------------

dat_cont <- tibble::tribble(
  ~study, ~n_treat, ~mean_treat, ~sd_treat, ~n_control, ~mean_control, ~sd_control,
  "Study A", 50, 12.1, 3.2, 52, 14.0, 3.4,
  "Study B", 80, 10.5, 2.8, 78, 11.6, 3.0,
  "Study C", 60, 15.2, 4.1, 61, 16.4, 4.0
)

m_cont <- metacont(
  n.e = n_treat,
  mean.e = mean_treat,
  sd.e = sd_treat,
  n.c = n_control,
  mean.c = mean_control,
  sd.c = sd_control,
  studlab = study,
  data = dat_cont,
  sm = "MD",
  common = FALSE,
  random = TRUE,
  method.tau = "REML",
  hakn = TRUE
)

print(summary(m_cont))
# forest(m_cont, prediction = TRUE)

# -----------------------------------------------------------------------------
# 3. Generic inverse variance: HR/adjusted OR/adjusted RR
# -----------------------------------------------------------------------------

dat_hr <- tibble::tribble(
  ~study, ~hr, ~ci_lower, ~ci_upper,
  "Study A", 0.78, 0.62, 0.98,
  "Study B", 0.91, 0.70, 1.18,
  "Study C", 0.67, 0.48, 0.94,
  "Study D", 1.05, 0.82, 1.34
) |>
  mutate(
    yi = log(hr),
    sei = (log(ci_upper) - log(ci_lower)) / (2 * 1.96),
    vi = sei^2
  )

m_hr <- rma(
  yi = yi,
  vi = vi,
  data = dat_hr,
  method = "REML",
  test = "knha"
)

print(summary(m_hr))
print(predict(m_hr, transf = exp))
# forest(m_hr, slab = dat_hr$study, transf = exp)

# -----------------------------------------------------------------------------
# 4. Proportion/prevalence meta-analysis
# -----------------------------------------------------------------------------

dat_prop <- tibble::tribble(
  ~study, ~cases, ~total,
  "Study A", 12, 200,
  "Study B", 30, 350,
  "Study C",  5, 120,
  "Study D", 44, 500
)

m_prop <- metaprop(
  event = cases,
  n = total,
  studlab = study,
  data = dat_prop,
  sm = "PLOGIT",
  method = "GLMM",
  common = FALSE,
  random = TRUE
)

print(summary(m_prop))
# forest(m_prop, prediction = TRUE)

# -----------------------------------------------------------------------------
# 5. Correlation meta-analysis
# -----------------------------------------------------------------------------

dat_cor <- tibble::tribble(
  ~study, ~r, ~n,
  "Study A", 0.30, 120,
  "Study B", 0.45, 200,
  "Study C", 0.22,  95,
  "Study D", 0.51, 160
) |>
  mutate(
    yi = atanh(r),
    vi = 1 / (n - 3)
  )

m_cor <- rma(
  yi = yi,
  vi = vi,
  data = dat_cor,
  method = "REML",
  test = "knha"
)

print(summary(m_cor))
print(predict(m_cor, transf = tanh))

# -----------------------------------------------------------------------------
# 6. Leave-one-out and small-study effects
# -----------------------------------------------------------------------------

print(leave1out(m_hr))
# regtest(m_hr, model = "rma") # Interpret only when number of studies is sufficient.

# -----------------------------------------------------------------------------
# 7. Export session information
# -----------------------------------------------------------------------------

sessionInfo()
