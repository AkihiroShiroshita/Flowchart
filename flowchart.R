install.packages("DiagrammeR")
library(DiagrammeR)
library(tidyverse)
install.packages("DiagrammeRsvg")
install.packages("rsvg")
library(DiagrammeRsvg)
library(rsvg)
flowchart <- read_lines("C:/Users/akihi/Documents/gv/pneumocodp_flowchart.gv")
super <- grViz(diagram = flowchart)
super %>% DiagrammeRsvg::export_svg(.) %>% 
  charToRaw(.) %>% 
  rsvg::rsvg_svg("flowchart.svg")
super
super %>% DiagrammeRsvg::export_svg(.) %>% 
  charToRaw(.) %>% 
  rsvg::rsvg_png("testflowchart.png", width = 1000, height = 1000)

export_graph(super, file_name = "super.png")

png("testflow.png", width=400, height=400)
super
dev.off()
