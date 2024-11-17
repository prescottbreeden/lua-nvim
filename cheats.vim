" ========================
"       Cheat Sheet
" ========================
"
" nexus authorize
build/scripts/authorize_nexus.sh

" npm clean cache: (cache is a mounted drive apparently)
rm -rf /dev/shm/helltool/apps/web/webpack
"
" Auxilia deployment:
deployment/manifests/dev/experiment/deploy experiment-2 --force
"
" highlight duplicates:
:g/^\(.*\)$\n\(\_.*\)\(^\1$\)/

" remove all but filename in a path:
:s/!.*/!!
