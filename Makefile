open-windows.alfredworkflow:
	@zip open-windows.alfredworkflow *.plist *.sh *.ascr
	@echo "zip file created, importing"
	@open open-windows.alfredworkflow

default: open-windows.alfredworkflow

clean:
	@rm open-windows.alfredworkflow
