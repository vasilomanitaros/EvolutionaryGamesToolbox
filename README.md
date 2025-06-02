# Iterated Prisoner’s Dilemma MATLAB Toolbox

This repository provides a MATLAB toolbox for conducting experiments on the Iterated Prisoner’s Dilemma. The codebase was developed during the 8th semester by Ioannis Lazaridis, Ioannis Kosmas Vardakis, and Konstantinos Vlachakos for the Game Theory course at the Aristotle University of Thessaloniki.

For inquiries or references, please contact:
- ilazarit@ece.auth.gr
- ivardakis@ece.auth.gr
- kvlachak@ece.auth.gr

## Repository Structure

```
GAME_THEORY/
├── Code/
│   ├── Functions/
│   ├── Modes/
│   ├── Strategies/
│   └── Documentation/
│       ├── base.m           # Main entry point for experiments
│       └── plots.m          # Generates plots for analysis
├── Examples/
│   ├── SimFitPlots/         # Simulated fitness dynamics results and experiments
│   ├── SimImiPlots/         # Simulated imitation dynamics results and experiments
│   ├── TheFitPlots/         # Theoretical fitness dynamics results and experiments
│   └── TheImiPlots/         # Theoretical imitation dynamics results and experiments
├── Report/
└── README.md                # Project documentation

```

- **base.m**: Main entry point for running Iterated Prisoner’s Dilemma experiments.
- **plots.m**: Aggregates outputs and generates plots for analysis.

## Quickstart

To install and use this repository create an empty folder and use:

```bash
git clone https://github.com/vasilomanitaros/EvolutionaryGamesToolbox.git
```

## Reference

For a detailed discussion of the theoretical background, see:  
Mathieu, Philippe; Beaufils, Bruno; Delahaye, Jean-Paul. (1999). *Studies on Dynamics in the Classical Iterated Prisoner’s Dilemma with Few Strategies*. pp. 177–190. [DOI:10.1007/10721187_13](https://doi.org/10.1007/10721187_13)
