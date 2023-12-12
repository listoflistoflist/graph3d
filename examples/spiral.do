/*Spiral*/

local GraphPath "dump\spiral\"
clear
clear matrix
set obs 200
set more off

gen x=.
gen y=.
gen z=.
gen n=_n/10
replace x=sin(n)
replace y= cos(n)
replace z=n/10

forv dots=2(1)200 {
local mu = string(`dots'-1, "%03.0f")
preserve
drop if _n<`=_N-`dots''
 graph3d x z y, xang(45) xpiv(0) ypiv(0) zpiv(0) ycam(-2) xcam(0) colorscheme(bcgyr) 
graph export "`GraphPath'graph_`mu'.png", replace
restore
}

/* To generate an mpg video file and/or an animated gif, you need to specify your graphics path and the path of the third-party open source free program ffmpeg (https://www.ffmpeg.org/).
This program can be executed via Stata. */
cap winexec "dump\ffmpeg-20141002-git-0de1d62-win32-static\bin\ffmpeg.exe" -i `GraphPath'graph_%03d.png  -b:v 512k `GraphPath'graph.mpg
cap winexec "dump\ffmpeg-20141002-git-0de1d62-win32-static\bin\ffmpeg.exe" -r 10 -i `GraphPath'graph.mpg     -r 10 `GraphPath'graph.gif

