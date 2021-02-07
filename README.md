# MULTIPLETEST container

A Docker container for the MULTIPLETEST package by:

S. García, F. Herrera, An Extension on "Statistical Comparisons of Classifiers over Multiple Data Sets" for all Pairwise Comparisons. Journal of Machine Learning Research 9 (2008)

See:
- https://sci2s.ugr.es/sicidm

## Usage

### Building the image

```bash
git clone https://github.com/pocs-anguilla/multipletest-container
cd multipletest-container
docker build -t multipletest .
```

### Using the image

```bash
docker run --rm -i -v $PWD:/workspace -t multipletest <data_filename.csv> > out.latex 
```
