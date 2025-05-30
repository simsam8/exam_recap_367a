# TabM (Tabular Multiple Predictions)

## Main ideas

- **Problem it solves, why is it needed?**  
  Efficiently simulating an ensemble of MLPs for tabular data to improve generalization without
the computational cost of training multiple separate models.

- **How does it differ from other methods?**  
  Uses heavy parameter sharing to produce multiple independent predictions within a single MLP,
unlike traditional deep ensembles or transformer models which require multiple separate or larger models.

- **Brief overview of the method.**  
  TabM produces $k$ parallel predictions per input by applying element-wise
learned multiplicative weights around shared linear layers,
simulating an ensemble of submodels with minimal overhead;
final output is an average of these predictions.

---

## Follow-up questions

- How does TabM compare with deep ensembles and transformer-based models in terms of efficiency and performance?  
- What are the key differences between TabM variants like TabMmini and TabMpacked?  
- Why does averaging the outputs of the submodels improve generalization despite individual submodels overfitting?  
- What limitations does TabM have compared to traditional GBDTs or plain MLPs?  
- How does submodel pruning work in TabM, and what benefits does it provide?
