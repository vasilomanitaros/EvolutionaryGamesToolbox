# Game Theory MATLAB Toolbox

This repository provides a MATLAB toolbox for conducting experiments on the Iterated Prisoner’s Dilemma. The codebase was developed during the 8th semester by Ioannis Lazaridis, Ioannis Kosmas Vardakis, and Konstantinos Vlachakos for the Game Theory course at the Aristotle University of Thessaloniki.

For inquiries or references, please contact:
- ilazarit@ece.auth.gr
- ivardakis@ece.auth.gr
- kvlachak@ece.auth.gr

## Repository Structure

```
Game_Theory/
├── base.m          # Main script for running experiments
├── plots.m         # Aggregates results and generates visualizations
├── Strategies/     # Implementations of various strategies
├── Modes/          # Imitation and Fitness Dynamics modules
├── Functions/      # Utility scripts for the implementation
├── TheFitPlots/    # Fitness dynamics results and ready-to-run experiments (paper-based)
├── TheImiPlots/    # Imitation dynamics results and ready-to-run experiments (report-based)
└── README.md       # Project documentation
```

- **base.m**: Main entry point for running Iterated Prisoner’s Dilemma experiments.
- **plots.m**: Aggregates outputs and generates plots for analysis.

## Reference

For a detailed discussion of the theoretical background, see:  
Mathieu, Philippe; Beaufils, Bruno; Delahaye, Jean-Paul. (1999). *Studies on Dynamics in the Classical Iterated Prisoner’s Dilemma with Few Strategies*. pp. 177–190. [DOI:10.1007/10721187_13](https://doi.org/10.1007/10721187_13)
