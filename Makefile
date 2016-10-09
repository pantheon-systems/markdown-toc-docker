readme-toc: ## update the Table of Contents in ./README.md (replaces <!-- toc --> tag)
	#docker run --rm -v `pwd`:/src quay.io/getpantheon/markdown-toc -i /src/README.md
	docker run --rm -v `pwd`:/src markdown-toc -i /src/README.md
