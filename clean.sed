s/⋆/*/g
s/&#x8217;/'/g
s/&#8217;/'/g
s/&#8221;/"/g
s/&#x0022;/"/g
s/&#x22C6;/*/g
s/^ *$//g
/<\/body>/{
r site/footer.html
d
}
/<link rel="stylesheet" type="text\/css" href="cli-crash-course.css">/{
r site/styles.html
d
}
/<\/head><body/{
N
    />/{
        r site/tabs.html
        d
    }
}
