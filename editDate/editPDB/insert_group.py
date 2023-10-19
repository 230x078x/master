with open('../dat/dock/dock2/1brs.pdb', 'r') as f:
    lines = f.readlines()

new_lines = []
for i, line in enumerate(lines):
    if i < 1700:
        new_line = line[:21] + 'A' + line[22:]
    else:
        new_line = line[:21] + 'B' + line[22:]
    new_lines.append(new_line)

with open('../dat/dock/dock2/1brs_AB.pdb', 'w') as f:
    f.writelines(new_lines)
