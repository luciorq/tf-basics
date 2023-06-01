create-env:
  conda create -c conda-forge -n tf-env terraform

# TODO: env -S is MacOS specific
tf-apply-bare-metal:
  #!/usr/bin/env -S bash -li
  conda run -n tf-env terraform -chdir=bare-metal init;
  conda run -n tf-env terraform -chdir=bare-metal apply;