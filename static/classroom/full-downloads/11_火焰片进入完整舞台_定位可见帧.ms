(
-- Only selects an existing camera and visible time in the CURRENT scene.
sliderTime=35
local studyCamera=getNodeByName "PhysCamera_Study_FILLED_target"
if studyCamera != undefined then (viewport.setCamera studyCamera; redrawViews()) else messageBox "Open the matching study scene first."
)
