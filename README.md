# Ligands and Receptors- A Love Story

## Overview

This project takes a methadone ligand and binds it against the mu-opioid receptor. The AutoDock vina simulation script is being made to run with any ligand and receptor pdb file.

## Setup Instructions

1. **Find Ligand**: To run a test simulation you can simply use the included 'Methadone.py' script to create a methadone ligand using RDKit. To see the molecules Chirality you can use 'Chirality.py' 
Other ligands can easily be found in databases such as: [wip]

2. **Find Receptor**: My test structure is 8E0G from: https://www.rcsb.org/
| The script 'ReceptorPruning.py' can be used to deal with simple structural errors or conflicts. 

3. **Run docking simulation**: Running Docking.py will dock every ligand within the directory 'Ligand_Nursery' against every receptor in [wip]. The outputs will be placed in the output folder as a .pdb
These can be viewed using a simple molecular viewer such as the included [wip]


