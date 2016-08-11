
default: status

changelog note todo progress:
	bin/log $@

empty-dirs:
	@for d in bin doc etc lib man mnt projects src test tmp var ; do \
	[ -d $$d ] || ( echo adding directory $$d ; mkdir $$d ) ; \
	done

push pull:
	git $@ origin master

trivial:
	git commit -m 'trivial edit'

status:
	git status

pdf:
	atril ~/Documents/qt5_cadaques.pdf &

