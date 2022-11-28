# openAPI

Consigna: realizar una investigación sobre OneAPI de Intel, la misma deberá ser un estudio teórico práctico. Deberá identificar la relación con las arquitecturas involucradas, aplicaciones actuales y futuras de OneAPI.

También realizar algún paths de formación propuesto de modo que pueda llevar a cabo una implementación de al menos una de sus características. 

Documente en un informe, incluyendo título, autor, desarrollo y referencias. Comparta su proyecto vía GitHub anexando esta información en dicho informe.

# example

https://github.com/oneapi-src/oneAPI-samples/tree/master/Libraries/oneMKL/matrix_mul_mkl


# Run

1. ssh devcloud
2. cd oneAPI-samples/Libraries/oneMKL/matrix_mul_mkl
3. git clone https://github.com/oneapi-src/oneAPI-samples.git
4. build.sh
```
#!/bin/bash
source /opt/intel/inteloneapi/setvars.sh
make clean
make all
```
5. run.sh
```
#!/bin/bash
source /opt/intel/inteloneapi/setvars.sh
make run
```

6. qsub -l nodes=1:gpu:ppn=2 -d . build.sh

7. watch -n 1 qstat -n -1

8. qsub -l nodes=1:gpu:ppn=2 -d . run.sh

9. cat run.sh.oXXXX

10. rm build.sh.*; rm run.sh.*; make clean

11. exit