
default: status

changelog todo progress:
	bin/log $@

note:
	bin/log -m 

empty-dirs:
	@for d in bin doc etc lib man mnt projects src test tmp var ; do \
	[ -d $$d ] || ( echo adding directory $$d ; mkdir $$d ) ; \
	done

push pull:
	git $@ origin master

trivial obvious:
	git commit -m "$@ edit"

status:
	git status

pdf:
	atril ~/Documents/qt5_cadaques.pdf &

