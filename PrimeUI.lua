PrimeUI = LibStub("AceAddon-3.0"):NewAddon("PrimeUI", "AceConsole-3.0", "AceHook-3.0")

function PrimeUI:OnInitialize()
end

function PrimeUI:OnEnable()
	PrimeUI.UnitFrames = self:GetModule("UnitFrames")
	PrimeUI.UnitFrames:Enable()
end

function PrimeUI:OnDisable()
end
