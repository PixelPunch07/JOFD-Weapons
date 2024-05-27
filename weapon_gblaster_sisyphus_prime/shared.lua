
if SERVER then
AddCSLuaFile( "shared.lua" )
	SWEP.Weight			= 7
	SWEP.AutoSwitchTo		= true
	SWEP.AutoSwitchFrom		= true
end

if CLIENT then
language.Add("weapon_scary_garry_gaster", "Scary Garry Gaster")
killicon.Add("weapon_scary_garry_gaster", "vgui/entities/weapon_scary_garry_gaster", color_white )
SWEP.WepSelectIcon        = surface.GetTextureID("vgui/entities/weapon_scary_garry_gaster") 
end

SWEP.Category            = "Council of Death"
SWEP.PrintName            = "Sisyphus Prime"
SWEP.Slot            = 3
SWEP.SlotPos            = 4
SWEP.DrawAmmo            = true
SWEP.DrawCrosshair        = true
SWEP.ViewModelFOV        = 100
SWEP.ViewModelFlip        = false
SWEP.ViewModel = "models/weapons/c_physcannon_def.mdl"
SWEP.WorldModel = "models/weapons/w_physics.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true

SWEP.Purpose			= "Vaporize players with a ton of damage"
SWEP.Instructions		= "M1 to shoot laser."
SWEP.BounceWeaponIcon	= false 

SWEP.UseHands = true

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.AdminOnly          = true
SWEP.HoldType	  		= "physgun"

SWEP.Primary.NumberofShots 	= 25
SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= true
SWEP.Primary.Delay		= 0.06
SWEP.Primary.Ammo 		= "ar2"
SWEP.Primary.Force = 250
SWEP.Primary.Damage = 18700
SWEP.Primary.Spread = 0.6
SWEP.Primary.Recoil = 0.01

SWEP.Secondary.Ammo 		= "none"
SWEP.Secondary.ScopeZoom	= 10
SWEP.Secondary.Automatic	= false
SWEP.Secondary.ClipSize		= -1
SWEP.Secondary.DefaultClip	= -1
SWEP.Secondary.Automatic	= false

SWEP.ScopeScale 			= 0.90
SWEP.ReticleScale 			= 0.75
SWEP.IronSightsPos = Vector (-5.2263, -0.0007, 3.715)
SWEP.IronSightsAng = Vector (0, 0, 0)
SWEP.SightsPos = Vector (-5.2263, -0.0007, 3.715)
SWEP.SightsAng = Vector (0, 0, 0)
SWEP.RunSightsPos = Vector (-2.3095, -3.0514, 1.3965)
SWEP.RunSightsAng = Vector (-19.8471, -33.9181, 10)

local IRONSIGHT_TIME = 0.4

SWEP.VElements = {
	["Console+"] = { type = "Model", model = "models/props_lab/console02c.mdl", bone = "Base", rel = "", pos = Vector(-2.922, 1.46, -17.49), angle = Angle(0, 0, -90), size = Vector(0.18, 0.18, 0.18), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisybody_bloody", skin = 0, bodygroup = {} },
	["Laser"] = { type = "Model", model = "models/props_questionableethics/qe_primarylase5.mdl", bone = "Base", rel = "", pos = Vector(-0.917, 18.593, 0.615), angle = Angle(-90, 90, 0), size = Vector(0.2, 0.2, 0.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisybody_bloody", skin = 0, bodygroup = {} },
	["Gaster"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "Base", rel = "", pos = Vector(0, -2.991, 10.357), angle = Angle(90, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisybody_bloody", skin = 0, bodygroup = {} },
	["Console"] = { type = "Model", model = "models/props_lab/console02c.mdl", bone = "Base", rel = "", pos = Vector(-2.922, 1.46, -17.49), angle = Angle(0, 0, -90), size = Vector(0.18, 0.18, 0.18), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisyveins", skin = 0, bodygroup = {} },
	["Gaster+"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "Base", rel = "", pos = Vector(0, -2.991, 10.357), angle = Angle(90, 0, -90), size = Vector(0.5, 0.5, 0.5), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisyveins", skin = 0, bodygroup = {} },
	["Laser+"] = { type = "Model", model = "models/props_questionableethics/qe_primarylase5.mdl", bone = "Base", rel = "", pos = Vector(-0.917, 18.593, 0.615), angle = Angle(-90, 90, 0), size = Vector(0.2, 0.2, 0.2), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisyveins", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["Console+"] = { type = "Model", model = "models/props_lab/console02c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.872, -0.667, -7.35), angle = Angle(-161.691, 98.208, -4.665), size = Vector(0.123, 0.123, 0.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisybody_bloody", skin = 0, bodygroup = {} },
	["Laser"] = { type = "Model", model = "models/props_questionableethics/qe_primarylase5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(16.913, -0.159, 1.699), angle = Angle(175.675, 11.01, -21.651), size = Vector(0.112, 0.112, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisybody_bloody", skin = 0, bodygroup = {} },
	["Gaster"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(24.965, -5.685, -9.4), angle = Angle(-30, 21.666, -157.198), size = Vector(0.384, 0.384, 0.384), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisybody_bloody", skin = 0, bodygroup = {} },
	["Gaster+"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(24.965, -5.685, -9.4), angle = Angle(-30, 21.666, -157.198), size = Vector(0.384, 0.384, 0.384), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisyveins", skin = 0, bodygroup = {} },
	["Laser+"] = { type = "Model", model = "models/props_questionableethics/qe_primarylase5.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(16.913, -0.159, 1.699), angle = Angle(175.675, 11.01, -21.651), size = Vector(0.112, 0.112, 0.112), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisyveins", skin = 0, bodygroup = {} },
	["Console"] = { type = "Model", model = "models/props_lab/console02c.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(5.872, -0.667, -7.35), angle = Angle(-161.691, 98.208, -4.665), size = Vector(0.123, 0.123, 0.123), color = Color(255, 255, 255, 255), surpresslightning = false, material = "models/ultrakill/characters/bosses/sp/sisyveins", skin = 0, bodygroup = {} }
}



function SWEP:Initialize()

	self:SetHoldType(self.HoldType)
	self:SetWeaponHoldType(self.HoldType)
	
	self.CandoSpecial = false
	
	if CLIENT then
		local iScreenWidth = surface.ScreenWidth()
		local iScreenHeight = surface.ScreenHeight()

		self.ScopeTable = {}
		self.ScopeTable.l = iScreenHeight*self.ScopeScale
		self.ScopeTable.x1 = 0.5*(iScreenWidth + self.ScopeTable.l)
		self.ScopeTable.y1 = 0.5*(iScreenHeight - self.ScopeTable.l)
		self.ScopeTable.x2 = self.ScopeTable.x1
		self.ScopeTable.y2 = 0.5*(iScreenHeight + self.ScopeTable.l)
		self.ScopeTable.x3 = 0.5*(iScreenWidth - self.ScopeTable.l)
		self.ScopeTable.y3 = self.ScopeTable.y2
		self.ScopeTable.x4 = self.ScopeTable.x3
		self.ScopeTable.y4 = self.ScopeTable.y1
		self.ScopeTable.l = (iScreenHeight + 1)*self.ScopeScale

		self.QuadTable = {}
		self.QuadTable.x1 = 0
		self.QuadTable.y1 = 0
		self.QuadTable.w1 = iScreenWidth
		self.QuadTable.h1 = 0.5*iScreenHeight - self.ScopeTable.l
		self.QuadTable.x2 = 0
		self.QuadTable.y2 = 0.5*iScreenHeight + self.ScopeTable.l
		self.QuadTable.w2 = self.QuadTable.w1
		self.QuadTable.h2 = self.QuadTable.h1
		self.QuadTable.x3 = 0
		self.QuadTable.y3 = 0
		self.QuadTable.w3 = 0.5*iScreenWidth - self.ScopeTable.l
		self.QuadTable.h3 = iScreenHeight
		self.QuadTable.x4 = 0.5*iScreenWidth + self.ScopeTable.l
		self.QuadTable.y4 = 0
		self.QuadTable.w4 = self.QuadTable.w3
		self.QuadTable.h4 = self.QuadTable.h3

		self.LensTable = {}
		self.LensTable.x = self.QuadTable.w3
		self.LensTable.y = self.QuadTable.h1
		self.LensTable.w = 2*self.ScopeTable.l
		self.LensTable.h = 2*self.ScopeTable.l

		self.ReticleTable = {}
		self.ReticleTable.wdivider = 3.125
		self.ReticleTable.hdivider = 1.7579/self.ReticleScale		-- Draws the texture at 512 when the resolution is 1600x900
		self.ReticleTable.x = (iScreenWidth/2)-((iScreenHeight/self.ReticleTable.hdivider)/2)
		self.ReticleTable.y = (iScreenHeight/2)-((iScreenHeight/self.ReticleTable.hdivider)/2)
		self.ReticleTable.w = iScreenHeight/self.ReticleTable.hdivider
		self.ReticleTable.h = iScreenHeight/self.ReticleTable.hdivider

		self.FilterTable = {}
		self.FilterTable.wdivider = 3.125
		self.FilterTable.hdivider = 1.7579/1.35	
		self.FilterTable.x = (iScreenWidth/2)-((iScreenHeight/self.FilterTable.hdivider)/2)
		self.FilterTable.y = (iScreenHeight/2)-((iScreenHeight/self.FilterTable.hdivider)/2)
		self.FilterTable.w = iScreenHeight/self.FilterTable.hdivider
		self.FilterTable.h = iScreenHeight/self.FilterTable.hdivider
	end

	if CLIENT then
	
		-- Create a new table for every weapon instance
		self.VElements = table.FullCopy( self.VElements )
		self.WElements = table.FullCopy( self.WElements )
		self.ViewModelBoneMods = table.FullCopy( self.ViewModelBoneMods )
        self:SetWeaponHoldType( self.HoldType )
		
		self:CreateModels(self.VElements) -- create viewmodels
		self:CreateModels(self.WElements) -- create worldmodels
		
		-- init view model bone build function
		if IsValid(self.Owner) then
			local vm = self.Owner:GetViewModel()
			if IsValid(vm) then
				self:ResetBonePositions(vm)
				
				-- Init viewmodel visibility
				if (self.ShowViewModel == nil or self.ShowViewModel) then
					vm:SetColor(Color(255,255,255,255))
				else
					-- we set the alpha to 1 instead of 0 because else ViewModelDrawn stops being called
					vm:SetColor(Color(255,255,255,1))
					-- ^ stopped working in GMod 13 because you have to do Entity:SetRenderMode(1) for translucency to kick in
					-- however for some reason the view model resets to render mode 0 every frame so we just apply a debug material to prevent it from drawing
					vm:SetMaterial("Debug/hsv")			
				end
			end
		end
		
	end

end

----------------------------------------------------
if CLIENT then

	SWEP.vRenderOrder = nil
	function SWEP:ViewModelDrawn()
		
		local vm = self.Owner:GetViewModel()
		if !IsValid(vm) then return end
		
		if (!self.VElements) then return end
		
		self:UpdateBonePositions(vm)

		if (!self.vRenderOrder) then
			
			-- we build a render order because sprites need to be drawn after models
			self.vRenderOrder = {}

			for k, v in pairs( self.VElements ) do
				if (v.type == "Model") then
					table.insert(self.vRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.vRenderOrder, k)
				end
			end
			
		end

		for k, name in ipairs( self.vRenderOrder ) do
		
			local v = self.VElements[name]
			if (!v) then self.vRenderOrder = nil break end
			if (v.hide) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (!v.bone) then continue end
			
			local pos, ang = self:GetBoneOrientation( self.VElements, v, vm )
			
			if (!pos) then continue end
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				--model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	SWEP.wRenderOrder = nil
	function SWEP:DrawWorldModel()
		
		if (self.ShowWorldModel == nil or self.ShowWorldModel) then
			self:DrawModel()
		end
		
		if (!self.WElements) then return end
		
		if (!self.wRenderOrder) then

			self.wRenderOrder = {}

			for k, v in pairs( self.WElements ) do
				if (v.type == "Model") then
					table.insert(self.wRenderOrder, 1, k)
				elseif (v.type == "Sprite" or v.type == "Quad") then
					table.insert(self.wRenderOrder, k)
				end
			end

		end
		
		if (IsValid(self.Owner)) then
			bone_ent = self.Owner
		else
			-- when the weapon is dropped
			bone_ent = self
		end
		
		for k, name in pairs( self.wRenderOrder ) do
		
			local v = self.WElements[name]
			if (!v) then self.wRenderOrder = nil break end
			if (v.hide) then continue end
			
			local pos, ang
			
			if (v.bone) then
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent )
			else
				pos, ang = self:GetBoneOrientation( self.WElements, v, bone_ent, "ValveBiped.Bip01_R_Hand" )
			end
			
			if (!pos) then continue end
			
			local model = v.modelEnt
			local sprite = v.spriteMaterial
			
			if (v.type == "Model" and IsValid(model)) then

				model:SetPos(pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z )
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)

				model:SetAngles(ang)
				--model:SetModelScale(v.size)
				local matrix = Matrix()
				matrix:Scale(v.size)
				model:EnableMatrix( "RenderMultiply", matrix )
				
				if (v.material == "") then
					model:SetMaterial("")
				elseif (model:GetMaterial() != v.material) then
					model:SetMaterial( v.material )
				end
				
				if (v.skin and v.skin != model:GetSkin()) then
					model:SetSkin(v.skin)
				end
				
				if (v.bodygroup) then
					for k, v in pairs( v.bodygroup ) do
						if (model:GetBodygroup(k) != v) then
							model:SetBodygroup(k, v)
						end
					end
				end
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(true)
				end
				
				render.SetColorModulation(v.color.r/255, v.color.g/255, v.color.b/255)
				render.SetBlend(v.color.a/255)
				model:DrawModel()
				render.SetBlend(1)
				render.SetColorModulation(1, 1, 1)
				
				if (v.surpresslightning) then
					render.SuppressEngineLighting(false)
				end
				
			elseif (v.type == "Sprite" and sprite) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				render.SetMaterial(sprite)
				render.DrawSprite(drawpos, v.size.x, v.size.y, v.color)
				
			elseif (v.type == "Quad" and v.draw_func) then
				
				local drawpos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
				ang:RotateAroundAxis(ang:Up(), v.angle.y)
				ang:RotateAroundAxis(ang:Right(), v.angle.p)
				ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
				cam.Start3D2D(drawpos, ang, v.size)
					v.draw_func( self )
				cam.End3D2D()

			end
			
		end
		
	end

	function SWEP:GetBoneOrientation( basetab, tab, ent, bone_override )
		
		local bone, pos, ang
		if (tab.rel and tab.rel != "") then
			
			local v = basetab[tab.rel]
			
			if (!v) then return end
			

			pos, ang = self:GetBoneOrientation( basetab, v, ent )
			
			if (!pos) then return end
			
			pos = pos + ang:Forward() * v.pos.x + ang:Right() * v.pos.y + ang:Up() * v.pos.z
			ang:RotateAroundAxis(ang:Up(), v.angle.y)
			ang:RotateAroundAxis(ang:Right(), v.angle.p)
			ang:RotateAroundAxis(ang:Forward(), v.angle.r)
				
		else
		
			bone = ent:LookupBone(bone_override or tab.bone)

			if (!bone) then return end
			
			pos, ang = Vector(0,0,0), Angle(0,0,0)
			local m = ent:GetBoneMatrix(bone)
			if (m) then
				pos, ang = m:GetTranslation(), m:GetAngles()
			end
			
			if (IsValid(self.Owner) and self.Owner:IsPlayer() and 
				ent == self.Owner:GetViewModel() and self.ViewModelFlip) then
				ang.r = -ang.r -- Fixes mirrored models
			end
		
		end
		
		return pos, ang
	end

	function SWEP:CreateModels( tab )

		if (!tab) then return end

		for k, v in pairs( tab ) do
			if (v.type == "Model" and v.model and v.model != "" and (!IsValid(v.modelEnt) or v.createdModel != v.model) and 
					string.find(v.model, ".mdl") and file.Exists (v.model, "GAME") ) then
				
				v.modelEnt = ClientsideModel(v.model, RENDER_GROUP_VIEW_MODEL_OPAQUE)
				if (IsValid(v.modelEnt)) then
					v.modelEnt:SetPos(self:GetPos())
					v.modelEnt:SetAngles(self:GetAngles())
					v.modelEnt:SetParent(self)
					v.modelEnt:SetNoDraw(true)
					v.createdModel = v.model
				else
					v.modelEnt = nil
				end
				
			elseif (v.type == "Sprite" and v.sprite and v.sprite != "" and (!v.spriteMaterial or v.createdSprite != v.sprite) 
				and file.Exists ("materials/"..v.sprite..".vmt", "GAME")) then
				
				local name = v.sprite.."-"
				local params = { ["$basetexture"] = v.sprite }
				-- make sure we create a unique name based on the selected options
				local tocheck = { "nocull", "additive", "vertexalpha", "vertexcolor", "ignorez" }
				for i, j in pairs( tocheck ) do
					if (v[j]) then
						params["$"..j] = 1
						name = name.."1"
					else
						name = name.."0"
					end
				end

				v.createdSprite = v.sprite
				v.spriteMaterial = CreateMaterial(name,"UnlitGeneric",params)
				
			end
		end
		
	end
	
	local allbones
	local hasGarryFixedBoneScalingYet = false

	function SWEP:UpdateBonePositions(vm)
		
		if self.ViewModelBoneMods then
			
			if (!vm:GetBoneCount()) then return end
			
			-- !! WORKAROUND !! --
			-- We need to check all model names :/
			local loopthrough = self.ViewModelBoneMods
			if (!hasGarryFixedBoneScalingYet) then
				allbones = {}
				for i=0, vm:GetBoneCount() do
					local bonename = vm:GetBoneName(i)
					if (self.ViewModelBoneMods[bonename]) then 
						allbones[bonename] = self.ViewModelBoneMods[bonename]
					else
						allbones[bonename] = { 
							scale = Vector(1,1,1),
							pos = Vector(0,0,0),
							angle = Angle(0,0,0)
						}
					end
				end
				
				loopthrough = allbones
			end
			-- !! ----------- !! --
			
			for k, v in pairs( loopthrough ) do
				local bone = vm:LookupBone(k)
				if (!bone) then continue end
				
				-- !! WORKAROUND !! --
				local s = Vector(v.scale.x,v.scale.y,v.scale.z)
				local p = Vector(v.pos.x,v.pos.y,v.pos.z)
				local ms = Vector(1,1,1)
				if (!hasGarryFixedBoneScalingYet) then
					local cur = vm:GetBoneParent(bone)
					while(cur >= 0) do
						local pscale = loopthrough[vm:GetBoneName(cur)].scale
						ms = ms * pscale
						cur = vm:GetBoneParent(cur)
					end
				end
				
				s = s * ms
				-- !! ----------- !! --
				
				if vm:GetManipulateBoneScale(bone) != s then
					vm:ManipulateBoneScale( bone, s )
				end
				if vm:GetManipulateBoneAngles(bone) != v.angle then
					vm:ManipulateBoneAngles( bone, v.angle )
				end
				if vm:GetManipulateBonePosition(bone) != p then
					vm:ManipulateBonePosition( bone, p )
				end
			end
		else
			self:ResetBonePositions(vm)
		end
		   
	end
	 
	function SWEP:ResetBonePositions(vm)
		
		if (!vm:GetBoneCount()) then return end
		for i=0, vm:GetBoneCount() do
			vm:ManipulateBoneScale( i, Vector(1, 1, 1) )
			vm:ManipulateBoneAngles( i, Angle(0, 0, 0) )
			vm:ManipulateBonePosition( i, Vector(0, 0, 0) )
		end
		
	end


	function table.FullCopy( tab )

		if (!tab) then return nil end
		
		local res = {}
		for k, v in pairs( tab ) do
			if (type(v) == "table") then
				res[k] = table.FullCopy(v)
			elseif (type(v) == "Vector") then
				res[k] = Vector(v.x, v.y, v.z)
			elseif (type(v) == "Angle") then
				res[k] = Angle(v.p, v.y, v.r)
			else
				res[k] = v
			end
		end
		
		return res
		
	end
	
end
----------------------------------------------------

function SWEP:PostReloadScopeCheck()
	if self.Weapon != nil then 
	if self.Owner:KeyDown(IN_ATTACK2) and self.Weapon:GetClass() == self.Gun then 
		if CLIENT then return end
		self.Owner:SetFOV( 75/self.Secondary.ScopeZoom, 0.15 )                      		
		self.IronSightsPos = self.SightsPos					-- Bring it up
		self.IronSightsAng = self.SightsAng					-- Bring it up
		self.DrawCrosshair = false
		self:SetIronsights(true, self.Owner)
		self.Owner:DrawViewModel(false)
 	elseif self.Owner:KeyDown(IN_SPEED) and self.Weapon:GetClass() == self.Gun then
		if self.Weapon:GetNextPrimaryFire() <= (CurTime()+0.3) then
			self.Weapon:SetNextPrimaryFire(CurTime()+0.3)				-- Make it so you can't shoot for another quarter second
		end
		self.IronSightsPos = self.RunSightsPos					-- Hold it down
		self.IronSightsAng = self.RunSightsAng					-- Hold it down
		self:SetIronsights(true, self.Owner)					-- Set the ironsight true
		self.Owner:SetFOV( 0, 0.2 )
	else return end
	end
end


function SWEP:Deploy()
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW);
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration())
	self:SetNextSecondaryFire( CurTime() + self:SequenceDuration())
	self:NextThink( CurTime() + self:SequenceDuration() )
	self.Owner:EmitSound(Sound("weapons/gblaster/gblaster_ready.mp3"))
	self:SetIronsights(false, self.Owner)  
	self.Owner:SetFOV( 0, 0.5 )
	
	self.BeatSound = CreateSound( self.Owner, Sound( "weapons/gblaster/sisyphus_holding.mp3" ) )
	if ( self.BeatSound ) then self.BeatSound:Play() end
   return true
end

function SWEP:Reload(tr)
	--[[if self:DefaultReload( ACT_VM_RELOAD ) then
		self.Owner:EmitSound(Sound("weapons/gauz_reload/bmreload.wav"))
		self.Owner:EmitSound(Sound("vehicles/tank_readyfire1.wav"))
	end]]
end


function SWEP:Think()
	if ( self.Owner:IsPlayer() && ( self.Owner:KeyReleased( IN_ATTACK ) || !self.Owner:KeyDown( IN_ATTACK ) ) ) then
		if ( self.LoopSound ) then self.LoopSound:ChangeVolume( 0, 0.1 ) end
		if ( self.BeatSound ) then self.BeatSound:ChangeVolume( 1, 0.1 ) end
	end
	if self.Owner:KeyReleased(IN_ATTACK) then
		self.CandoSpecial = false
	end
end	


function SWEP:PrimaryAttack()
	if ( !self:CanPrimaryAttack() ) then return end
	
	if ( self.Owner:IsNPC() ) then
		self:EmitSound( "", 100, math.random( 90, 110 ) )
	else
		if ( self.LoopSound ) then
			self.LoopSound:ChangeVolume( 1, 0.1 )
		else
			self.LoopSound = CreateSound( self.Owner, Sound("weapons/gblaster/sisyphus_firing.mp3") )
			if ( self.LoopSound ) then self.LoopSound:Play() end
		end
		if ( self.BeatSound ) then self.BeatSound:ChangeVolume( 0, 0.1 ) end
	end
 
	local bullet = {} 
              
		bullet.Num = self.Primary.NumberofShots
		bullet.Src = self.Owner:GetShootPos()
		bullet.Dir = self.Owner:GetAimVector()
		bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
		bullet.Tracer = 1
		bullet.Force = self.Primary.Force
		bullet.Damage = self.Primary.Damage
		bullet.AmmoType = self.Primary.Ammo
		bullet.TracerName = "sisyphus_ray"
		bullet.Callback = function(attacker, trace, dmginfo)
						local g = math.random( 1, 3 )
						if ( g == 1 ) then
						dmginfo:SetDamageType(DMG_AIRBOAT)
						elseif ( g == 2 ) then
						dmginfo:SetDamageType(DMG_BLAST)
						elseif ( g == 3 ) then
						dmginfo:SetDamageType(DMG_DISSOLVE)
						end
						end
		local rnda = self.Primary.Recoil * -1 
		local rndb = self.Primary.Recoil * math.random(-1, 1) 
		self:ShootEffects()
		self.Owner:FireBullets( bullet ) 
		self.Owner:EmitSound(Sound(""))
		--self.Owner:EmitSound(Sound("ambient/machines/thumper_hit.wav"))
		self.Owner:EmitSound(Sound(""))
		self.Owner:ViewPunch( Angle( rnda,rndb,rnda ) ) 
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay ) 
end

function SWEP:SecondaryAttack()
--if ( !self:CanSecondaryAttack() ) then return end
end

function SWEP:KillSounds()
	if ( self.BeatSound ) then self.BeatSound:Stop() self.BeatSound = nil end
	if ( self.LoopSound ) then self.LoopSound:Stop() self.LoopSound = nil end
end

function SWEP:Holster()
	self:KillSounds()
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
			self.Owner:SetFOV( 0, 0.25 )
		end
	end
	return true
end

function SWEP:OnDrop()
	self:Holster()
	self:KillSounds()
end

function SWEP:OnRemove()
	self:Holster()
	self:KillSounds()
end

function SWEP:GetViewModelPosition(pos, ang)
 
		if (not self.IronSightsPos) then return pos, ang end
 
		local bIron = self.Weapon:GetNWBool("Ironsights")
 
		if (bIron != self.bLastIron) then
				self.bLastIron = bIron
				self.fIronTime = CurTime()
 
		end
 
		local fIronTime = self.fIronTime or 0
 
		if (not bIron and fIronTime < CurTime() - IRONSIGHT_TIME) then
				return pos, ang
		end
 
		local Mul = 1.0
 
		if (fIronTime > CurTime() - IRONSIGHT_TIME) then
				Mul = math.Clamp((CurTime() - fIronTime) / IRONSIGHT_TIME, 0, 1)
 
				if not bIron then Mul = 1 - Mul end
		end
 
		local Offset    = self.IronSightsPos
 
		if (self.IronSightsAng) then
				ang = ang * 1
				ang:RotateAroundAxis(ang:Right(),               self.IronSightsAng.x * Mul)
				ang:RotateAroundAxis(ang:Up(),          self.IronSightsAng.y * Mul)
				ang:RotateAroundAxis(ang:Forward(),     self.IronSightsAng.z * Mul)
		end
 
		local Right     = ang:Right()
		local Up                = ang:Up()
		local Forward   = ang:Forward()
 
		pos = pos + Offset.x * Right * Mul
		pos = pos + Offset.y * Forward * Mul
		pos = pos + Offset.z * Up * Mul
 
		return pos, ang
end

function SWEP:SetIronsights(b)
		self.Weapon:SetNWBool("Ironsights", b)
end
 
function SWEP:GetIronsights()
		return self.Weapon:GetNWBool("Ironsights")
end

local Mat = Material( "models/elemental/blight" )
function SWEP:PrintWeaponInfo( x, y, alpha )
	if self.InfoMarkup == nil then
		local str, title_color, text_color = "", "<color=255,255,255,255>", "<color=200,200,200,255>"
		str = "<font=TargetID>"
		if ( self.Author != "" ) then str = str..title_color..language.GetPhrase( "Sisyphus Prime" )..": </color>"..text_color..self.Author.."</color>\n" end
		if ( self.Purpose != "" ) then str = str..title_color..language.GetPhrase( "YOU CAN'T ESCAPE" ) end
		if ( self.Instructions != "" ) then str = str..title_color.."			- Sisyphus Prime" end
		self.InfoMarkup = markup.Parse( str, 350 )
	end
	local xx, yy, ww, hh = x-6, y-6, 362, self.InfoMarkup:GetHeight() +24
	draw.RoundedBox( 0, xx, yy, ww, hh, Color( 23, 23, 23, 255, alpha ) )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.SetMaterial( Mat )
	surface.DrawTexturedRect( xx, yy, ww, hh )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.DrawOutlinedRect( xx, yy, ww, hh, 2 )
	surface.SetDrawColor( 255, 255, 255, 255 )
	surface.DrawOutlinedRect( xx, yy, ww, hh, 1 )
	self.InfoMarkup:Draw( x + 5, y + 5, nil, nil, alpha )
	self.InfoMarkup = nil
end 

   
function SWEP:DoImpactEffect( tr )
	if (tr.HitSky) then return end
	local effect = EffectData();
	effect:SetOrigin(tr.HitPos);
	effect:SetNormal( tr.HitNormal );
	util.Effect("", effect);
	
    return true
end

function SWEP:DrawRotatingCrosshair(x,y,time,length,gap)
    surface.DrawLine(
        x + (math.sin(math.rad(time)) * length),
        y + (math.cos(math.rad(time)) * length),
        x + (math.sin(math.rad(time)) * gap),
        y + (math.cos(math.rad(time)) * gap)
    )
end

function SWEP:DrawHUD()
    local x,y = ScrW(),ScrH()
    local w,h = x/2,y/2
    
    surface.SetDrawColor(Color(255,0,0))
    surface.DrawRect(w - 1, h - 3, 3, 7)
    surface.DrawRect(w - 3, h - 1, 7, 3)

    surface.SetDrawColor(Color(255,0,0))
    surface.DrawLine(w, h - 5, w, h + 5)
    surface.DrawLine(w - 5, h, w + 5, h)

    local time = CurTime() * -180        
    local scale = 20 * 0.02 -- self.Cone
    local gap = 1 * scale
    local length = gap + 40 * scale

    surface.SetDrawColor(255,0,0,255)

    self:DrawRotatingCrosshair(w,h,time,      length,gap)
    self:DrawRotatingCrosshair(w,h,time + 90, length,gap)
    self:DrawRotatingCrosshair(w,h,time + 180,length,gap)
    self:DrawRotatingCrosshair(w,h,time + 270,length,gap)
	
	if self.Owner:KeyDown(IN_ATTACK2) and (self:GetIronsights() == true) then
		
		surface.SetDrawColor(255, 255, 255, 255)
		surface.SetTexture(surface.GetTextureID("effects/combine_binocoverlay"))
		surface.DrawTexturedRect(self.LensTable.x, self.LensTable.y, self.LensTable.w, self.LensTable.h)
	end 
	
end