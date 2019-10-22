include: "rules/common.smk"

##### Target rules #####

rule all:
    input:
        "qc/multiqc.html"


##### Modules #####
include: "rules/pre-align-qc.smk"
#include: "rules/primary-align.smk"

