# submission_checklist
Tooling to make sure you don't forget anything for the submission


```
grep -E -r --include=\*.py --include=\*.ipynb "(read_|write_|open|to_csv|to_file|save|load|pd.read_|gpd.read_).*[\"']([^\"']+\.(csv|json|shp|txt|parquet))[\"']" > file_list
```
