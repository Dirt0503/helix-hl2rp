
ITEM.name = "Military ID"
ITEM.model = Model("models/gibs/metal_gib4.mdl")
ITEM.description = "A conscript military identification tag with ID #%s, assigned to %s."

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000"), self:GetData("name", "nobody"))
end
