DRAFTS = $(shell find drafts -type f)
IMAGES = $(shell find images -type f)
RESOURCES = $(shell find resources -type f)
TEMPLATES = $(shell find templates -type f)
TARGET = slug

$(TARGET): $(DRAFTS) $(IMAGES) $(RESOURCES) $(TEMPLATES) 
	./scripts/gensite.sh -d ./drafts -b ./slug
clean:
	rm -rf ./slug


