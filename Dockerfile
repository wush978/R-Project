FROM adrianliaw/jupyter-irkernel:agilearning

MAINTAINER Wush Wu <wush978@gmail.com>

RUN apt-get install -y --no-install-recommends libxml2-dev libssl-dev && \
  Rscript -e "install.packages(c('Rcpp', 'dplyr', 'data.table', 'ggplot2'), repos = 'http://cran.csie.ntu.edu.tw/')"
