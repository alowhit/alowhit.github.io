(
sliderTime=40
local c=getNodeByName "Preview_Camera_SELF_CHOSEN"
if c!=undefined do viewport.setCamera c
redrawViews()
)
