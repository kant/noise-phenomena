FROM rocker:verse:3.4.2

RUN apt-get update && \
  apt-get -y install fonts-roboto && \
#  install2.r -e nimble RcppRoll aaptivetau hrbrthemes ggthemes && \
  installGithub.r cboettig/regimeshifts@0.0.1

COPY . /home/rstudio/noise-phenomena
WORKDIR /home/rstudio/noise-phenomena

RUN R -e "devtools::install(dep=TRUE)"
#RUN R -e "rmarkdown::render('appendixA/appendixA.Rmd')"

