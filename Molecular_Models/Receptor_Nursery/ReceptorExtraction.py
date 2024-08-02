import os

pdb_filename = '8k9k.pdb'  # Set this to the .pdb you want to extract a chain from
receptor_chain = 'R'  # Chain Id of structure to be extracted

output_filename = os.path.join(os.getcwd(), f'{receptor_chain}_receptor.pdb')


def extractReceptor(pdb_filename, receptor_chain, output_filename):
    with open(pdb_filename, 'r') as pdb_file:
        with open(output_filename, 'w') as output_file:
            for line in pdb_file:
                if line.startswith("ATOM") or line.startswith("HETATM"):
                    chain_id = line[21].strip()
                    if chain_id == receptor_chain:
                        output_file.write(line)


extractReceptor(pdb_filename, receptor_chain, output_filename)
print(f"Receptor chain {receptor_chain} extracted to {output_filename}")
