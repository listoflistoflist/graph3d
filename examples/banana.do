/* Rosenbroock function */

local GraphPath "dump\banana\"
clear
set more off
set obs 1024
gen x = int((_n - mod(_n-1,30) -1 ) /30 )
gen y = mod(_n-1,30)
gen z =((1-x/5)^2+100*((y-(x/5)^2)^2))/10000
 
forv yang=1(1)360 {
	local mu = string(`yang', "%03.0f")
	graph3d x z y, xang(45) yang(`yang') zang(0) zcam(2) colorscheme(cr)
	graph export "`GraphPath'graph_`mu'.png", replace
}

/* To generate an mpg video file and/or an animated gif, you need to specify your graphics path and the path of the third-party open source free program ffmpeg (https://www.ffmpeg.org/).
This program can be executed via Stata. */
cap winexec "dump\ffmpeg-20141002-git-0de1d62-win32-static\bin\ffmpeg.exe" -i `GraphPath'graph_%03d.png -b:v 512k `GraphPath'graph.mpg
cap winexec "dump\ffmpeg-20141002-git-0de1d62-win32-static\bin\ffmpeg.exe" -r 10 -i `GraphPath'graph.mpg  -r 10 `GraphPath'graph.gif

