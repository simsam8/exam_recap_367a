# Automatic Privilege Escalation with Deep Reinforcement Learning

## Main ideas

- **Problem it solves / Why is it needed?**
  - Existing automated attack tools are rigid, script-based, and easy to detect.
  - Local privilege escalation is a complex and underexplored stage in attack automation.
  - DRL can generate realistic attack data to help train defensive ML systems.
  - Demonstrates malicious use potential of DRL to inform better defensive strategies.

- **How does it differ from other methods?**
  - Goes beyond initial access and lateral movement — focuses on **local privilege escalation**.
  - Rich, high-dimensional, partially observable environment simulating real Windows 7 systems.
  - Large action space (38 high-level actions); manually designed but semantically meaningful.
  - Generalizes to unseen configurations (DLLs, services, tasks).
  - Successfully transfers trained agent to real VMs without retraining.

- **Brief overview of the method**
  - Uses **Advantage Actor-Critic (A2C)** to train agent in a custom simulator.
  - Sparse reward: +1 only on successful privilege escalation.
  - Modular neural net processes varying numbers of components using shared weights and pooling.
  - Action space includes operations like overwriting binaries, reconfiguring services.
  - Trained in simulation; tested in real VMs with high success rate.

---

## Follow-up questions

- Why was A2C chosen over other DRL algorithms like DQN or PPO?
- How is the agent's state space encoded and managed given its high dimensionality?
- What are the limitations of the simulator, and how is domain randomization handled?
- How robust is the model to defensive mechanisms (e.g., antivirus, ASLR)?
- Could this approach be extended to privilege escalation on Linux or modern Windows versions?
