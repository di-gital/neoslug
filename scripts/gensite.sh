#!/bin/sh

write_header() {
    if [ ! -e "$OUTFILE" ]; then
	mkdir -p $(dirname "$OUTFILE")
    fi
    
    sed -E "s,IMAGES_DIR,$IMAGES,g" ../templates/header.html | \
	sed -E "s,RESOURCES_DIR,$RESOURCES,g" | \
	sed -E "s,ROOT,$REL_PATH,g" > $OUTFILE
}

write_doc() {
    cat $INFILE >> $OUTFILE
}

write_footer() {
    sed -E "s,IMAGES_DIR,$IMAGES,g" ../templates/footer.html | \
	sed -E "s,RESOURCES_DIR,$RESOURCES,g" >> $OUTFILE
}

relative() {
    if [ $DEPTH -eq 1 ]; then
	REL_PATH=""
    else
	REL_PATH=$(jot -b "../" -s "" $((DEPTH-1)))
    fi
}

cd ../drafts

for i in $(find . -type f); do
    DEPTH=$(echo $i | grep -o '/' | grep -c .)
    relative
    IMAGES="$REL_PATH"images
    RESOURCES="$REL_PATH"resources
    INFILE="$i"
    OUTFILE="../slug/$i"
    
    write_header
    write_doc
    write_footer
done
