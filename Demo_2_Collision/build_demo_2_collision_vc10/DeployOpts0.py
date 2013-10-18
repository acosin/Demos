# coding=utf-8

###### Options ######

options={}

options["<config>"]=ur'Default'
options["<os>"]=ur'android'
options["appdata"]=ur'C:/Users/1106786/AppData/Roaming/MarmaladeTools'
options["build"]=ur'ARM GCC Release'
options["cmdline"]=['C:/Marmalade/6.2/s3e/makefile_builder/mkb.py', 'c:/Users/1106786/Dropbox/Dropbox/PG life/Project Impact/Code/Demos/Demo_2_Collision/Demo_2_Collision.mkb', '--default-buildenv=vc10', '--msvc-project', '--deploy-only']
options["device"]=ur'"{"localdir}/Deploy.py" device "{"tempdir}/DeployOpts.py" {hasmkb}'
options["dir"]=ur'c:/Users/1106786/Dropbox/Dropbox/PG life/Project Impact/Code/Demos/Demo_2_Collision/build_demo_2_collision_vc10'
options["folder"]=ur'"{"localdir}/Deploy.py" folder "{"tempdir}/DeployOpts.py" {hasmkb}'
options["hasmkb"]=ur''
options["helpfile"]=ur'../docs/Deployment.chm'
options["helppage"]=ur'0'
options["mkb"]=ur'c:/Users/1106786/Dropbox/Dropbox/PG life/Project Impact/Code/Demos/Demo_2_Collision/Demo_2_Collision.mkb'
options["mkbdir"]=ur'c:/Users/1106786/Dropbox/Dropbox/PG life/Project Impact/Code/Demos/Demo_2_Collision'
options["mkbfile"]=ur'Demo_2_Collision.mkb'
options["outdir"]=ur'//vmwfil03/students$/1106786/desktop'
options["resdir"]=ur'c:/marmalade/6.2/tools/DeployTool/'
options["s3edir"]=ur'c:/marmalade/6.2/s3e/'
options["stage"]=ur'build'
options["target"]=ur'Demo_2_Collision'
options["task"]=ur'Default'
options["tasktype"]=ur'Package'

###### Tasks ######

tasks=[]

### Task Default:android ###

t={}
tasks.append(t)
t["tasktype"]="Package"
t["<config>"]="Default"
t["os"]="android"
t["endDir"]="//vmwfil03/students$/1106786/desktop/deployments/default/android/release/arm"
