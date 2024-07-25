import os
from rdkit import Chem
from rdkit.Chem import Draw
from rdkit.Chem import AllChem
import matplotlib.pyplot as plt

output_directory = 'Ligand_Nursery'
os.makedirs(output_directory, exist_ok=True)


Optimized_Conformers = []
Energies = []

smiles = 'CN(C)C(C)CC(C1=CC=CC=C1)(C2=CC=CC=C2)C(=O)CC'

molecule = Chem.MolFromSmiles(smiles)
molecule = Chem.AddHs(molecule)

params = AllChem.ETKDGv3()
params.useBasicKnowledge = True
params.enforceChirality = True
params.pruneRmsThresh = 0.1
Chem.SanitizeMol(molecule)

conformers = AllChem.EmbedMultipleConfs(molecule, numConfs=100, params=params)

for confId in conformers:
    status_MMFF = AllChem.MMFFOptimizeMolecule(molecule, confId=confId, maxIters=5000)
    if status_MMFF == 0:
        Optimized_Conformers.append(confId)

properties = AllChem.MMFFGetMoleculeProperties(molecule)

for confId in Optimized_Conformers:
    status_UFF = AllChem.UFFOptimizeMolecule(molecule, confId=confId, maxIters=2000)
    if status_UFF == 0:
        forcefield_UFF = AllChem.UFFGetMoleculeForceField(molecule, confId=confId)
        energy = forcefield_UFF.CalcEnergy()
        Energies.append((confId, energy))

   # Judge = 30
    #low_energy_conformers = [confId for confId, energy in Energies if energy < Judge]

for confId, energy in Energies:
    print(f"Conformer {confId} energy: {energy}")

lowest_energy_conf = min(Energies, key=lambda x: x[1])[0]
print(f"Lowest Energy Configuration: {lowest_energy_conf}")
img = Draw.MolToImage(molecule, confId=lowest_energy_conf)
with open('img_out.png', 'wb') as outfp:
        img.save(outfp)
        print('save in file img_out.png')
        
plt.show()

molecule.SetProp("_Name", "Methadone")
output_pdb_path = os.path.join(output_directory, 'methadone.pdb')
Chem.MolToPDBFile(molecule, output_pdb_path, confId=lowest_energy_conf)



