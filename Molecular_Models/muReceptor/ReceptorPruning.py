Ligand = "VF1"
Input = "8e0g.pdb"
Output = "Pruned_8e0g.pdb"

def wardrobe(Input, Output, Ligand):
    with open(Input, 'r') as infile, open(Output, 'w') as outfile:
        for line in infile:
            if line.startswith("HETATM") or line.startswith("ATOM"):
                resname = line[17:20].strip()
                if resname == Ligand:
                    continue
                outfile.write(line)
    
wardrobe(Input, Output, Ligand)
