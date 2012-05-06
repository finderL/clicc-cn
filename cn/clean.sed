s/⋆/*/g
s/&#x8217;/'/g
s/&#8217;/'/g
s/&#8221;/"/g
s/&#x0022;/"/g
s/&#x22C6;/*/g
s/^ *$//g
/<\/body>/{
r output/site/footer.html
d
}
/<link rel="stylesheet" type="text\/css" href="{{ PROJECT_NAME }}.css">/{
r output/site/styles.html
d
}
/<\/head><body/{
N
    />/{
        r output/site/tabs.html
        d
    }
}
