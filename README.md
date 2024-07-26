# Ligands and Receptors: A Love Story

## Overview

This project takes a methadone ligand and binds it against the mu-opioid receptor. The Docking simulation uses AutoDock Vina.

## Workflow


```bash
# Clone the repository:
git clone https://github.com/JoshuaKSt/Addiction

# Enter Dependancies directory
cd Addiction/Molecular_Models/Dependancies

# Install dependancies
sudo apt-get update
sudo apt-get install libboost-all-dev make g++ pip obabel
pip install rdkit matplotlib
git clone https://github.com/ccsb-scripps/AutoDock-Vina # inside the repositories Dependancies directory install AutoDock-Vina

# Make AutoDock-Vina
cd AutoDock-Vina/build/linux/release/
make

# Create methadone molecule (Or place your own .pdb ligands into Ligand_Nursery)
cd
cd Addiction/Molecular_Models
python3 Methadone.py # This should finish in around 30 seconds

# Run Chirality.py to determine the molecules chirality and generate some simple graphs in the dir /Output/Additional_Models
python3 Chirality.py

# Prune Receptor (If using the included receptor- skip to running the docking simulation.)
# 1. Download receptor from a source such as "https://www.rcsb.org"
# 2. Identify the ligand you would like to remove: once you have found the receptor you would like to use
# navigate to the ligands page and identify the tag used for that ligand.
# i.e. "VF1" at "https://www.rcsb.org/ligand-validation/8E0G/VF1" is the methadone molecule I removed from the included mu-opioid receptor.
# 3. Open ReceptorPruning.py in Molecular_Models/Receptor_Nursery with your text editor and set "Ligand" equal to the tag of the ligand you would like to remove.
# 4. Place your downloaded receptor pdb into Receptor_Nursery, removing all included files other than the python script, and run the following command to get your pruned receptor:
python3 ReceptorPruning.py



# Run docking simulation which finds optimal energy position for .pdb files in Ligand_Nursery against Pruned .pdb files in Receptor_Nursery
# then combines them into one pdb file.
python3 Docking.py

# (Optional) install PyMOL to visualize .pdb output
sudo apt-get install pymol
pymol Output/methadone_simulation_1.pdb

# Within the PyMOL window on the right- you can click the S next to 'all' or the .pdb file name-
# allowing you to change how the model is displayed. My personal favorite is licorice.

```

## Files

- **'Chirality.py'**: Simple script that assigns stereochemistry and chiral centers to the input pdb. Outputs: the chiral atom type, whether there is an 'R' or 'S' configuration of the chiral center(s).
  
- **'Methadone.py'**: Uses RDKit's SMILES to create a methadone molecule and creates conformers to attempt and optimize the molecules energy.
  
- **'Docking.py'**: Uses Obabel to convert file types and AutoDock-Vina to dock the input ligands against the input receptors. Final output is a .pdb combining these inputs.
  
- **'ReceptorPruning.py'**: Directly edits the .pdb file of Receptor_Nursery contents to look for and remove the specified ligand.
  
- **'MethadoneEnergyHistogram'**: Creates a histogram of methadone energy conformations seperate from the result of methadone.py. Due to the current nature of my conformers optimization, this program is mostly useless due to conformer 47 being the most optimized methadone molecule under my current code.

## Setup Instructions

1. **Find Ligand**: To run a test simulation you can simply use the included 'Methadone.py' script to create a methadone ligand using RDKit. To see the molecules Chirality you can use 'Chirality.py' 
Other ligands can easily be found in databases such as: https://go.drugbank.com/ or https://www.rcsb.org/

2. **Find Receptor**: My test structure is 8E0G from: https://www.rcsb.org/
| The script 'ReceptorPruning.py' can be used to deal with simple structural errors or conflicts. 

3. **Run docking simulation**: Running Docking.py will dock every ligand within the directory 'Ligand_Nursery' against every receptor in 'Receptor_Nursery'. The outputs will be placed in the output folder as a .pdb. These can be viewed using a simple molecular viewer such as PyMOL
