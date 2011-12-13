import glob

chapters = open("chapters.txt").readlines()

template = open("template.txt").read()

for i, title in enumerate(chapters):
    out = template % {'number': i, 'title': title.strip()}
    with open("ex%d.tex" % i, "w") as f:
        f.write(out)

