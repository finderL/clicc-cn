import glob

chapters = open("chapters.txt").readlines()

template = open("template.txt").read()

for i, title in enumerate(chapters):
    out = template % {'number': i+1, 'title': title.strip()}
    with open("ex%d.tex" % (i+1), "w") as f:
        f.write(out)

