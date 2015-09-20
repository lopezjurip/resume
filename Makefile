FILE=./index.md
OUTPUT=./
TEMPLATE=modern

default:
	make allow
	make html
	make pdf

allow:
	chmod +x ./md2resume

html:
	./md2resume html --template $(TEMPLATE) $(FILE) $(OUTPUT)

pdf:
	./md2resume pdf --template $(TEMPLATE) $(FILE) $(OUTPUT)
