#######################################################################################
## DO NOT EDIT THIS FILE! This file was automatically generated from the dockerfile. ##
## Run babelwhale::convert_dockerfile_to_singularityrecipe() to update this file.    ##
#######################################################################################

Bootstrap: shub

From: dynverse/dynwrap:r

%labels
    version 0.1.6

%files
    . /code

%post
    chmod -R 755 '/code'
    R -e 'devtools::install_github("kieranrcampbell/mfa")'

%runscript
    exec Rscript /code/run.R

