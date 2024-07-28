FROM manimcommunity/manim:v0.18.1

USER root
RUN pip install notebook
RUN pip install schemdraw


ARG NB_USER=manimuser
USER ${NB_USER}

COPY --chown=manimuser:manimuser . /manim
