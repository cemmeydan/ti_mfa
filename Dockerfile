FROM dynverse/dynwrap:r

RUN R -e 'devtools::install_github("kieranrcampbell/mfa")'

LABEL version 0.1.8

ADD . /code

ENTRYPOINT Rscript /code/run.R
