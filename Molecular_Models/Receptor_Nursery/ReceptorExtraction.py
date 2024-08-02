import os

pdb_filename = '8k9k.pdb'  # Set this to the .pdb you want to extract a chain from
receptor_chain = 'R'  # Chain Id of structure to be extracted

ligand_chain = 'S' # Chain Id of where ligand is located
ligand_resname = 'DAMGO' # Change to the ligand Id that you want the coordinates of
output_filename = os.path.join(os.getcwd(), f'{receptor_chain}_receptor.pdb')


def extractCoordinates(pdb_filename, ligand_resname):
    coordinates = []
    with open(pdb_filename, 'r') as pdb_file:
        for line in pdb_file:
            if line.startswith("HETATM"):
                resname = line[17:20].strip()
                if resname == ligand_resname:
                    x = float(line[30:38].strip())
                    y = float(line[38:46].strip())
                    z = float(line[46:54].strip())
                    print(f"Coordinates found: {x}, {y}, {z}")
                    coordinates.append((x, y, z))
    return coordinates

def extractReceptor(pdb_filename, receptor_chain, output_filename):
    with open(pdb_filename, 'r') as pdb_file:
        with open(output_filename, 'w') as output_file:
            for line in pdb_file:
                if line.startswith("ATOM") or line.startswith("HETATM"):
                    chain_id = line[21].strip()
                    if chain_id == receptor_chain:
                        output_file.write(line)


Coords = extractCoordinates(pdb_filename, ligand_resname)
print (f"{ligand_resname} coordinates: {coordinates}")
extractReceptor(pdb_filename, receptor_chain, output_filename)
print(f"Receptor chain {receptor_chain} extracted to {output_filename}")
