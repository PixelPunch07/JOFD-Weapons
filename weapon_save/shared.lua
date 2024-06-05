#why are u reuploading this?
-- fix your fucking shit

if SERVER then
AddCSLuaFile( "shared.lua" )
	SWEP.Weight			= 7
	SWEP.AutoSwitchTo		= true
	SWEP.AutoSwitchFrom		= true
end

if CLIENT then
language.Add("weapon_gblaster_asriel_rainbow", "Gaster Blaster Asriel Rainbow")
killicon.Add("weapon_gblaster_asriel_rainbow", "effects/killicons/weapon_gblaster", color_white )
SWEP.WepSelectIcon		= surface.GetTextureID("HUD/swepicons/weapon_gblaster/icon") 
end

SWEP.Category			= "Silent's Bullshit"
SWEP.PrintName			= "SAVE"
SWEP.Slot			= 3
SWEP.SlotPos			= 4
SWEP.DrawAmmo			= true
SWEP.DrawCrosshair		= true
SWEP.ViewModelFOV		= 75
SWEP.ViewModelFlip		= false
SWEP.ViewModel = "models/weapons/c_physcannon_def.mdl"
SWEP.WorldModel = "models/weapons/w_physics.mdl"
SWEP.ShowViewModel = true
SWEP.ShowWorldModel = true

SWEP.Purpose			= "Determination is one hell a drug."
SWEP.Instructions		= "M1 to shoot laser."
SWEP.BounceWeaponIcon	= false 

SWEP.UseHands = true
SWEP.ViewModelBoneMods = {}

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.AdminOnly          = true
SWEP.HoldType	  		= "physgun"

SWEP.Primary.NumberofShots 	= 25
SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= true
SWEP.Primary.Delay		= 0.1
SWEP.Primary.Ammo 		= "ar2"
SWEP.Primary.Force = -300
SWEP.Primary.Damage = 4500
SWEP.Primary.Spread = 0.8
SWEP.Primary.Recoil = 0

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

hook.Add("PlayerSpawn", "SAVE_loading", function(ply)-- tha valueess
    if IsValid(ply) then

	ply:SetNWInt("DETERMINATION", 30000) 
	ply:SetNWInt("maxDT", 30000) 
	ply:SetNWBool("injectionused", false) 
        
    end
end)




SWEP.VElements = {
	["minigun+"] = { type = "Model", model = "models/weapons/w_models/w_minigun.mdl", bone = "Base", rel = "", pos = Vector(1.792, -4.468, -7.38), angle = Angle(100.057, 91.472, -99.139), size = Vector(0.425, 0.425, 0.425), color = Color(170, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["minigun"] = { type = "Model", model = "models/weapons/w_m134_minigun.mdl", bone = "Base", rel = "", pos = Vector(-2.915, 2.637, 0), angle = Angle(81.041, 0, -73.637), size = Vector(1.003, 1.003, 1.003), color = Color(170, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
    ["coffee"] = { type = "Model", model = "models/props_junk/garbage_coffeemug001a.mdl", bone = "Base", rel = "", pos = Vector(-5.261, -9.379, -6.45), angle = Angle(-7.283, 0, -94.759), size = Vector(1.003, 1.003, 1.003), color = Color(170, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["laser"] = { type = "Model", model = "models/props_questionableethics/qe_primarylaser.mdl", bone = "Base", rel = "", pos = Vector(-0.917, 16.253, 6.522), angle = Angle(-90, 0, -90), size = Vector(0.2, 0.2, 0.2), color = Color(170, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gaster"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "Base", rel = "", pos = Vector(0, -6.54, 13.657), angle = Angle(90, -90, 0), size = Vector(0.409, 0.409, 0.409), color = Color(170, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["minigun+"] = { type = "Model", model = "models/weapons/w_models/w_minigun.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(4.952, -1.022, -5.989), angle = Angle(0, 0, -94.676), size = Vector(0.474, 0.474, 0.474), color = Color(170, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["minigun"] = { type = "Model", model = "models/weapons/w_m134_minigun.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.956, 1.113, -0.566), angle = Angle(-18.431, 0, 0), size = Vector(1.003, 1.003, 1.003), color = Color(170, 0, 0, 255), surpresslightning = false, material = "models/debug/debugwhite", skin = 0, bodygroup = {} },
	["coffee"] = { type = "Model", model = "models/props_junk/garbage_coffeemug001a.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(10, 0, -10), angle = Angle(0, 0, 0), size = Vector(1.003, 1.003, 1.003), color = Color(170, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["laser"] = { type = "Model", model = "models/props_questionableethics/qe_primarylaser.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(15.156, -0.719, 5.468), angle = Angle(172.382, 0, 0), size = Vector(0.159, 0.159, 0.159), color = Color(170, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["gaster"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(34.226, 0, -12.11), angle = Angle(-148.002, 180, 0), size = Vector(0.444, 0.444, 0.444), color = Color(170, 0, 0, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

function SWEP:Initialize()

	self:SetHoldType(self.HoldType)
	self:SetWeaponHoldType(self.HoldType)
	
	self.CandoSpecial = false
	if !file.Exists("autorun/qe_weaponry_version_notify.lua","LUA") then self:Remove() end -- uh how about no.
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

function SWEP:IronSight()

	end


function SWEP:Deploy()
	self.Weapon:SendWeaponAnim(ACT_VM_DRAW);
	self:SetNextPrimaryFire( CurTime() + self:SequenceDuration())
	self:SetNextSecondaryFire( CurTime() + self:SequenceDuration())
	self:NextThink( CurTime() + self:SequenceDuration() )
	self.Owner:EmitSound(Sound("weapons/gblaster/gblaster_ready.mp3"))
	self:SetIronsights(false, self.Owner)  
   	self.Owner:SetFOV( 0, 0.5 )
	
	self.BeatSound = CreateSound( self.Owner, Sound( "weapons/gblaster/save_hold.mp3" ) )
	if ( self.BeatSound ) then self.BeatSound:Play() end
	if !file.Exists("autorun/qe_weaponry_version_notify.lua","LUA") then self:Remove() end -- uh how about no.
	return true
end

function SWEP:Reload()
	if self:DefaultReload( ACT_VM_RELOAD ) then
		self.Owner:EmitSound(Sound("weapons/gauz_reload/bmreload.wav"))
		self.Owner:EmitSound(Sound("vehicles/tank_readyfire1.wav"))
	end
end


function SWEP:Think()
	if ( self.Owner:IsPlayer() && ( self.Owner:KeyReleased( IN_ATTACK ) || !self.Owner:KeyDown( IN_ATTACK ) ) ) then
		if ( self.LoopSound ) then self.LoopSound:ChangeVolume( 0, 0.1 ) end
		if ( self.LoopSound2 ) then self.LoopSound2:ChangeVolume( 0, 0.1 ) end
		if ( self.BeatSound ) then self.BeatSound:ChangeVolume( 1, 0.1 ) end
	end
	if self.Owner:KeyReleased(IN_ATTACK) then
		self.CandoSpecial = false
	end
	self:IronSight()
	
	
	if self.Owner:GetNWInt("DETERMINATION") >= 0.1 then
	self.Owner:SetNWInt("DETERMINATION", self.Owner:GetNWInt("DETERMINATION") -1	)
	elseif self.Owner:GetNWInt("DETERMINATION") <= 0 and self.Owner:Health() > 1 and SERVER then
	self.Owner:TakeDamage(self.Owner:GetMaxHealth() *0.01)
	end


    if self.Owner:GetNWInt("DETERMINATION") > 5000 then
		if( CLIENT ) then
		local vec = self:GetPos()
		local emitter = ParticleEmitter( vec, false )
		local idk = self.Owner:GetBonePosition( 6 )
		
		//effects/fire_cloud1
		for cycles = 1, 5 do
			local particle = emitter:Add( Material( "models/ihvtest/eyeball_l" ), vec )
			if( particle ) then
				particle:SetVelocity( Vector(1,1,1) )
				particle:SetColor( 255, 255, 255 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( 0.2 )
				particle:SetAngles( Angle( math.Rand( 0, 2 ), 0, 0 ) )
				particle:SetAngleVelocity( Angle( math.Rand( -1, 1 ), 0, 0 ) )
				particle:SetStartSize( math.random(0.7,1) )
			    particle:SetStartLength(math.random(2,4))
				particle:SetEndLength(math.random(0.3,2))
				particle:SetEndSize( 0 )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetGravity( Vector( 0, 0, 0 ) )
				particle:SetPos(idk + Vector(math.random(3,5),math.random(-6,-5),math.random(3.3,5)))
			end
		end
		
		emitter:Finish()
	end
	elseif self.Owner:GetNWInt("DETERMINATION") < 5000 then
	
			if( CLIENT ) then
		local vec = self:GetPos()
		local emitter = ParticleEmitter( vec, false )
		local idk = self.Owner:GetBonePosition( 6 )
		
		//effects/fire_cloud1
		for cycles = 1, 5 do
			local particle = emitter:Add( Material( "models/ihvtest/eyeball_l" ), vec )
			if( particle ) then
				particle:SetVelocity( Vector(1,1,1) )
				particle:SetColor( 255, 255, 255 ) 
				particle:SetLifeTime( 0 )
				particle:SetDieTime( 0.08 )
				particle:SetAngles( Angle( math.Rand( 0, 2 ), 0, 0 ) )
				particle:SetAngleVelocity( Angle( math.Rand( -1, 1 ), 0, 0 ) )
				particle:SetStartSize( math.random(0.4,0.7) )
			    particle:SetStartLength(math.random(1.3,3.2))
				particle:SetEndLength(math.random(0.3,2))
				particle:SetEndSize( 0 )
				particle:SetStartAlpha( 255 )
				particle:SetEndAlpha( 0 )
				particle:SetGravity( Vector( 0, 0, 0 ) )
				particle:SetPos(idk + Vector(math.random(-1,9),math.random(-5,2),math.random(-2,7)))
			end
		end
		
		emitter:Finish()
	end
	
end
	
	
end

function SWEP:PrimaryAttack()
	if ( !self:CanPrimaryAttack() ) then return end
	
	if self.Owner:KeyDown(IN_RELOAD) then
	     if self.Owner:GetNWInt("DETERMINATION") <= 30000 then
			self.CandoSpecial = true
		end
	end
	
	if self.Owner:KeyDown(IN_ATTACK) and self.CandoSpecial == true and self.Owner:GetNWInt("DETERMINATION") <= 30000 then
		if SERVER then
			local trace = {}
				trace.start = self.Owner:GetShootPos()
				trace.endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 20^14
				trace.filter = self.Owner
				trace.mask = MASK_SHOT
			local tr = util.TraceLine(trace)
			
			if timer.TimeLeft( "qe_gasterblaster2"..self:EntIndex() ) == nil then
				for i = 0, math.random(0,0) do
	
	            local entities = ents.FindInSphere(self.Owner:GetPos(), 500)

            for _, ent in ipairs(entities) do
                if ent:IsValid() and ( ent ~= self.Owner ) and ( ent:IsRagdoll() or ent:IsNPC() or ent:IsNextBot() or ent:IsPlayer() or ent:GetClass() == "prop_physics" or ent:IsVehicle() ) then

                    if IsValid( ent:GetPhysicsObject() ) then
                        if ( ent:GetClass() == "prop_physics" ) then
                            constraint.RemoveAll(ent)
                            ent:GetPhysicsObject():EnableMotion(true)
                        end
                    end
                    
                    local dir = (ent:GetPos() - self.Owner:GetPos()):GetNormalized()
                    local force = 50000
                    local phys = ent:GetPhysicsObject()

                    if IsValid(phys) then phys:SetVelocity(dir * force) end
            
                    if SERVER then
					for i=1,math.random(1,3) do 
									local rand = math.Rand( -math.pi, math.pi ) * 2
				local vec = Vector( math.sin( rand ) * math.random(-350, 350), math.sin( rand ) * math.random(-350, 350), 60 + math.cos( rand ) * math.random(150, -150) )
								
				vec:Rotate( Angle( 0, ent:GetAngles().y, 0 ) )
				local pos = ent:GetPos() + vec

                local o=self.Owner
                local n=self:GetNWInt("DETERMINATION")
                local g = ents.Create("ent_genoblaster")
                local p=ent:GetPos() + VectorRand()
                 p.z=1*2
                 local t=util.TraceLine({start=o:EyePos(),endpos=o:EyePos()+p,filter=o})
                 if t.Hit then p=t.HitPos+t.HitNormal*30 else p=o:EyePos()+p end
				g:SetAngles( ( ent:GetPos() - pos ):Angle() + Angle(-8,0,0) )
				g:SetPos( ent:GetPos() + vec)
                  g:SetOwner(o)
                  g.Dmg=50000
                  g:Spawn()
                  self.Owner:SetNWInt("DETERMINATION", self.Owner:GetNWInt("DETERMINATION") -2	)
                    end




                    end
                end
            end
	
	
	
	
	
	
	
				end
				 local bruh = self.Owner:GetNWBool("DETERMINATION") / 16000
			timer.Create( "qe_gasterblaster2"..self:EntIndex(), bruh, 1, function() end )	
			end
		end
		if self.Owner:IsPlayer() then
			if ( self.LoopSound2 ) then
				self.LoopSound2:ChangeVolume( 1, 0.1 )
			else
				self.LoopSound2 = CreateSound( self.Owner, Sound( "weapons/gblaster/save_fire.mp3" ) )
				if ( self.LoopSound2 ) then self.LoopSound2:Play() end
			end
			if ( self.BeatSound ) then self.BeatSound:ChangeVolume( 0, 0.1 ) end
		end
		return
	end
	
	if ( self.Owner:IsNPC() ) then
		self:EmitSound( "weapons/gblaster/gblaster_fire.mp3", 100, math.random( 90, 110 ) )
	else
		if ( self.LoopSound ) then
			self.LoopSound:ChangeVolume( 1, 0.1 )
		else
			self.LoopSound = CreateSound( self.Owner, Sound( "weapons/gblaster/save_fire.mp3" ) )
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
	bullet.TracerName = "geno_ray"
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
	self.Owner:ViewPunch( Angle( rnda,rndb,rnda ) ) 
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self:SetNextSecondaryFire( CurTime() + self.Primary.Delay ) 
	
	self.Owner:SetNWInt("DETERMINATION", self.Owner:GetNWInt("DETERMINATION") -1.5	)
	
if timer.TimeLeft( "shootblast"..self:EntIndex() ) == nil and self.Owner:GetNWBool("DETERMINATION") <= 13000 and SERVER then 

 local currentcoffee = self.Owner:GetNWBool("DETERMINATION")
 local bruh = self.Owner:GetNWBool("DETERMINATION") / 20000
  local angle = 30000 / self.Owner:GetNWInt("DETERMINATION") *0.5
 local o=self.Owner
 local n=self:GetNWInt("DETERMINATION")
local g = ents.Create("ent_genoblaster")
local p=VectorRand()*math.random(-90,90)*5
p.z=bruh*60
local t=util.TraceLine({start=o:EyePos(),endpos=o:EyePos()+p,filter=o})
if t.Hit then p=t.HitPos+t.HitNormal*30 else p=o:EyePos()+p end
g:SetPos(p)
local e = (o:GetEyeTrace().HitPos-p):Angle() + Angle(math.random(-angle,angle), math.random(-angle,angle), math.random(-angle,angle) )*0.5
g:SetAngles(e)
g:SetOwner(o)
g.Dmg=50000 *angle
	g:Spawn()
	self.Owner:SetNWInt("DETERMINATION", self.Owner:GetNWInt("DETERMINATION") -1	)
timer.Create( "shootblast"..self:EntIndex(), bruh, 1, function() end )
 end



end




function SWEP:SecondaryAttack()

if self.Owner:GetNWBool("injectionused") == false and self.Owner:GetNWBool("DETERMINATION") <= 2000 and not self.Owner:KeyDown(IN_RELOAD) then 
self.Owner:SetNWInt("maxDT", self.Owner:GetNWInt("maxDT") -15000 )
self.Owner:SetNWInt("DETERMINATION", 15000)
local DING = self.Owner:GetNWInt("DETERMINATION") / 3500 * 1.6
self.Owner:SetHealth(self.Owner:GetMaxHealth() *0.1 * DING + self.Owner:Health())
self.Owner:SetNWInt("injectionused", true)

 end

if self.Owner:KeyDown(IN_ATTACK2) and self.Owner:GetNWInt("DETERMINATION") >= 2 then
		if SERVER then
			local trace = {}
				trace.start = self.Owner:GetShootPos()
				trace.endpos = self.Owner:GetShootPos() + self.Owner:GetAimVector() * 20^14
				trace.filter = self.Owner
				trace.mask = MASK_SHOT
			local tr = util.TraceLine(trace)
			
			if timer.TimeLeft( "qe_gasterblaster2"..self:EntIndex() ) == nil then
				for i = 0, math.random(0,0) do
	
	            local entities = ents.FindInSphere(self.Owner:GetPos(), 500)

            for _, ent in ipairs(entities) do
                if ent:IsValid() and ( ent ~= self.Owner ) and ( ent:IsRagdoll() or ent:IsNPC() or ent:IsNextBot() or ent:IsPlayer() or ent:GetClass() == "prop_physics" or ent:IsVehicle() ) then

                    if IsValid( ent:GetPhysicsObject() ) then
                        if ( ent:GetClass() == "prop_physics" ) then
                            constraint.RemoveAll(ent)
                            ent:GetPhysicsObject():EnableMotion(true)
                        end
                    end
                    
                    local dir = (ent:GetPos() - self.Owner:GetPos()):GetNormalized()
                    local force = 50000
                    local phys = ent:GetPhysicsObject()

                    if IsValid(phys) then phys:SetVelocity(dir * force) end
            
                    if SERVER then
						local times = 20000 / self.Owner:GetNWInt("DETERMINATION") * 12
						print(times)
						 local bruh = self.Owner:GetNWBool("DETERMINATION") / 27000
				timer.Create( "attacklol"..self.Owner:EntIndex(), bruh, times, function()		local bone = ents.Create( "ent_undertale_hatred" )
		local bone2 = ents.Create( "ent_genobone" )
		local rand1 = math.random( -35, 35 )
		local rand2 = math.random( -35, 35 )
		local pos = ent:GetPos() + Vector( rand1, rand2, 400 )
		local pos2 = ent:GetPos() + Vector( rand1, rand2, 5 )
		bone:SetPos( pos )
		bone:SetAngles(bone:GetAngles() + Angle(math.random(11,-11),math.random(11,-11),math.random(11,-11)))
		bone:SetOwner( self.Owner )
		bone:Spawn() 		local phys = bone:GetPhysicsObject()
		phys:SetVelocity( bone:GetUp() * -3000 )
local chance = math.random(1,20)
if chance == 4 then
             for i = 1, 6 do
				local ent = ents.Create( "ent_genozone" )
				ent:SetAngles( Angle(math.random(3,-3),math.random(3,-3),math.random(3,-3)) + Angle( 0, 0, 0 ) )
				ent:SetVar( "pos", ent:GetPos() + Vector(math.random(352,-352),math.random(352,-325),math.random(325,-352)) )
				ent:SetVar( "normal", ent:GetPos() + Vector(math.random(352,-352),math.random(352,-352),math.random(352,-352))) 
				ent:SetPos( pos2 + Vector(math.random(97,-97),math.random(97,-97),5) )
				ent:SetOwner( self.Owner )
				//ent:EmitSound( "undertale/bone_start.wav", 75, 100, 1, CHAN_AUTO )
				ent:Spawn()
 end end end )	
		
                  self.Owner:SetNWInt("DETERMINATION", self.Owner:GetNWInt("DETERMINATION") -20	)
                    end




                    end
                end
	
	
	
	
	
	
	
				end
				 local bruh = self.Owner:GetNWBool("DETERMINATION") / 16000
			timer.Create( "qe_gasterblaster2"..self:EntIndex(), times, 1, function() end )	
			end
		end






end
end

function SWEP:KillSounds()
	if ( self.BeatSound ) then self.BeatSound:Stop() self.BeatSound = nil end
	if ( self.LoopSound ) then self.LoopSound:Stop() self.LoopSound = nil end
	if ( self.LoopSound2 ) then self.LoopSound2:Stop() self.LoopSound2 = nil end
end

function SWEP:Holster()
	self:KillSounds()
	if CLIENT and IsValid(self.Owner) then
		local vm = self.Owner:GetViewModel()
		if IsValid(vm) then
			self:ResetBonePositions(vm)
			self.Owner:SetFOV( 0, 0.25 )
		end
		self.Owner:EmitSound(Sound("weapons/gauz_draw2/holster.mp3"))
		self.Owner:SetNWInt("DETERMINATION", 0) 
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

function SWEP:AdjustMouseSensitivity()
	if self.Owner:KeyDown(IN_ATTACK2) then
    else 
    	return 1
    end
end

function SWEP:DoImpactEffect( tr )
		if (tr.HitSky) then return end
				local effect = EffectData();
				effect:SetOrigin(tr.HitPos);
				effect:SetNormal( tr.HitNormal );
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
    
    surface.SetDrawColor(Color(math.random(0,100), math.random(0,100), math.random(0,100),200))
    surface.DrawRect(w - 1, h - 3, 3, 7)
    surface.DrawRect(w - 3, h - 1, 7, 3)

    surface.SetDrawColor(Color(math.random(0,50), math.random(0,50), math.random(0,50),255))
    surface.DrawLine(w, h - 5, w, h + 5)
    surface.DrawLine(w - 5, h, w + 5, h)

    local time = CurTime() * -180        
    local scale = 20 * 0.02 -- self.Cone
    local gap = 1 * scale
    local length = gap + 40 * scale

    surface.SetDrawColor(math.random(0,255), math.random(0,255), math.random(0,255),255)

    self:DrawRotatingCrosshair(w,h,time,      length,gap)
    self:DrawRotatingCrosshair(w,h,time + 90, length,gap)
    self:DrawRotatingCrosshair(w,h,time + 180,length,gap)
    self:DrawRotatingCrosshair(w,h,time + 270,length,gap)
	

	end 

		

	
	
	
	
	local savetag = "weapon_save"
			
function Coffeemoment(ply, dmginfo)
    local attacker = dmginfo:GetAttacker()
    if attacker:IsPlayer() and ply:IsPlayer() and attacker != ply and attacker:GetActiveWeapon():GetClass() == savetag and attacker:GetNWInt("DETERMINATION") <= 30000 then
        local damage = dmginfo:GetDamage()
       attacker:SetNWInt("DETERMINATION", attacker:GetNWInt("DETERMINATION") + 10 )
	   local idk = attacker:GetNWInt("DETERMINATION") / 155 * 0.5
	           local chance = math.random(1, idk *1.3)
			   
	             if chance == 3 and attacker:GetNWInt("DETERMINATION") <= 15000 then
				local rand = math.Rand( -math.pi, math.pi ) * 2
				local vec = Vector( 85, math.sin( rand ) * 350, 60 + math.cos( rand ) * 50 )
								
				vec:Rotate( Angle( 0, ply:GetAngles().y, 0 ) )
				local pos = ply:GetPos() + vec

                local o=attacker
                local n=attacker:GetNWInt("DETERMINATION")
                local g = ents.Create("ent_genoblaster")
                local p=ply:GetPos() + VectorRand()
                 p.z=1*2
                 local t=util.TraceLine({start=o:EyePos(),endpos=o:EyePos()+p,filter=o})
                 if t.Hit then p=t.HitPos+t.HitNormal*30 else p=o:EyePos()+p end
				g:SetAngles( ( ply:GetPos() - pos ):Angle() + Angle(-8,0,0) )
				g:SetPos( ply:GetPos() + vec)
                  g:SetOwner(o)
                  g.Dmg=50000
                  g:Spawn()
				end

		    end
        end

	hook.Add("EntityTakeDamage", "Coffeemoment", Coffeemoment)
	
	
	
	
	function SWEP:DrawHUD()
  
    if not CLIENT then return end

    local ply = LocalPlayer()
	
	   -- coffe




    local ce = ply:GetNWInt("DETERMINATION")
    local maxCE = ply:GetNWInt("maxDT")


if ply:GetNWInt("DETERMINATION") > 5000 then
local Texture1 = Material("blasters/aftereye") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(255, 255, 255, 255))
surface.DrawTexturedRectRotated( ScrW()-400, ScrH()-500, 1300, 1300, 90 )
end

if ply:GetNWInt("DETERMINATION") > 5000 then
local Texture1 = Material("blasters/utstar") 
local alpha = ply:GetNWInt("DETERMINATION") / 300
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(255, 255, 255, 255))
surface.DrawTexturedRectRotated( ScrW()-1850, ScrH()-800, alpha, alpha, 90 )
end

if ply:GetNWInt("DETERMINATION") < 5000 then
local Texture1 = Material("blasters/genobadeye") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(255, 255, 255, 255))
surface.DrawTexturedRectRotated( ScrW()-1846, ScrH()-800, 122, 122, 0 )
end


		draw.RoundedBox(0, ScrW() * 0.01,ScrH() * 0.297,ScrW() * 0.055,ScrH() * 0.41,Color(255,255,255,255))
      	draw.RoundedBox(0, ScrW() * 0.013,ScrH() * 0.3,ScrW() * 0.05,ScrH() * 0.4,Color(0,0,0,255))

    local negate = ply:GetNWInt("DETERMINATION") / 30000
    local barWidth = 42
    local barHeight = 400
    local barX = 50
    local barY = ScrH() - 745
    local cePercent = ce / maxCE 
	


    local text = "DT: " .. ce .. " / " .. maxCE

    surface.SetFont("8bitoperator")
    local textWidth, textHeight = surface.GetTextSize(text)
    surface.SetDrawColor(0, 0, 0, 60)
    local color = 28000 / ply:GetNWInt("DETERMINATION") *40
    surface.SetDrawColor(255, color, color, 200)
    surface.DrawRect(barX, barY, barWidth, barHeight * cePercent)
	

    surface.SetTextColor(255,255,255)
    surface.SetTextPos(barX + -80 / 2, barY - textHeight + 456)
    surface.DrawText(text)
	
	  if ply:GetNWInt("DETERMINATION") >= 5000 and ply:HasWeapon("weapon_save") and ply:GetNWInt("DETERMINATION") >= 1 then

	local text = "DR: " .. negate
    surface.SetTextColor(255,255,255)
    surface.SetTextPos(barX + -80 / 2, barY - textHeight + 480)
    surface.DrawText(text)

	    elseif ply:GetNWInt("DETERMINATION") < 5000 and ply:HasWeapon("weapon_save") and ply:GetNWInt("DETERMINATION") >= 1 then

	local text = "DR: " .. 0.2
    surface.SetTextColor(255,255,255)
    surface.SetTextPos(barX + -80 / 2, barY - textHeight + 480)
    surface.DrawText(text)

	    elseif ply:GetNWInt("DETERMINATION") < 2 and ply:HasWeapon("weapon_save") then
		
	local text = "DR: " .. 0.1
    surface.SetTextColor(255,255,255)
    surface.SetTextPos(barX + -80 / 2, barY - textHeight + 480)
    surface.DrawText(text)
		
end
	
    if not ply:KeyDown(IN_WALK) or not ply:KeyDown(IN_USE) then
	draw.SimpleText("ALT + E", "8bitoperator", ScrW() * 0.005, ScrH() * 0.78, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	end
	
	if ply:KeyDown(IN_WALK) and ply:KeyDown(IN_USE) then
	draw.SimpleText("--Controls--", "8bitoperator", ScrW() * 0.005, ScrH() * 0.76, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("DT Inject: RMB (Below 2k DT)", "8bitoperator", ScrW() * 0.005, ScrH() * 0.78, Color( 255, 65, 65, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Auto-Barrage: R + LMB", "8bitoperator", ScrW() * 0.005, ScrH() * 0.824, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Bone Storm: R + RMB", "8bitoperator", ScrW() * 0.005, ScrH() * 0.803, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("--Additional Info--", "8bitoperator", ScrW() * 0.005, ScrH() * 0.85, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Passive: Damage reduction, increasing the lower DT you have", "8bitoperator", ScrW() * 0.005, ScrH() * 0.87, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("DT Drains overtime and while firing, you take damage with 0 of it", "8bitoperator", ScrW() * 0.005, ScrH() * 0.89, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("additionally you gain it by dealing damage", "8bitoperator", ScrW() * 0.005, ScrH() * 0.91, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("the lower the DT the more buffed you get (EX: passively shoot blasters)", "8bitoperator", ScrW() * 0.005, ScrH() * 0.93, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Injection debuffs your max HP, debuffs max DT but recovers HP and DT and is one time use.", "8bitoperator", ScrW() * 0.005, ScrH() * 0.96, Color( 255, 65, 65, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Use wisely but quickly as you recover more HP the higher it is.", "8bitoperator", ScrW() * 0.005, ScrH() * 0.98, Color( 255, 65, 65, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("DR = Damage Reduction, it means how much of damage you take you'll get", "8bitoperator", ScrW() * 0.005, ScrH() * 0.18, Color( 255, 255, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Lower means better as 0.2 means you'll take only 20% of damage taken", "8bitoperator", ScrW() * 0.005, ScrH() * 0.2, Color( 255, 255, 0, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	end	
		
	end
	
	

function savenegate(attacker, target, dmginfo)
    if target:IsPlayer() and target:HasWeapon("weapon_save") and target:GetNWInt("DETERMINATION") >= 5000 then
	     local negate = target:GetNWInt("DETERMINATION") / 30000
	    dmginfo:ScaleDamage(negate)
		target:SetNWInt("DETERMINATION", target:GetNWInt("DETERMINATION") -5	)
		elseif target:GetNWInt("DETERMINATION") < 5000 and target:HasWeapon("weapon_save") and target:GetNWInt("DETERMINATION") >= 1 then
		dmginfo:ScaleDamage(0.2)
		target:SetNWInt("DETERMINATION", target:GetNWInt("DETERMINATION") -2	)
	    elseif target:GetNWInt("DETERMINATION") < 2 and target:HasWeapon("weapon_save") then
		dmginfo:ScaleDamage(0.1)
		
    end
	
end
	
	
	
	local Mat = Material( "blasters/utstar" )
  Mat:SetFloat( "$pp_colour_brightness", 0 )
    function SWEP:PrintWeaponInfo( x, y, alpha )
        if self.InfoMarkup == nil then
            local str, title_color, text_color = "", "<color=255,0,0,122>", "<color=200,0,200,255>"
			local test, testcolor, nawman = "", "<color=255,35,35,35>", "<color=200,0,200,255>"
            str = "<font=TargetID>"
            if ( self.Author != "" ) then str = str..title_color..language.GetPhrase( "???" )..": </color>"..text_color..self.Author.."</color>\n" end
            if ( self.Purpose != "" ) then str = str..title_color..language.GetPhrase( "Determination is one hell a drug." ) end
            if ( self.Instructions != "" ) then str = str..testcolor.."" end
            self.InfoMarkup = markup.Parse( str, 280 )
        end
        local xx, yy, ww, hh = x-6, y-6, 362, self.InfoMarkup:GetHeight() +24
        draw.RoundedBox( 0, xx, yy, ww, hh, Color( 23, 23, 23, 255, alpha ) )
        surface.SetDrawColor( 35, 35, 35, 35 )
        surface.SetMaterial( Mat )
        surface.DrawTexturedRect( xx, yy, ww, hh )
        surface.SetDrawColor( 35, 35, 35, 35 )
        surface.DrawOutlinedRect( xx, yy, ww, hh, 2 )
        surface.SetDrawColor( 35, 35, 35, 35 )
        surface.DrawOutlinedRect( xx, yy, ww, hh, 1 )
        self.InfoMarkup:Draw( x + 5, y + 5, nil, nil, alpha )
        self.InfoMarkup = nil
    end 
	
