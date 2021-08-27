## The containers

The following tags are in the docker hub repository at [https://hub.docker.com/r/geertvangeest/single_cell_summerschool](https://hub.docker.com/r/geertvangeest/single_cell_summerschool):

- `general-jupyter`: jupyter notebook container for general exercises in python (using scanpy). It also includes the conda environment for the multi-omics exercises (sc2021-multiomics-environment). Simply change the kernel in the python notebook to use the environment. 
- `general-rstudio`: rstudio server container for the general exercsies in R. 
- `dgn-rstudio`: rstudio server container for deep learning exercises with access to a gpu
- `dgn-jupyter`: jupyter notebook container for deep learning exercsies with access to a gpu

### Running a jupyter notebook container locally

```sh
docker run --rm -v $PWD:/home/jovyan -p 8888:8888 geertvangeest/single_cell_summerschool:general-jupyter
```

Use the link that is provided in your console to go to the notebook in your browser.

Change `$PWD` to any other directory if you do not want to mount your current directory. 

### Running an Rstudio container locally

```sh
docker run --rm -v $PWD:/home/rstudio -p 8787:8787 -e PASSWORD=yourpasswordhere geertvangeest/single_cell_summerschool:general-rstudio
```

If it is running successfully rstudio server is available at `http://localhost:8787`. 

Your username is **rstudio** and the password is provided by the environment variable PASSWORD (i.e. *yourpasswordhere* in the example). 

Change `$PWD` to any other directory if you do not want to mount your current directory. 
