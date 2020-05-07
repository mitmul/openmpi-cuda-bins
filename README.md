# openmpi-cuda

Pre-built binaries of OpenMPI w/ CUDA &amp; verbs

This requires `docker`.

```bash
bash build.sh
```

will generate the following three files:

- [openmpi-4.0.3-cuda100.tar.gz](https://github.com/mitmul/openmpi-cuda-bins/releases/download/v1.0/openmpi-4.0.3-cuda100.tar.gz)
- [openmpi-4.0.3-cuda101.tar.gz](https://github.com/mitmul/openmpi-cuda-bins/releases/download/v1.0/openmpi-4.0.3-cuda101.tar.gz)
- [openmpi-4.0.3-cuda102.tar.gz](https://github.com/mitmul/openmpi-cuda-bins/releases/download/v1.0/openmpi-4.0.3-cuda102.tar.gz)

Copy one of the generated files into your environment where you want to use OpenMPI w/ CUDA and Infiniband, and install it like this:

```bash
tar zxf openmpi-4.0.3-cuda102.tar.gz
cd openmpi-4.0.3
sudo make install
```

The archive contains all the sources too, so please do not forget to remove them if you want to save the disk space.
