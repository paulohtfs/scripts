#!/bin/sh

## Cofiguring the global var for commit
git config --global user.name "Paulo Tada"
git config --global user.email paulohtfs@gmail.com

## This file clones all the projects from git
# Creating the workspace folder
workspace="$HOME/workspace"
mkdir $workspace

# Clone ver_val project
vv="$workspace/vv"
mkdir $vv
git clone git@github.com:lucienemlf/VeEVal.git $vv

# Clone ihc project
ihc="$workspace/ihc"
mkdir $ihc
git clone git@github.com:lucienemlf/IHC.git $ihc

# Clone gcs project
gcs="$workspace/gcs"
mkdir $gcs
git clone git@github.com:work-docs/gerencia_de_configuracao.git $gcs

# Clone mes project Radar
implantacao="$workspace/mes/implantacao"
mkdir $implantacao
git clone https://github.com/radar-parlamentar/implantacao.git $implantacao

radar="$implantacao/radar"
mkdir $radar
git clone git@github.com:RadarParlamentar-UnBGama/radar.git $radar

