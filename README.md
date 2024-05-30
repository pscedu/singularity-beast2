![Status](https://github.com/pscedu/singularity-beast2/actions/workflows/main.yml/badge.svg)
![Status](https://github.com/pscedu/singularity-beast2/actions/workflows/pretty.yml/badge.svg)
![Issue](https://img.shields.io/github/issues/pscedu/singularity-beast2)
![forks](https://img.shields.io/github/forks/pscedu/singularity-beast2)
![Stars](https://img.shields.io/github/stars/pscedu/singularity-beast2)
![License](https://img.shields.io/github/license/pscedu/singularity-beast2)

# singularity-beast2
![](https://www.beast2.org/images/cropped-Beast2-logo.jpg)
Singularity recipe for [beast2](https://www.beast2.org/).

## Installing the container on Bridges 2
Copy the

* `SIF` file
* and the scripts

to `/opt/packages/BEAST2/2.7.6`.

Copy the file `modulefile.lua` to `/opt/modulefiles/BEAST2` as `2.7.6.lua`.

## Building the image using the recipe
### To build the image locally
Run the script `build.sh` to build image locally.

```
bash ./build.sh
```

### To build the image remotely
Run the script `rbuild.sh` to build image remotely.

```
bash ./rbuild.sh
```

## To run tests
To run the available tests, run the command

```
bash ./test.sh
```

---
Copyright © 2020-2024 Pittsburgh Supercomputing Center. All Rights Reserved.

The [Biomedical Applications Group](https://www.psc.edu/biomedical-applications/) at the [Pittsburgh Supercomputing Center](http://www.psc.edu) in the [Mellon College of Science](https://www.cmu.edu/mcs/) at [Carnegie Mellon University](http://www.cmu.edu).
