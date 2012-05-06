# -*- encoding: utf8 -*-
# A dirty script to produce readable Chinese html pages.

import os
import sys
import re

from lxml import etree

parser = etree.HTMLParser()
prefix = "learn-c-the-hard-way"
tags = ["dd", "li", "p", "div", "span"]

def spacify(text):
    """Makes spaces appear in the proper positions. """
    cn_en = re.compile(u"([一-龥])([-A-Za-z0-9])")
    en_cn = re.compile(u"([-A-Za-z0-9])([一-龥])")
    cn_brk = re.compile(u"([一-龥])(\n\s*)([一-龥])")
    text_brk = cn_brk.sub(r"\1\3", text)
    text_final = en_cn.sub(r"\1 \2", cn_en.sub(r"\1 \2", text_brk))
    return unicode(text_final)


def xspacify(text):
    prespan = re.compile(r'([一-龥])(<span class="obeylines-h"><span class="verb">)')
    postspan = re.compile(r'([-A-Za-z0-9]</span></span>)([一-龥])')
    preanchor = re.compile(r'([一-龥])(<a href=.*?>[-A-Za-z0-9])')
    postanchor = re.compile(r'([-A-Za-z0-9]</a>)([一-龥])')
    brclose = re.compile(r'</br>')
    regexes = [prespan, postspan, preanchor, postanchor]
    for r in regexes:
        text = r.sub(r'\1 \2', text)
    text = brclose.sub("", text)
    return text


def main(args):
    if len(args) <= 1:
        print "Usage: %s PATTERN" % args[0]
        return 1
    for htfile in args[1:]:
        print "Cleaning", htfile
        doc = etree.parse(htfile, parser)

        for t in tags:
            for part in doc.xpath("//" + t):
                if part.text is not None:
                    part.text = spacify(part.text)
                if part.tail is not None:
                    part.tail = spacify(part.tail)

        # Correct page title.
        if prefix + "ch" in htfile:  # chapters
            h2 = doc.xpath("//h2")[0]
            if h2 is not None:
                it = list(h2.itertext())[1]
                head = doc.find("head").find("title")
                head.text = it
        elif prefix + "li" in htfile:  # preface
            h2 = doc.xpath("//h2/*")[0]
            head = doc.find("head").find("title")
            head.text = h2.tail
        elif prefix + "pa" in htfile:  # toc
            h1 = doc.xpath("//h1")[0]
            part = h1.find("span").text
            name = h1.tail
            if h1 is not None:
                head = doc.find("head").find("title")
                head.text = part

        doc.write_c14n(htfile)
        
        # For tag separated text.
        f_txt = xspacify(open(htfile).read())
        with open(htfile, 'w') as fnew:
            fnew.write(f_txt)

if __name__ == '__main__':
    main(sys.argv)

