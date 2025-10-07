# The base image
docker build -f base/ubi/8/Dockerfile.OOD.base.ubi8 -t nuitrcs/quest-ood-base:ubi810 .
docker build -f base/ubuntu/2204/Dockerfile.ubuntu2204 -t nuitrcs/quest-ood:ubuntu2204 base/ubuntu/2204/

# The desktops
docker build -f quest_ood_desktops/fluxbox/Dockerfile.OOD.fluxbox.ubi8 -t nuitrcs/quest-ood-fluxbox-desktop:ubi810 .
docker build -f quest_ood_desktops/gnome/Dockerfile.OOD.GNOME.ubi8 -t nuitrcs/quest-ood-gnome-desktop:ubi810 .
docker build -f quest_ood_desktops/xfce/Dockerfile.OOD.Xfce.ubi8 -t nuitrcs/quest-ood-xfce:ubi810 .

# The Desktops + GUIs
docker build -f quest_ood_paraview/Dockerfile.OOD.paraview.ubi8 -t nuitrcs/quest-ood-paraview:ubi810 .

docker build -f quest_ood_mathematica/Dockerfile.OOD.mathematica.ubi8 -t nuitrcs/quest-ood-mathematica:ubi810 .
docker build -f quest_ood_ansys/Dockerfile.OOD.ansys.ubi8 -t nuitrcs/quest-ood-ansys-xfce-desktop:ubi810 .
docker build -f quest_ood_ansys_lumerical/Dockerfile.OOD.ansys-lumerical.ubi8 -t nuitrcs/quest-ood-ansys-lumerical-xfce-desktop:ubi810 .
docker build -f quest_ood_ovito/Dockerfile.OOD.ovito.ubi8 -t nuitrcs/quest-ood-ovito-xfce-desktop:ubi810 .

# The servers
docker build -f quest_ood_jupyter/Dockerfile.OOD.Jupyter.ubi8 -t nuitrcs/quest-ood-jupyter:ubi810 .
docker build -f quest_ood_jupyter_spark/Dockerfile -t nuitrcs/quest-ood-jupyter-spark:ubi810 .
docker build -f quest_ood_rstudio_server/Dockerfile.OOD.RStudioServer.ubi8 -t nuitrcs/quest-ood-rstudio-server:ubi810 .
docker build -f quest_ood_vscode_server/Dockerfile.OOD.vscode-server.ubi8 -t nuitrcs/quest-ood-vscode-server:ubi810 .
docker build -f quest_ood_smrtlink/Dockerfile.OOD.SMRTLink -t nuitrcs/quest-ood-smrtlink:ubi810 .



# CryoSparc
## Please quest_ood_cryosparc/README.md
