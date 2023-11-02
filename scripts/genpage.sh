#!/bin/sh
# genpage.sh -- generate a page from a set of templates.
# path: expected location of the file within the directory tree.

usage() {
    echo "Usage: genpage.sh [-h] <input file> <output file>"
}

if [ $# -lt 2 ]; then
    usage
    exit 1
fi

while getopts hp: arg
do
    case arg in
	h) usage; exit 1;;
    esac
done

cat ../templates/header.html $1 ../templates/footer.html > $2

echo "Outputted to" $2.
echo "You will need to manually modify the paths to each of the links."
