# graph3d
**graph3d: Stata module to draw colored, scalable, rotatable 3D plots**

# abstract
graph3d draws a three dimensional plot given a dataset of three variables. Moving, scaling, and 360 degree rotating over all axes is fully supported. Parallel projections can be generated, however, the perspective option allows the user to produce a perspective projection of the data. The user simply has to provide the three variables and graph3d will plot small black circles indicating each data point by default. graph3d can handle even four variables: three variables are plotted along the three axes, the fourth is represented by different colors/shapes of the markers. Three predefined colorschemes allow the user to emphasize how data points move along the specified axis. The marker colors and size can - among other options - be chosen according to the preferences of the user. Using graph3d it is straightforward to produce animations to visualize the big picture. Typical use of the graph3d command include, to take an example from economics, to depict a budget constraint of a couple household. Other examples are: to use graph3d to illustrate how the utility level of a utility function depends on two arguments or to plot the indifference plane of a utility function that depends on three arguments.

<a href=https://www.youtube.com/shorts/ZxpBJmGIUxU _target=blank><img src="https://i.ytimg.com/vi/ZxpBJmGIUxU/hq720_2.jpg?sqp=-oaymwEdCOADEOADSFXyq4qpAw8IARUAAIhCcAHAAQbQAQE=&rs=AOn4CLA-CbtWuzFWg1mEuwO5ebVOtL2nPg" width="250"></a>


# how to cite
- Rostam-Afschar, D. and Jessen, R., (2014), GRAPH3D: Stata module to draw colored, scalable, rotatable 3D plots, Statistical Software Components from Boston College Department of Economics. Downloaded from [RePEc](https://econpapers.repec.org/RePEc:boc:bocode:s457929).
- Jessen, R., Rostam-Afschar, D., and Steiner, V. (2017). Getting the Poor to Work: Three Welfare-Increasing Reforms for a Busy Germany. FinanzArchiv / Public Finance Analysis, 73(1), 1–41. http://www.jstor.org/stable/44861232

# how to install
type in Stata
 ssc install graph3d
 
# files
- graph3d.ado _stata programs._
- graph3d.sthlp _stata help file._
- Example files
  - sphere.do
  - spiral.do
  - banana.do
  - valentine.do
  - Budget graph3d as in Jessen et al. (2017)
      - budget surface.do
      - budget_graphs3d.dta
      - graph3d.ado

# further examples
Check out https://rostam-afschar.de/graph3d/graph3d.htm
