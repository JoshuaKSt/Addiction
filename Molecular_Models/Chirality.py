import os
from rdkit import Chem
from rdkit.Chem import AllChem
from rdkit.Chem import Draw

pdb = 'PDB_Nursery'
output_directory = 'Fork_in_the_Road'
os.makedirs(output_directory, exist_ok=True)


for filename in os.listdir(pdb):
    if filename.endswith('.pdb'):
        pdb_file = os.path.join(pdb, filename)
        mol = Chem.MolFromPDBFile(pdb_file, removeHs=False)
        AllChem.EmbedMolecule(mol)
        Chem.AssignStereochemistry(mol, cleanIt=True, force=True)
        
        chiral_centers = Chem.FindMolChiralCenters(mol, includeUnassigned=True)
        print(f"\nMolecule: {filename}: {chiral_centers}")
	
img = Draw.MolToImage(mol, size=(300, 300), kekulize=True)
img_filename = os.path.join(output_directory, f"{os.path.splitext(filename)[0]}_chirality.png")
img.save(img_filename)
	
print("+"*50 + "\n")
	

