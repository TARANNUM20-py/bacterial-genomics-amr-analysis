# Bacterial Genome and Antimicrobial Resistance Analysis

## Project Overview
A bacterial genomics mini-project analysing the reference genome of
*Pseudomonas aeruginosa* PAO1 and identifying antimicrobial resistance
(AMR)-associated genes using AMRFinderPlus.

## Research Question
Which AMR-associated genes are detected in the reference genome of
*Pseudomonas aeruginosa* PAO1?

## Dataset
- Organism: Pseudomonas aeruginosa PAO1
- NCBI Assembly accession: GCF_000006765.1
- Genome file: Pseudomonas.fasta

## Tools and Technologies
- Linux (Ubuntu)
- Python
- SeqKit
- AMRFinderPlus 4.2.7
- Nextflow DSL2
- Pandas
- Matplotlib
- Bioconda / Conda

## Workflow
1. Obtain the PAO1 reference genome.
2. Calculate genome statistics using SeqKit.
3. Identify AMR-associated genes using AMRFinderPlus.
4. Summarise detected AMR gene classes.
5. Visualise AMR gene class distribution using Pandas and Matplotlib.
6. Automate genome statistics and AMR summary generation using Nextflow.

## Results

Five AMR-associated gene hits were identified:

| Gene | AMR class |
|---|---|
| catB7 | PHENICOL |
| fosA | FOSFOMYCIN |
| blaPDC-1 | BETA-LACTAM |
| aph(3')-IIb | AMINOGLYCOSIDE |
| blaOXA-50 | BETA-LACTAM |

The detected classes included two beta-lactam-associated hits and
one hit each from the phenicol, fosfomycin and aminoglycoside classes.

## Visualisation

The AMR gene class distribution is available at:

`results/amr_class_distribution.png`

## Interpretation and Limitations

The detected genes represent genomic evidence of AMR-associated
determinants in the reference genome. Their detection does not
independently establish phenotypic antibiotic resistance.

Phenotypic antimicrobial susceptibility testing would be required
to assess the susceptibility profile experimentally.

## Reproducibility

The Nextflow workflow is provided in `main.nf`.

The Python visualisation script is provided in `amr_visualization.py`.

Software environment information is provided in `environment.yml`.

AMRFinderPlus was used separately for AMR gene identification.
Its database version was 2026-10-29.1.

## Author
Sheefa Tarannum
Microbiology Researcher | Aspiring Bioinformatician
