Ligand = "VF1" # Ligand to remove

import os

def wardrobe(input_file, output_file, Ligand):
    with open(input_file, 'r') as infile, open(output_file, 'w') as outfile:
        for line in infile:
            if line.startswith("HETATM") or line.startswith("ATOM"):
                resname = line[17:20].strip()
                if resname == Ligand:
                    continue
                outfile.write(line)
                
                
cd = os.getcwd()
for filename in os.listdir(cd):
    if filename.endswith('.pdb'):
        input_file = os.path.join(cd, filename)
        output_file = os.path.join(cd, f"Pruned_{filename}")
        wardrobe(input_file, output_file, Ligand)
