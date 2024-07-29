import matplotlib.pyplot as plt
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
dummy_receptor_path = os.path.join(trash_dir, "dummy_receptor.pdbqt")
dummy_ligand_path = os.path.join(trash_dir, "dummy_ligand.pdbqt")

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

# Function to convert given .pdb files into necessary file types and place them in directories
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

# Function for using AutoDock-Vina
def vina(ligand2, receptor2, outname, is_dummy=False):
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

    def inp(prompt, default):
        value = input(prompt)
        try:
            return float(value) if value else default
        except ValueError:
            return default

    if ligand2 and receptor2 and not is_dummy:
        center_x = inp(f"Enter X coordinate (leave blank for default X center: {default_center_x}): ", default_center_x)
        center_y = inp(f"Enter Y coordinate (leave blank for default Y center: {default_center_y}): ", default_center_y)
        center_z = inp(f"Enter Z coordinate (leave blank for default Z center: {default_center_z}): ", default_center_z)
        size_x = inp(f"Enter molecules X size (leave blank for default X size: {default_size_x}): ", default_size_x)
        size_y = inp(f"Enter molecules Y size (leave blank for default Y size: {default_size_y}): ", default_size_y)
        size_z = inp(f"Enter molecules Z size (leave blank for default Z size: {default_size_z}): ", default_size_z)
    else:
        center_x = default_center_x
        center_y = default_center_y
        center_z = default_center_z
        size_x = default_size_x
        size_y = default_size_y
        size_z = default_size_z

    with open(config_file, 'w') as f:
        if receptor2:
            f.write(f"receptor = {receptor2}\n")
        if ligand2:
            f.write(f"ligand = {ligand2}\n")
        f.write(f"center_x = {center_x}\ncenter_y = {center_y}\ncenter_z = {center_z}\n")
        f.write(f"size_x = {size_x}\nsize_y = {size_y}\nsize_z = {size_z}\n")

    os.makedirs(output_dir, exist_ok=True)
    command = f"{Vina} --config {config_file} --out {out_file}"
    runCmd(command)
    return out_file

# Function for extracting binding affinities from vinas output
def extractAffinity(vina_output_file):
    with open(vina_output_file, 'r') as file:
        for line in file:
            if line.strip().startswith("REMARK VINA RESULT:"):
                affinity = float(line.split()[3])
                return affinity

# Creates an energy diagram of the energy levels before and after binding.
def energy_diagram(results):
    fig, ax = plt.subplots(figsize=(10, 6))

    for index, (name, affinity, soloLigand, soloReceptor) in enumerate(results): 
        complex = affinity
        ax.plot([index * 4, index * 4 + 1], [soloLigand, soloLigand], 'r-', linewidth=2, label='Solo Ligand')
        ax.plot([index * 4, index * 4 + 1], [soloReceptor, soloReceptor], 'g-', linewidth=2, label='Free Receptor')
        ax.plot([index * 4 + 2, index * 4 + 3], [complex, complex], 'b-', linewidth=2, label=f'{name} Complex')
        ax.text(index * 4 + 0.5, soloLigand + 0.5, 'Solo Ligand', ha='center', color='r')
        ax.text(index * 4 + 0.5, soloReceptor + 0.5, 'Solo Receptor', ha='center', color='g')
        ax.text(index * 4 + 2.5, complex + 0.5, f'{name} Complex', ha='center', color='b')
        delta_energy = complex - (soloLigand + soloReceptor)
        ax.annotate('', xy=(index * 4 + 1, soloLigand), xytext=(index * 4 + 2, complex),
                    arrowprops=dict(facecolor='black', shrink=0.05, width=1, headwidth=8))
        ax.text(index * 4 + 1.5, (soloLigand + complex) / 2, f'ΔE = {delta_energy:.2f} kcal/mol', ha='center')
    ax.set_ylabel('Energy (kcal/mol)')
    ax.set_title('Energy Diagram: Ligand Binding to Receptor')
    ax.get_xaxis().set_visible(False)
    ax.legend()

    plt.tight_layout()
    plt.show()

def create_dummy_files(dummy_receptor_path, dummy_ligand_path):
    if not os.path.exists(dummy_receptor_path):
        with open(dummy_receptor_path, 'w') as f:
            f.write("REMARK   1 DUMMY RECEPTOR\n")
            f.write("ATOM      1  DUM  DUM D   1       0.000   0.000   0.000  1.00  0.00           D\n")
            f.write("END\n")

    if not os.path.exists(dummy_ligand_path):
        with open(dummy_ligand_path, 'w') as f:
            f.write("REMARK   1 DUMMY LIGAND\n")
            f.write("ATOM      1  DUM  DUM D   1       0.000   0.000   0.000  1.00  0.00           D\n")
            f.write("END\n")

def solo_Ligand(ligand_file):
    vina_output = vina(ligand_file, dummy_receptor_path, 'lonelyLigand', is_dummy=True)
    affinity = extractAffinity(vina_output)
    return affinity

def solo_Receptor(receptor_file):
    vina_output = vina(receptor_file, dummy_ligand_path, 'lonelyReceptor', is_dummy=True)
    affinity = extractAffinity(vina_output)
    return affinity

# Simulation function
def Simulate():
    results = []
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
                vina_output = vina(ligand2, receptor2, outname, is_dummy=False)
                merge_prep(f"Output/{outname}/{outname}_out.pdbqt", Mprep_out)
                merger(Mprep_out, receptor2, Finale)
                soloLigand = solo_Ligand(ligand2)
                soloReceptor = solo_Receptor(receptor2)
                affinity = extractAffinity(vina_output)
                print(f"Binding affinity for {filename}: {affinity} kcal/mol")
                results.append((filename, affinity, soloLigand, soloReceptor))
    return results

create_dummy_files(dummy_receptor_path, dummy_ligand_path)
results = Simulate()
energy_diagram(results)
