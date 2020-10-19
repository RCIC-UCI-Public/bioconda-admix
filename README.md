## bioconda-admix

This repo installs miniconda for python2 and then adds 
packages for PacBio Secondary Analysis Tools on Bioconda
Note, this tools are NOT available yet for python3. 

The packages github is https://github.com/PacificBiosciences/pbbioconda
But they don't really have release packages source distros so
the only way to install is to use conda. 

Hypothetically, one can get to https://anaconda.org/bioconda/
and form there find packages that conda will download and install. But this
is downloading their prebuilt binaries  (tried and veirfied) and installing 
one by one will surely break some tools. 

Hence - this repo.

### Install miniconda

Use instructions available on https://bioconda.github.io/ 
for installing conda and its channels. 

- Miniconda distro from https://repo.anaconda.com/miniconda/
- Miniconda distro hash information https://conda.io/en/latest/miniconda_hashes.html

Channels set for conda:

- conda-forge
- bioconda
- defaults

### Packages added via conda

The following packages are added to the build and are installed via conda
See packages info on the Pacific Biosciences github https://github.com/PacificBiosciences/pbbioconda
Currently the following are added:

| - | - | - | - | - |
| bam2fastx | bax2bam | blasr | pbgcpp | genomicconsensus |
| isoseq3 | lima | minorseq | pbbam | pbccs |
| pbcommand | pbcopper | pbcore | pbcoretools | pblaa |
| pbalign | pbmm2 | pbsv | recalladapters | |
| - | - | - | - | - |


## Miniconda3

This is for miniconda3 and qiiem2
Use instructions on https://docs.qiime2.org/2020.8/install/native

wget https://data.qiime2.org/distro/core/qiime2-2020.8-py36-linux-conda.yml

Channels set for miniconda3 in condarc3 file:

channels:
  - qiime2/label/r2020.8
  - conda-forge
  - bioconda
  - defaults
