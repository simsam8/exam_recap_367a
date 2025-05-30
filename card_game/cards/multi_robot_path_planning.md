# Multi-Robot Path Planning Combining Heuristics and Multi-Agent Reinforcement Learning

## Main ideas

- Problem it solves, why is it needed?
  - Enables efficient and collision-free navigation for multiple robots in dynamic environments like warehouses, parking lots, or drone fleets.
  - Critical for safety and coordination in shared spaces with moving agents.

- How does it differ from other methods?
  - Traditional heuristics (A*, D*) are efficient in static maps but fail in dynamic environments.
  - Conflict-Based Search (CBS) is optimal but computationally expensive.
  - Reinforcement Learning adapts in real-time but suffers from sparse rewards and high training cost.
  - MAPPOHR combines global path planning with local adaptive behavior using a hybrid of heuristics and MARL.

- Brief overview of the method.
  - MAPPOHR = Multi-Agent Proximal Policy Optimization with Heuristics and Rules.
  - Uses A* or D* to generate globally optimal paths.
  - MARL agent (MAPPO) makes real-time decisions to avoid dynamic obstacles using local observations.
  - Agents can move, wait, backtrack, or replan depending on current state.
  - Heuristic planner ensures efficiency; MARL ensures adaptability.

---

## Follow-up questions

- How are local observations represented in the MARL component?
- What are the roles of the actor and critic networks in decision-making?
- How is the trade-off between heuristic and learned policy handled?
- What scenarios show the biggest improvements over baseline methods?
- How does MAPPOHR handle partial observability or noisy sensing?
