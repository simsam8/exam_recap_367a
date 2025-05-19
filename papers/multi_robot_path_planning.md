# Multi-Robot Path Planning Combining Heuristics and Multi-Agent Reinforcement Learning

## Problem they are trying to solve / Purpose of method

Robots must navigate efficiently while avoiding collisions with other 
moving robots. This is crucial for factories, parking lots, and drone fleets,
where safe and efficient movement is essential.


## How does it differ from other methods?

Heuristic planners like A*, D* and D* lite provide efficient 
path optimization in static environments but face challenges 
with dynamic obstacles.

Conflict-Based Search uses a two-level approach. It plans 
paths independently and resolves conflicts, ensuring optimal 
paths but at a high computational cost.

Learning-Based approaches like deep Reinforcement Learning 
enables real-time adaption, but struggles with sparse rewards 
and high training costs.

MAPPOHR integrates a heuristic planner and a real-time MARL-based 
planner (MAPPO).


## How the method works

__MAPPOHR__: Multi-Agent Proximal Policy Optimization with Heuristics and Rules

In short: Multi Agent Proximal Policy Optimization combined 
with heuristic planners like A* or D*.

- The heuristic planner A* or D*, provides a globally optimal path.
- Real-time planner detects dynamic obstacles and makes decisions based on 
local observations to avoid collisions.
- The heuristic planner finds optimal paths, while MARL adapts to dynamic 
obstacles, ensuring efficient and collision-free navigation.

The agents choose from four actions; move, wait, back, or replan,
based on observations processed by the critic and actor networks.

The model balances learned policies with heuristic adjustments,
ensuring both efficiency and adaptability in dynamic environments.


