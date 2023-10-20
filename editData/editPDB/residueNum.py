with open("./../../1BRS/1brs_sep.pdb", "r") as f:
    lines = f.readlines()

new_lines = []
for i, line in enumerate(lines):
    if i >= 1704 and line.startswith("ATOM"):
        residue_num = int(line[22:26])
        new_residue_num = residue_num - 110
        new_line = line[:22] + str(new_residue_num).rjust(4) + line[26:]
        new_lines.append(new_line)
    else:
        new_lines.append(line)

with open("./../../1BRS/1brs_sep_new.pdb", "w") as f:
    f.writelines(new_lines)
