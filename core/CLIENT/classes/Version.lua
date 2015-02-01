Version = {}

function Version:constructor ()
	self.ver_label = guiCreateLabel(screenW - 251, screenH - 30, 250, 18, ("%s %s"):format(VERSION_NAME, VERSION or "[unknown build]"), false)
	guiSetAlpha(self.ver_label, 0.53)
	guiLabelSetHorizontalAlign(self.ver_label, "right", false)
end

function Version:destructor ()
	if isElement(self.ver_label) then
		destroyElement(self.ver_label)
		self.ver_label = nil
	end
end
Version:constructor() -- Change!