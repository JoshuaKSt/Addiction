# Ligands and Receptors- A Love Story

## Overview

This project takes a methadone ligand and binds it against the mu-opioid receptor. The Docking simulation uses AutoDock Vina.

## Workflow


```bash
# Clone the repository:
git clone https://github.com/JoshuaKSt/Addiction

# Enter Dependancies directory
cd Addiction/Molecular_Models/Dependancies

# Install dependancies
pip install rdkit matplotlib
sudo apt-get update
sudo apt-get install libboost-all-dev
git clone https://github.com/ccsb-scripps/AutoDock-Vina

# Make AutoDock-Vina
cd AutoDock-Vina/build/linux/release/
make

# Create methadone molecule
cd
cd Addiction/Molecular_Models
python3 Methadone.py

# Run docking simulation which finds optimal energy position for Methadone against Mu-opioid receptor
# then combines them into one pdb file.
python3 Docking.py

# (Optional) install PyMOL to visualize .pdb output
sudo apt-get install pymol
pymol Output/methadone_simulation_1.pdb

# Within the PyMOL window on the right- you can click the S next to 'all' or the .pdb file name-
# allowing you to change how the model is displayed. My personal favorite is licorice.

```

## Setup Instructions

1. **Find Ligand**: To run a test simulation you can simply use the included 'Methadone.py' script to create a methadone ligand using RDKit. To see the molecules Chirality you can use 'Chirality.py' 
Other ligands can easily be found in databases such as: [wip]

2. **Find Receptor**: My test structure is 8E0G from: https://www.rcsb.org/
| The script 'ReceptorPruning.py' can be used to deal with simple structural errors or conflicts. 

3. **Run docking simulation**: Running Docking.py will dock every ligand within the directory 'Ligand_Nursery' against every receptor in [wip]. The outputs will be placed in the output folder as a .pdb
These can be viewed using a simple molecular viewer such as the included [wip]


