rule fastqc:
    input:
        unpack(get_fastq)
    output:
        html="qc/fastqc/{sample}-{unit}.html",
        zip="qc/fastqc/{sample}-{unit}_fastqc.zip"
    wrapper:
        "0.39.0/bio/fastqc"

rule multiqc:
    input:
        expand(["qc/fastqc/{u.sample}-{u.unit}_fastqc.zip"],
               u=units.itertuples())
    output:
        report("qc/multiqc.html", caption="../report/multiqc.rst", category="Quality control")
    log:
        "logs/multiqc.log"
    wrapper:
        "0.39.0/bio/multiqc"