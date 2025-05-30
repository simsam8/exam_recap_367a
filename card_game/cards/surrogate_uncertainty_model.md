# Surrogate uncertainty estimation for your time series forecasting black-box: learn when to trust

## Main ideas

- **Problem it solves, why is it needed?**  
  Equip any pre-trained forecasting black-box model with uncertainty estimates without modifying the base model.

- **How does it differ from other methods?**  
  Uses a surrogate model trained separately on the same data and enhanced with base model predictions, rather than built-in uncertainty methods.

- **Brief overview of the method.**  
  - Train a Gaussian Process surrogate model (BAMOES) to mimic the base forecasting model.  
  - Sample L random points from the domain and query the base model to get predictions on them.  
  - Train surrogate with a combined loss: log-likelihood on original data + MSE between surrogate and base model predictions on sampled data.  
  - Surrogate’s mean prediction equals the base model’s output; uncertainty (std. dev) is from the surrogate model.

---

## Follow-up questions

- How does the choice of L (number of sampled points) affect surrogate performance?  
- What is the impact of the coefficient C on balancing likelihood and MSE losses?  
- How does BAMOES compare to Bayesian or ensemble uncertainty methods in accuracy and computational cost?  
- Can BAMOES be used with non-Gaussian forecasting models?  
- How sensitive is the surrogate’s uncertainty estimate to the distribution of sampled points?
