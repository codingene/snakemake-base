# snakemake base
[![Dependency](https://img.shields.io/badge/Dependency-Snakemake≥5.7.0-blue.svg)](https://snakemake.readthedocs.io/en/stable/)

Lately, Smakemake become a favorite workflow management system for most in the bioinformatics community. This repo can serve as a base to start [adding rules/modules](#Adding-Rules/Modules) as per diffrent workflow requirements.

Basic read QC step is added which is start point for most of NGS analysis. It accepts both paired-end and single-end reads in fastq(`.fq`) format as mentioned in [units.tsv](units.tsv) file.

Use of conda and snakemake wrappers/APIs making it really easy to configure tool requirements, so no need to setup individual tools.

# Working Methodology

## Setup an enviroment 
Insatall Snakemake`>=5.7.0` in a global enviroment using pip3
```
pip3 install snakemake
```
or make an isolated enviroment using conda and activate it.
```
conda create -c bioconda -c conda-forge -n snakemake snakemake=5.7
conda activate snakemake
```
## Clone this repo
```
git clone https://github.com/codingene/snakemake-base.git
```

## Dry Run (for testing)
```
cd snakemake-base
snakemake -n 
```

## Run the workflow
```
snakemake --use-conda --cores 10
```

## Results
It should produce an `qc/multiqc.html` report on current direcotry.

If you working on a server open the html with following

From current directory run
```
python -m http.server 8000
```
browse html file with

http://0.0.0.0:8000/qc/multiqc.html

# Adding Rules/Modules

A specific workflow can be created added by adding [rules/modules](rules) (.smk files). For example see [here for alignment](rules/align.smk). 

Take advantage of followings to write snakemake files.

## Use Snakemake Wrappers
Some commonly used tool can be called directly without writing the full syntax.
Also the advantage, it will automatically download the corresponding tool wrapper with `--use-conda` flag.
In details - [The Snakemake Wrappers repository doc](The Snakemake Wrappers repository)

## Use Snakemake APIs
Snakemake give some API functionality to make life easy to deal with common workflow problems.
In details - [Snakemake-API reference doc](https://snakemake.readthedocs.io/en/stable/api_reference/snakemake.html)

## Use Snakemeke Utils
Some addtional utils from snakemake.
In details - [Snakemake Utils doc](https://snakemake.readthedocs.io/en/stable/api_reference/snakemake_utils.html)
