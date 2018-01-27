.PHONY: open-windows.alfredworkflow
open-windows.alfredworkflow:
	@zip open-windows.alfredworkflow *.plist *.sh *.ascr
	@echo "zip file created, importing"
	@open open-windows.alfredworkflow
