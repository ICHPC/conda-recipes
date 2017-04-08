This repository contains recipes for building python modules used by Imperial's HPC users and that are available via the imperial-college-research-computing anaconda cloud [channel](https://anaconda.org/imperial-college-research-computing).

Users wishing to install one of these are advised to install directly via:

    conda install packagename

## Building Recipes

To build a recipe clone this repository via:

    git clone https://github.com/ICHPC/conda-recipes.git

Then to build the package execute

    conda build conda-recipes/packagename

## Constructing Recipes

Information on how to construct recipes for new packages can be found in the conda documentation:
https://conda.io/docs/building/recipe.html

The general idea is that recipes contain two files:

 -  `meta.yaml`
 -  `build.sh`

The former specifes details regarding the package including dependencies, the location of the source, any tests that are required and the latter includes the actual installation commands.

For simple python packages this is usually just:

    $PYTHON setup.py 

However for more complex libraries that involve compilation it can be more involved.

### Gotchas

During the building process conda installs to a temporary directory but intelligently changes the paths of any libraries such that they will be correct when a user actually installs the package. For this reason if `setup.py` specifies explicit paths it will usually break conda's build process and `setup.py` will need to be altered. 

If this is required the `meta.yaml` should specify the exact version of the source including commit/revision and `setup.py` should be patched during the `build.sh` script. See the recipe for pyipopt for an example. If build time libraries are required it is often necessary to make use of the environmental variables conda defines at build time discussed here: https://conda.io/docs/building/environment-vars.html
