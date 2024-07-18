import os
from rdkit import Chem
from rdkit.Chem import AllChem
from rdkit.Chem import Draw

pdb_directory = 'PDB_Nursery'
output_directory = 'Fork_in_the_Road'
os.makedirs(output_directory, exist_ok=True)


for filename in os.listdir(pdb_directory):
    if filename.endswith('.pdb'):
        pdb_file = os.path.join(pdb_directory, filename)
        mol = Chem.MolFromPDBFile(pdb_file, removeHs=False)
        AllChem.EmbedMolecule(mol)
        Chem.AssignStereochemistry(mol, cleanIt=True, force=True)
        print(f"\nMolecule: {filename}")
        print("="*50)

        chiral_centers = Chem.FindMolChiralCenters(mol, includeUnassigned=True)
        print(f"Chiral centers in {filename}: {chiral_centers}")
        for center in chiral_centers:
            atom_idx, chirality = center
            atom = mol.GetAtomWithIdx(atom_idx)
            print(f"Atom index: {atom_idx}, Element: {atom.GetSymbol()}, Chirality: {chirality}")
	
img = Draw.MolToImage(mol, size=(300, 300), kekulize=True)
img_filename = os.path.join(output_directory, f"{os.path.splitext(filename)[0]}_chirality.png")
img.save(img_filename)
	
print("Chirality png saved")
print("+"*50 + "\n")
	

