# snakemake base

This repo can serve as a base to start adding modules (.smk) files as per any workflow requirements.

# Dependency
snakemake=5.7.1

# Create an isolated enviroment to run
 ```
 conda create -c bioconda -c conda-forge -n snakeflake snakemake=5.7.1
 ```

# Dry Run (for test)
```
snakemake -n 
```

# Run the workflow
```
snakemake --use-conda --cores 10
```

# View html files from server

from current directory run follwing
```
python -m http.server 8000
```
and open html file with

http://10.0.0.149:8000/current_dir/index.html
