# P.B. Bibliography

This repo contains part of the literature used by Paolo Baldini in his works.
The entries are divided by category.
Currently, entries belonging to multiple categories are present just in one.

E.g.:
```
    title:      On the Criticality of Adaptive Boolean Network Robots
    primary:    boolean networks
    others:     complexity, robotics
```

## Generate per-article bibliography

This repo contains a script to generate a custom bibliography file for an article, containing only the cited references.
Firstly, make sure to add this repository as a git submodule.
Then, you can run the script.
Beware, a `.aux` file needs to exist in the article directory.
Beware also specifying the name of the file, as if a file with the same name already exists it will be deleted and overwritten.

```
git submodule add https://github.com/Mandrab/bibliography.git bib

./bib/extract_references.sh generated.bib
```
