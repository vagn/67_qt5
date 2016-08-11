
default: note

note:
	bin/log note

change*:
	bin/log changelog

empty-dirs:
	@for d in bin doc etc lib man mnt projects src test tmp var ; do \
	[ -d $$d ] || ( echo adding directory $$d ; mkdir $$d ) ; \
	done
