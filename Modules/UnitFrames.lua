local UnitFrames = PrimeUI:NewModule("UnitFrames")

function UnitFrames:OnInitialize()
	-- Snag our configuration from the parent object
end

function UnitFrames:OnEnable()
	PrimeUI:Print("PrimeUI UnitFrames Enabled!")

	if (IsAddOnLoaded("ShadowedUnitFrames")) then
		PrimeUI:SecureHook(ShadowUF, "OnInitialize", function()
			local currentprofile = ShadowUF.db:GetCurrentProfile()
			PrimeUI:Print("Shadowed Unit Frames Profile: "..currentprofile)
		end)
	else
		PrimeUI:Print("|cffff4040Shadowed Unit Frames not loaded!")
	end
end
