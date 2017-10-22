.PHONY: deploy
deploy:
	mkdocs build
	scp -r ./site/* $(SFTP_USER)@$(SFTP_HOSTNAME):$(SFTP_PATH)
	rm -rf ./site