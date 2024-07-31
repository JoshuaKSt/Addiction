# Script made to optimize .mol and .sdf files in /SDF_MOL and convert them into .pdb | drugbank is great to find these 
import os
import random
from rdkit import Chem
from rdkit.Chem import Draw
from rdkit.Chem import AllChem
import numpy as np
import matplotlib; matplotlib.use('Agg')
import matplotlib.pyplot as plt

# Directories
Graph_dir = 'Ligand_Models'
output_directory = './SDF_MOL'
os.makedirs(output_directory, exist_ok=True)
os.makedirs(Graph_dir, exist_ok=True)
os.makedirs(f'{Graph_dir}/Histograms', exist_ok=True)
os.makedirs(f'{Graph_dir}/ScatterPlots', exist_ok=True)

# Function to create and optimize conformers using a random seed for conformer generation
def optimize(molecule, num_confs=1500):
    optimized_conformers = []
    params = AllChem.ETKDGv3()
    params.useBasicKnowledge = True
    params.enforceChirality = True
    params.pruneRmsThresh = 0.1
    conformers = AllChem.EmbedMultipleConfs(molecule, numConfs=num_confs, params=params)
    print(f"Generated {len(conformers)} conformers")
    
    for confId in conformers:           
        try:
            if AllChem.MMFFOptimizeMolecule(molecule, confId=confId, maxIters=2000) ==0:
                optimized_conformers.append(confId)
        except ValueError as e:
            print(f"error: {e}")    

    print(f"optimized {len(optimized_conformers)}")
    return optimized_conformers

# Function to get the lowest energy conformer
def Energy(molecule, conformers):
    energies = []
    print(f"Calculating conformer energies")
    for confId in conformers:
        try:
            if AllChem.UFFOptimizeMolecule(molecule, confId=confId, maxIters=2000) == 0:
                forcefield = AllChem.UFFGetMoleculeForceField(molecule, confId=confId)
                energy = forcefield.CalcEnergy()
                energies.append((confId, energy))
        except ValueError as e:
            print(f"Error: {e}")    
    return energies

# Process each file in the Ligand_Nursery directory
for filename in os.listdir(output_directory):
    if filename.endswith('.sdf') or filename.endswith('.mol'):
        file_path = os.path.join(output_directory, filename)
        suppl = Chem.SDMolSupplier(file_path) if filename.endswith('.sdf') else [Chem.MolFromMolFile(file_path)]

        for molecule in suppl:
            if molecule is None:
                continue
            
            molecule = Chem.AddHs(molecule)
            Chem.SanitizeMol(molecule)
            optimized_conformers = optimize(molecule)
            print(f"Successfully optimized: {len(optimized_conformers)}")
            energies = Energy(molecule, optimized_conformers)

            if energies:
                conf_ids, conf_energies = zip(*energies)
# convert to np array for plots
                conf_energies = np.array(conf_energies)
                Counter = len(conf_energies)

# Scatter plot

                plt.figure()
                plt.scatter(range(len(conf_energies)), conf_energies, color='aquamarine')
                plt.title(f'Energy Distribution Scatter for {Counter} {filename} Conformers')
                plt.xlabel('Conformer Index')
                plt.ylabel('Energy')
                scatter_path = os.path.join(f'{Graph_dir}/ScatterPlots', f'{os.path.splitext(filename)[0]}_Energy_Scatter.png')
                plt.savefig(scatter_path)
                plt.close()
                print(f'Saved energy scatter plot in file {scatter_path}')
                min_energy = np.min(conf_energies)
                max_energy = np.max(conf_energies)
                bin_range = (min_energy, max_energy)
                bin_width = (max_energy - min_energy) / 100
                bins = np.arange(min_energy, max_energy + bin_width, bin_width)

# Histogram
                plt.figure()
                plt.hist(conf_energies, bins=bins, edgecolor='black', color='aquamarine')
                print("histogram created")
                plt.title(f'Energy Distribution for {Counter} {filename} conformers')
                plt.xlabel('Energy')
                plt.ylabel('Frequency')
                hist_path = os.path.join(f'{Graph_dir}/Histograms', f'{os.path.splitext(filename)[0]}_Energy_Histogram.png')
                print(f"saving histrogram to {hist_path}")
                plt.savefig(hist_path)
                plt.close()
                print(f'Saved energy histogram in file {hist_path}')


# Find and save the lowest energy conformer
                lowest_energy = min(energies, key=lambda x: x[1])[0]
                print(f"Lowest Energy Configuration for {filename}: {lowest_energy}")

                img = Draw.MolToImage(molecule, confId=lowest_energy)
                img_path = os.path.join(Graph_dir, f'{os.path.splitext(filename)[0]}_Overlay.png')
                img.save(img_path)
                print(f'Saved model in file {img_path}')
                
                molecule.SetProp("_Name", os.path.splitext(filename)[0])
                output_pdb_path = os.path.join('.', f'{os.path.splitext(filename)[0]}.pdb')
                Chem.MolToPDBFile(molecule, output_pdb_path, confId=lowest_energy)
                print(f'Saved lowest energy conformer in file {output_pdb_path}')
