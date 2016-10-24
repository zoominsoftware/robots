testghci:
	ghcid -c "stack ghci robots-txt:test:tests" --warnings --test=:main
