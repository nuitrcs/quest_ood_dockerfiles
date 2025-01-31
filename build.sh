docker build -f base/ubi/8/Dockerfile.OOD.base.ubi8 -t nuitrcs/quest-ood-base:ubi810 .
docker build -f quest_ood_desktops/fluxbox/Dockerfile.OOD.fluxbox.ubi8 -t nuitrcs/quest-ood-fluxbox-desktop:ubi810 .
docker build -f quest_ood_desktops/gnome/Dockerfile.OOD.GNOME.ubi8 -t nuitrcs/quest-ood-gnome-desktop:ubi810 .
docker build -f quest_ood_desktops/xfce/Dockerfile.OOD.Xfce.ubi8 -t nuitrcs/quest-ood-xfce:ubi810 .
docker build -f quest_ood_jupyter/Dockerfile.OOD.Jupyter.ubi8 -t nuitrcs/quest-ood-jupyter:ubi810 .
docker build -f quest_ood_rstudio_server/Dockerfile.OOD.RStudioServer.ubi8 -t nuitrcs/quest-ood-rstudio-server:ubi810 .
docker build -f quest_ood_mathematica/Dockerfile.OOD.mathematica.ubi8 -t nuitrcs/quest-ood-mathematica:ubi810 .
docker build -f quest_ood_vscode_server/Dockerfile.OOD.vscode-server.ubi8 -t nuitrcs/quest-ood-vscode-server:ubi810 .
docker build -f quest_ood_ansys/Dockerfile.OOD.ansys.ubi8 -t nuitrcs/quest-ood-ansys-xfce-desktop:ubi810 .
