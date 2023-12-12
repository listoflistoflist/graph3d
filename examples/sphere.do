 /*sphere*/
 
 local GraphPath "dump\sphere\"
 clear
 clear matrix
 set obs 1024
 set more off
 set matsize 11000
 
 scalar k = 5
 scalar n = 2^k-1
 
forv i=`=-scalar(n)'(2)`=scalar(n)' {
cap conf mat n_
	if !_rc {
mat n_ = n_ \ `i'
    }
    else {
mat n_ = `i'
    }
}
 
 mat theta = (_pi*n_/n)'
 mat phi = ((_pi/2)*n_'/n)'
 
 mat cosphi = phi
 mat sinphi = phi
 mat costheta = theta
 mat sintheta = theta
forval i = 1/`= rowsof(phi)' {
	mat cosphi[`i', 1] = cos(phi[`i', 1])
	mat sinphi[`i', 1] = sin(phi[`i', 1])
}
forval i = 1/`= colsof(theta)' {
	mat costheta[1, `i'] = cos(theta[1, `i'])
	mat sintheta[1, `i'] = sin(theta[1, `i'])
}
 
mat x = J(n+1,n+1,.) 
mat x = cosphi*costheta
mat y = J(n+1,n+1,.) 
mat y = cosphi*sintheta
mat z = sinphi
forv i=1(1)`=scalar(n)+1' {
	cap conf mat X
	if !_rc {
		mat X = X \ x[1..., `i']
	}
	else {
		mat X = x[1..., `i']
	}
	cap conf mat Y
	if !_rc {
		mat Y = Y \ y[1..., `i']
	}
	else {
		mat Y = y[1..., `i']
	}
	cap conf mat Z
	if !_rc {
		mat Z = Z \ sinphi
	}
	else {
		mat Z = sinphi
	}
}

svmat X
svmat Y
svmat Z

forv foo=1(1)360 {
	local mu = string(`foo', "%03.0f")
	graph3d X1 Y1 Z1, xang(`foo') yang(`foo') zang(`foo') xm(0) zm(0) ym(0) as(1) scale(`=1/exp(`foo')') xpiv(0) ypiv(0) zpiv(0) xcam(0) ycam(0) zcam(100) format("%03.0f") mark colorscheme(bcgyr) 
graph export "`GraphPath'graph_`mu'.png", replace
}

/* To generate an mpg video file and/or an animated gif, you need to specify your graphics path and the path of the third-party open source free program ffmpeg (https://www.ffmpeg.org/).
This program can be executed via Stata. */
cap winexec "dump\ffmpeg-20141002-git-0de1d62-win32-static\bin\ffmpeg.exe" -i `GraphPath'graph_%03d.png  -b:v 512k `GraphPath'graph.mpg
cap winexec "dump\ffmpeg-20141002-git-0de1d62-win32-static\bin\ffmpeg.exe" -r 10 -i `GraphPath'graph.mpg     -r 10 `GraphPath'graph.gif

