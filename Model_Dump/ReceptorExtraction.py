import os

pdb_filename = '8E0G.pdb' # Set this to the protein .pdb you want to extract a ligand from
ligand_resname = 'VF1' # Residue name of ligand to be extracted
output_filename = f'{ligand_resname}_ligand.pdb'

def extractLigand(pdb_filename, ligand_resname, output_filename):
    output_filename = [0]
    with open(pdb_filename, 'r') as pdb_file:
        with open(output_filename, 'w') as ligand_file:
            for line in pdb_file:
                if line.startswith("HETATM") or line.startswith("ATOM"):
                    resname = line[17:20].strip()
                    if resname == ligand_resname:
                        ligand_file.write(line)

extractLigand(pdb_filename, ligand_resname, output_filename)
print(f"Ligand {ligand resname} extracted to {output_filename}")
