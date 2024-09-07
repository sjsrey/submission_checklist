TARGETDIR="/home/serge/para/1_projects/paper_school_neighborhood_congruence/schoolneighborhoodconcordance"
DIRECTORY=$(TARGETDIR)"/notebooks/"
OTHER_GIT_REPO_PATH=$(TARGETDIR)"/.git"
GIT_BRANCH=main
GIT_DIRECTORY=.

# Target to list files in the other Git repository
gitfilelist:
	@git --git-dir=$(OTHER_GIT_REPO_PATH) --work-tree=$(TARGETDIR) \
	ls-tree -r $(GIT_BRANCH) -- $(GIT_DIRECTORY) > git_file_list


filelist:
	@grep -E -r --include=\*.py --include=\*.ipynb \
	"(read_|write_|open|to_csv|to_file|save|load|pd.read_|gpd.read_).*[\"']([^\"']+\.(csv|json|shp|txt|parquet))[\"']" \
	$(DIRECTORY) > file_list

clean:
	rm git_file_list file_list

