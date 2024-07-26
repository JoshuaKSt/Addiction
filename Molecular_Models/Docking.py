import os
import subprocess

# Define Directories
Ligand_dir = 'Ligand_Nursery'
Mu_dir = 'Receptor_Nursery'
output_dir = 'Output'
os.makedirs(output_dir, exist_ok=True)

# Define Dependancy Paths
obabel = "obabel"
Vina = "./Dependancies/AutoDock-Vina/build/linux/release/vina"
trash_dir = os.path.join(output_dir, "Trash")
os.makedirs(trash_dir, exist_ok=True)

# Function using subprocess to run commands
def runCmd(command):
    env = os.environ.copy()
    print(f"Running command: {command}")
    subprocess.run(command, shell=True, check=True, env=env)

# Function to add hydrogen to PDB files
def agua(input_file, output_file):
    command = f"{obabel} -i pdb {input_file} -o pdb -O {output_file} --addhydrogens"
    runCmd(command)

# Function to convert PDB file to PDBQT file
def Convert(input_file, output_file):
    command = f"{obabel} -i pdb {input_file} -o pdbqt -O {output_file} --partialcharge"
    runCmd(command)

# Function to convert PDB file to rigid PDBQT file
def ConvertRigid(input_file, output_file):
    command = f"{obabel} -i pdb {input_file} -o pdbqt -O {output_file} --partialcharge -xr"
    runCmd(command)

# Function to convert PDBQT to PDB
def merge_prep(outname, pdb_file):
    command = f"{obabel} {outname} -O {pdb_file}"
    runCmd(command)

# Function to merge PDB of ligand with the receptor
def merger(Mprep_out, receptor2, Finale):
    with open(Finale, 'w') as outfile:
        for fname in [Mprep_out, receptor2]:
            with open(fname) as infile:
                for line in infile:
                    outfile.write(line)

# Function to find specifically named files within Receptor_Nursery
def find_pruned():
    for file in os.listdir(Mu_dir):
        if file.startswith("Pruned") and file.endswith(".pdb"):
            return file
            Receptor = find_pruned()

def fileConversion(rawr, Receptor):
    okay = os.path.splitext(os.path.basename(rawr))[0]
    ligand_inp = os.path.join(Ligand_dir, f"{rawr}")
    ligand2 = os.path.join(trash_dir, f"{okay}_ligand.pdbqt")
    temp_intermediary = os.path.join(trash_dir, f"{okay}_ligand_intermediary.pdb") 
    receptor2 = os.path.join(trash_dir, f"{os.path.splitext(Receptor)[0]}.pdbqt")
    Receptor_intermediary = os.path.join(trash_dir, f"{os.path.splitext(Receptor)[0]}_intermediary.pdb")

    Recep_path = os.path.join(Mu_dir, Receptor)
    agua(Recep_path, Receptor_intermediary)
    agua(ligand_inp, temp_intermediary)
    Convert(temp_intermediary, ligand2)
    ConvertRigid(Receptor_intermediary, receptor2)
    return ligand2, receptor2

def vina(ligand2, receptor2, outname):
    os.makedirs(f"Output/{outname}", exist_ok=True)
    outpath = f"Output/{outname}" 
    out_file = os.path.join(f"Output/{outname}", f"{outname}_out.pdbqt")
    config_file = os.path.join(outpath, f"{outname}_config.txt")

    default_center_x = 0.6710000038146973
    default_center_y = 16.836999893188477
    default_center_z = -60.97999954223633
    default_size_x = 30
    default_size_y = 30
    default_size_z = 30

    center_x = input(f"Enter X coordinate (leave blank for default X center: {default_center_x}): ")
    center_y = input(f"Enter Y coordinate (leave blank for default Y center: {default_center_y}): ")
    center_z = input(f"Enter Z coordinate (leave blank for default Z center: {default_center_z}): ")
    
    center_x = float(center_x) if center_x else default_center_x
    center_y = float(center_y) if center_y else default_center_y
    center_z = float(center_z) if center_z else default_center_z

    size_x = input(f"Enter molecules X size (leave blank for default X size: {default_size_x}): ")
    size_y = input(f"Enter molecules Y size (leave blank for default Y size: {default_size_y}): ")
    size_z = input(f"Enter molecules Z size (leave blank for default Z size: {default_size_z}): ")

    size_x = float(size_x) if size_x else default_size_x
    size_y = float(size_y) if size_y else default_size_y
    size_z = float(size_z) if size_z else default_size_z
    
    with open(config_file, 'w') as f:
        f.write(f"receptor = {receptor2}\n")
        f.write(f"ligand = {ligand2}\n")
        f.write(f"center_x = {center_x}\ncenter_y = {center_y}\ncenter_z = {center_z}\n")
        f.write(f"size_x = {size_x}\nsize_y = {size_y}\nsize_z = {size_z}\n")

    os.makedirs(output_dir, exist_ok=True)



    command = f"{Vina} --config {config_file} --out {out_file}"
    runCmd(command)


def Simulate():
    Recep_file = find_pruned()
    if Recep_file:
        for index, filename in enumerate(os.listdir(Ligand_dir)):
            if filename.endswith('.pdb'):
                rawr = os.path.abspath(os.path.join(Ligand_dir, filename))
                name = os.path.splitext(filename)[0]
                outname = f"{name}_ligand_{index + 1}"
                Mprep_out = os.path.join(f"{trash_dir}","temporary.pdb")
                Finale = os.path.join(output_dir, f"{name}_simulation_{index + 1}.pdb")

                ligand2, receptor2 = fileConversion(rawr, Recep_file)
                vina(ligand2, receptor2, outname)
                merge_prep(f"Output/{outname}/{outname}_out.pdbqt", Mprep_out)
                merger(Mprep_out, receptor2, Finale)

Simulate()
