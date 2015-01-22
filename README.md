## Radiant: Business analytics using R and Shiny

Interactive business analytics using [R](http://www.r-project.org/) and [Shiny](http[://www.rstudio.com/shiny/). Developed by [Vincent Nijs]("http://rady.ucsd.edu/faculty/directory/nijs/") and [Terence August]("http://rady.ucsd.edu/faculty/directory/august/"). You can reach us at radiant@rady.ucsd.edu

### Source code

Three (related) apps are included in the inst directory. `Base`, offers data loading, saving, viewing, visualizing, merging, and transforming tools. The `quant` app sources the code from base and extends it. Finally, the `marketing` app sources the code from `base` and `quant` and extends it with additional tools.

### Documentation

Documentation and tutorials for Radiant are available at <http://mostly-harmless.github.io/radiant/>

### Install

- Required: [R](https://github.com/mostly-harmless/radiant_miniCRAN/tree/gh-pages/R-3.1.2), version 3.1.2
- Required: A modern browser (e.g., Chrome, Safari, or Firefox)
- Recommended: [Rstudio](http://www.rstudio.com/products/rstudio/download/)

You can install the `Radiant` package and all package dependencies from the [radiant_miniCRAN](https://github.com/mostly-harmless/radiant_miniCRAN) repo (created using [miniCRAN](https://github.com/andrie/miniCRAN)). Open R(studio) and copy-and-paste the commands below.

		options(repos = c(XRAN = "http://mostly-harmless.github.io/radiant_miniCRAN/"))
		install.packages("radiant")

Once all packages are installed use the commands below to start the app:

		library('radiant')
		radiant()

To start the quant app use:

		library('radiant')
		radiant('quant')

<!-- #### Creating a desktop launcher

You can also create a launcher on your Desktop to make it easy to start Radiant. Go to `launchers/quant` or `lauchers/marketing`

On Windows you create a launcher for Radiant on your Desktop by double-clicking the make\_win.bat file. Find the new file on your Desktop (i.e., radiant\_quant.bat or radiant_marketing.bat). Double click the .bat file and Radiant will start. The first time you start the app a number of required packages will be installed, and this may take a few minute

For Mac, double-click the make\_mac.command file to create a launcher for Radiant on your Desktop. Find the new file on your Desktop (i.e., radiant\_quant.command or radiant_marketing.command). Double click the .command file and Radiant will start. The first time you start the app a number of required packages will be installed, and this may take a few minute

When you start Radiant a browser window will open and you will see the web application running. You should see data on diamond prices. To close the application click on `Quit` in the Navigation bar and then click the `Quit` button. The Radiant process will stop and the browser window will close.
-->

#### Online

To tryout the app online go to <http://vnijs.rady.ucsd.edu:3838/marketing>.

### Help

There are numerous help files linked in the app. See for example the `Help` menu at <http://vnijs.rady.ucsd.edu:3838/marketing>. To help you get started using Radiant you can also take a look at this [playlist](https://www.youtube.com/watch?v=e02LFmNysoM&list=PLNhtaetb48EfAAlfQMJsuvLCSLvcn_0BC).

### Saving and loading state

To save the analysis you did in Radiant you can save the state of the app (see Data > Manage). You can open the state file at a latter time to continue where you left off. For an example, load the state_file `RadiantState.rda` in `example_data` in the radiant folder (see the View and Visualize tabs after loading the file).

A related feature in Radiant is that state is also maintained if you close (and reopen) the browser and/or hit refresh on the browser. Use Quit > Reset to return to a clean/new state.

Loading and saving state now also works with Rstudio. If you start Radiant from Rstudio and use Quit > Quit to stop the app, a list called `values` and a list called `state_list` will be put into Rstudio's global workspace. If you start radiant again it will use these lists (i.e., `values` and `state_list`) to restore state. This can be convenient if you want to make changes to a data file and load it back into Radiant.

You can also open a state file in Rstudio. When you start Radiant from Rstudio it will use the state files to recreate a previous app state.

**Technical note**: The way loading state works in the app is as follows: When an input is initialized in a Shiny app you set a default value in the call to, for example, numericInput. In Radiant, when a state file has been loaded and an input is initialized it looks to see if there is a value for an input of that name in a list called `state_list`. If there is, this value is used. The `state_list` is created when saving state using `reactiveValuesToList(input)`. An example of a call to numericInput is given below where the `state_init` function from `radiant.R` is used to check if a value from `state_list` can be used. `sm_args$sm_comp_value` is the default value specified in the `single_mean` function call.

		numericInput("sm_comp_value", "Comparison value:", state_init('sm_comp_value',sm_args$sm_comp_value))

### Todo

- Export all analysis functions
- Add roxygen documentation
- Testing using Rselenium
- Use dplyr, tidyr, and magrittr to explore, transform, and filter data
- etc. etc.

### License

The Radiant tool is licensed under the <a href="http://www.tldrlegal.com/l/AGPL3" target="\_blank">AGPLv3</a>. The help files are licensed under the creative commons attribution, non-commercial, share-alike license <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="\_blank">CC-NC-SA</a>.

As a summary, the AGPLv3 license requires, attribution, include copyright and license in copies of the software, state changes if you modify the code, and disclose all source code. Details are in the COPYING file.

If you are interested in using Radiant please email me at vnijs@ucsd.edu

&copy; Vincent Nijs (2015) <a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/4.0/" target="_blank"><img alt="Creative Commons License" style="border-width:0" src="https://github.com/mostly-harmless/radiant/blob/master/inst/base/www/imgs/80x15.png" /></a>