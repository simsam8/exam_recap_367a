# From Data Imputation to Data Cleaning - Automated Cleaning of Tabular Data Improves Downstream Predictive Performance

## Main ideas

- **Problem it solves, why is it needed?**
  - Real-world tabular data is often noisy, with missing values, inconsistencies, or invalid entries.
  - Existing cleaning methods typically focus only on imputation and do not optimize for downstream predictive performance.
  - There’s a lack of standardized benchmarks for evaluating the impact of cleaning on model performance.

- **How does it differ from other methods?**
  - Goes beyond imputation to fix type errors, inconsistencies, and outliers.
  - Optimizes cleaning operations based on their effect on model accuracy.
  - Introduces a modular, general-purpose framework adaptable to different cleaning tasks.

- **Brief overview of the method**
  - Introduces **AutoClean**, an automated system for selecting and configuring data cleaning operations.
  - Uses a **greedy search** to build cleaning pipelines based on validation set performance.
  - Applies a **meta-ensemble** of top cleaning policies to further boost performance.
  - Benchmarked on 64 real-world datasets with consistent improvements over standard methods.
  - Provides an open-source library and datasets for reproducibility and further research.

---

## Follow-up Questions

- How does the greedy search work in selecting cleaning operations?
- What types of cleaning primitives are used in AutoClean?
- How does AutoClean evaluate the performance of a cleaning operation?
- What models are used during the cleaning policy evaluation?
- How is the meta-ensemble constructed and why does it help?
