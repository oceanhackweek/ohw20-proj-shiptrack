# Ship track segmentor

- Automatically segment GPS tracks based on sampling behavior patterns
- Compare data-driven vs rule-based approaches
- Explore Geopandas and MovingPandas
- Your own data welcome!



## Create a new conda environment for this project

To create a dedicated conda environment so that any packages we need to add or change dependency on can be easily managed, do:
```bash
$ conda env create -f environment.yml  
```

Once the environment is created, do:
```bash
$ conda activate ohw20-proj-shiptrack
```
to activate into the environment.

Some notes:
- The base file came from the [ohe20-tutorials repo](https://github.com/oceanhackweek/ohw20-tutorials) so that this environment file should work both locally and on the OHW JupyterHub.
- The only new package added at the moment is [MovingPandas](https://anitagraser.github.io/movingpandas/).
- Note: because of the large number of packages included the environment will take some time to create.



## Additional Python packages via conda

We can install on the Hub additional packages from conda-forge. Each of us has to run the command on the terminal. For example, for [MovingPandas](https://anitagraser.github.io/movingpandas/): 
```bash
$ conda install -c conda-forge movingpandas
```
Be warned that the installation of that package is a bit slow, but it did install!
