.PHONY: mount-share03
mount-share03: 
	@sudo mount 10.34.30.224:/home /share03

.PHONY: ssh-share03
ssh-share03: 
	@ssh yamada@10.34.30.202