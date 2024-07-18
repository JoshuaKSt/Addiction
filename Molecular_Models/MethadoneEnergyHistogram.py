from rdkit import Chem
from rdkit.Chem import Draw
from rdkit.Chem import AllChem
import matplotlib.pyplot as plt

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
        status_MMFF = AllChem.MMFFOptimizeMolecule(molecule, confId=confId, maxIters=2000)
        if status_MMFF == 0:
            Optimized_Conformers.append(confId)

properties = AllChem.MMFFGetMoleculeProperties(molecule)

for confId in Optimized_Conformers:
    status_UFF = AllChem.UFFOptimizeMolecule(molecule, confId=confId, maxIters=2000)
    if status_UFF == 0:
        forcefield_UFF = AllChem.UFFGetMoleculeForceField(molecule, confId=confId)
        energy = forcefield_UFF.CalcEnergy()
        Energies.append((energy))

   # Judge = 30
    #low_energy_conformers = [confId for confId, energy in Energies if energy < Judge]

for energy in Energies:
    print(f"Conformer {confId} energy: {energy}")



plt.hist(Energies, bins=50)
plt.xlabel('Energy')
plt.ylabel('Frequency')
plt.title('Energy Distribution of Methadone Conformers')
plt.show()
