# openmpi-cuda-bins

Pre-built binaries of OpenMPI w/ CUDA &amp; verbs

This requires `docker`.

```bash
bash build.sh
```

will generate the following three files:

- [openmpi-4.0.3-cuda100.tar.gz](https://github.com/mitmul/openmpi-cuda-bins/releases/download/v1.1/openmpi-4.0.3-cuda100.tar.gz)
- [openmpi-4.0.3-cuda101.tar.gz](https://github.com/mitmul/openmpi-cuda-bins/releases/download/v1.1/openmpi-4.0.3-cuda101.tar.gz)
- [openmpi-4.0.3-cuda102.tar.gz](https://github.com/mitmul/openmpi-cuda-bins/releases/download/v1.1/openmpi-4.0.3-cuda102.tar.gz)

Copy one of the generated files into your environment where you want to use OpenMPI w/ CUDA and Infiniband, and install it like this:

```bash
cd /
tar zxf openmpi-4.0.3-cuda102.tar.gz
```

You have to run this as `root`.
It expands the built binaries and headers etc. into `/opt/openmpi`, so that you will add some environment variables to make them visible from other libraries:

```bash
export PATH=/opt/openmpi/bin:$PATH
export CPATH=/opt/openmpi/include:$CPATH
export LIBRARY_PATH=/opt/openmpi/lib:$LIBRARY_PATH
export LD_LIBRARY_PATH=/opt/openmpi/lib:$LD_LIBRARY_PATH
```
