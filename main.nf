nextflow.enable.dsl=2

params.genome = "data/Pseudomonas.fasta"
params.amr = "data/Pseudomonas_AMR_results.tsv"

process GENOME_STATS {

    publishDir "results", mode: "copy"

    input:
    path genome

    output:
    path "genome_stats.txt"

    script:
    """
    seqkit stats ${genome} > genome_stats.txt
    """
}

process AMR_SUMMARY {

    publishDir "results", mode: "copy"

    input:
    path amr

    output:
    path "amr_gene_summary.txt"

    script:
    """
    cut -f1-3 ${amr} > amr_gene_summary.txt
    """
}

workflow {

    genome_file = Channel.fromPath(params.genome)
    amr_file = Channel.fromPath(params.amr)

    GENOME_STATS(genome_file)
    AMR_SUMMARY(amr_file)


}
