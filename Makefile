open-windows.alfredworkflow:
	@zip open-windows.alfredworkflow info.plist filter.sh windows.ascr
	@echo "zip file created, importing"
	@open open-windows.alfredworkflow

default: open-windows.alfredworkflow

clean:
	@rm open-windows.alfredworkflow
