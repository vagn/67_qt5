
default: status

changelog note:
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
