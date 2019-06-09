### salmon v0.12.0

`salmon_v0.12.0` corresponds to our 2019 Houston workshop.

We run all scripts in the Docker container for training (introduced here: [AlexsLemonade/RNA-Seq-Exercises](https://github.com/AlexsLemonade/RNA-Seq-Exercises/pull/22)).

The Docker container can be obtained like so:

```
docker pull ccdl/training_rnaseq:2019-houston
```

_Note: `optparse` is not installed on that Docker image but is required to generate the tx2gene files._

Scripts are intended to be run sequentially.