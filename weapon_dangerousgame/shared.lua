#why are u reuploading this?


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
SWEP.PrintName			= "Dangerous Game"
SWEP.Slot			= 3
SWEP.SlotPos			= 4
SWEP.DrawAmmo			= true
SWEP.DrawCrosshair		= true
SWEP.ViewModelFOV		= 75
SWEP.ViewModelFlip		= false
SWEP.ViewModel = "models/weapons/c_shotgun.mdl"
SWEP.HoldType = "crossbow"
SWEP.WorldModel = "models/weapons/c_grenade.mdl"
SWEP.ShowViewModel = false
SWEP.ShowWorldModel = false

SWEP.Purpose			= "Careful, now."
SWEP.Instructions		= "M1 to shoot laser."
SWEP.BounceWeaponIcon	= false 

SWEP.UseHands = true
SWEP.ViewModelBoneMods = {
	["ValveBiped.Gun"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.square"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) },
	["ValveBiped.Pump"] = { scale = Vector(0.009, 0.009, 0.009), pos = Vector(0, 0, 0), angle = Angle(0, 0, 0) }
}

SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true
SWEP.AdminOnly          = true
SWEP.HoldType	  		= "physgun"

SWEP.Primary.NumberofShots 	= 70
SWEP.Primary.ClipSize		= 1
SWEP.Primary.DefaultClip	= 1
SWEP.Primary.Automatic		= false
SWEP.Primary.Delay		= 2
SWEP.Primary.Ammo 		= "ar2"
SWEP.Primary.Force = -300
SWEP.Primary.Damage = 350000
SWEP.Primary.Spread = 0.9
SWEP.Primary.Recoil = 0
SWEP.Buckshotted = true

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

hook.Add("PlayerSpawn", "buckshot_loading", function(ply)-- tha valueess
    if IsValid(ply) then
	ply:SetNWBool("dumbass", false) 
	ply:SetNWBool("mandebounce", false) 
    ply:SetNWBool("justloaded", false) 
	ply:SetNWBool("buckshotvgui", false) 
	ply:SetNWBool("firstload", true) 
	ply:SetNWInt("blanks", 0) 
	ply:SetNWInt("lives", 0)	
	ply:SetNWInt("handcuff", 0) 
	ply:SetNWInt("expired", 0) 	
	ply:SetNWInt("handsaw", 0) 
	ply:SetNWInt("magglass", 0) 	
	ply:SetNWInt("currentlytelling", false) 
	ply:SetNWInt("sawnoff", 1) 
	ply:SetNWString("currentround", "Blank")
	ply:SetNWEntity( "lastattacker", nil )
	  
    end
end)
        

local IRONSIGHT_TIME = 0.4

SWEP.VElements = {
	["shotgun"] = { type = "Model", model = "models/br_map/br_shotgun.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(-1.637, 2.97, -2.741), angle = Angle(-180, -90, -40.093), size = Vector(0.908, 0.908, 0.908), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["blaster"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "ValveBiped.Bip01_L_Hand", rel = "", pos = Vector(12.095, 5.277, 8.666), angle = Angle(42.894, -23.166, 105.007), size = Vector(0.157, 0.157, 0.157), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

SWEP.WElements = {
	["shotgun"] = { type = "Model", model = "models/br_map/br_shotgun.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(19.707, 0.987, -1.609), angle = Angle(90, -90, 0), size = Vector(0.908, 0.908, 0.908), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} },
	["blaster"] = { type = "Model", model = "models/evangelos/undertale/gasterblaster.mdl", bone = "ValveBiped.Bip01_R_Hand", rel = "", pos = Vector(36.724, 0.695, -4.511), angle = Angle(180, -180, 0), size = Vector(0.157, 0.157, 0.157), color = Color(255, 255, 255, 255), surpresslightning = false, material = "", skin = 0, bodygroup = {} }
}

function SWEP:Initialize()

	self:SetHoldType(self.HoldType)
	self:SetWeaponHoldType(self.HoldType)
	
	self.Dumbass = false
	self.Blanks = 0
self.Lives = 0
self.Total = 0
self.totalitems = 0	
self.selectedig = 0	
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
	self.Owner.usingbuckshot = true
	
	self.BeatSound = CreateSound( self.Owner, Sound( "weapons/gblaster/buckshotrelease.mp3" ) )
	if ( self.BeatSound ) then self.BeatSound:Play() end
	if !file.Exists("autorun/qe_weaponry_version_notify.lua","LUA") then self:Remove() end -- uh how about no.
	return true
end

function SWEP:Reload()
if self.Lives <= 0 then 
if SERVER then

local decideround = math.random(1,2)
if decideround == 2 then
self.Owner:SetNWString("currentround", "Live")
self.selectedig = 2	
elseif decideround == 1 then
self.Owner:SetNWString("currentround", "Blank")
self.selectedig = 1	
end

if self.Owner:GetNWBool("firstload") == false and self.totalitems < 8 then
for i=1,2 do 
local decideitem = math.random(1,4)
if decideitem == 1 then
self.Owner:SetNWInt("handcuff", self.Owner:GetNWInt("handcuff") +1 ) 
self.totalitems = self.totalitems +1
elseif decideitem == 2 then
self.Owner:SetNWInt("expired", self.Owner:GetNWInt("expired") +1 ) 
self.totalitems = self.totalitems +1
elseif decideitem == 3 then
self.Owner:SetNWInt("handsaw", self.Owner:GetNWInt("handsaw") +1 ) 
self.totalitems = self.totalitems +1
elseif decideitem == 4 then
self.Owner:SetNWInt("magglass", self.Owner:GetNWInt("magglass") +1 ) 
self.totalitems = self.totalitems +1

end
end 
end

timer.Create( "loljustnow"..self:EntIndex(), 2, 1, function() self.Owner:SetNWBool("justloaded", true) end )	
timer.Create( "lolloadded"..self:EntIndex(), 6, 1, function() self.Owner:SetNWBool("justloaded", false) end )	
self.Owner:SetNWBool("firstload", false) 
for i=1,8 do 
local which = math.random(1,2)
if which == 1 and self.Total <= 7 then
self.Blanks = self.Blanks +1
self.Total = self.Total +1
	self.Owner:SetNWInt("blanks", self.Blanks) 	
elseif  which == 2 and self.Total <= 7 then
self.Lives = self.Lives +1
self.Total = self.Total +1
	self.Owner:SetNWInt("lives", self.Lives) 	
end
end
	end
end
end

function SWEP:Think()
if self.Owner:GetNWInt("sawnoff") == 1 then
self.VElements["shotgun"].bodygroup = {[1] = 0}  
self.WElements["shotgun"].bodygroup = {[1] = 0}
self.VElements["blaster"].pos = Vector(12.095, 5.277, 8.666)
self.WElements["blaster"].pos = Vector(36.724, 0.695, -4.511)
elseif self.Owner:GetNWInt("sawnoff") == 2 then
self.VElements["shotgun"].bodygroup = {[1] = 1} 
self.WElements["shotgun"].bodygroup = {[1] = 1} 
self.VElements["blaster"].pos = Vector(5.9, 5.277, 3.666)
self.WElements["blaster"].pos = Vector(28.724, 0.695, -4.511)
end

	if ( self.Owner:IsPlayer() && ( self.Owner:KeyReleased( IN_ATTACK ) || !self.Owner:KeyDown( IN_ATTACK ) ) ) then
		if ( self.LoopSound ) then self.LoopSound:ChangeVolume( 0, 0.1 ) end
		if ( self.LoopSound2 ) then self.LoopSound2:ChangeVolume( 0, 0.1 ) end
		if ( self.BeatSound ) then self.BeatSound:ChangeVolume( 1, 0.1 ) end
	end
	if self.Owner:KeyReleased(IN_ATTACK) then
		self.CandoSpecial = false
	end
	self:IronSight()
end

function SWEP:PrimaryAttack()
	if ( !self:CanPrimaryAttack() ) then return end

if SERVER and self.Owner:GetNWBool("justloaded") == false then
	print(self.Total)
 local random = self.selectedig
 if random == 2 and self.Lives >= 1 and self.Total > 0 then
 self.Weapon:SendWeaponAnim(ACT_SHOTGUN_PUMP)	
util.ScreenShake(self:GetPos(),16,236,4*self:GetModelScale(),999*self:GetModelScale())
 print("rand2live1")
	local bullet = {} 
	bullet.Num = self.Primary.NumberofShots
	bullet.Src = self.Owner:GetShootPos()
	bullet.Dir = self.Owner:GetAimVector()
	bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
	bullet.Tracer = 1
	bullet.Force = self.Primary.Force
	bullet.Damage = self.Primary.Damage * self.Owner:GetNWInt("sawnoff")
	bullet.AmmoType = self.Primary.Ammo
	bullet.TracerName = "bullet_ray"
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
	self.Owner:EmitSound(Sound("weapons/gblaster/buckshot_shoot.mp3"))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self:SetNextSecondaryFire( CurTime() + self.Primary.Delay ) 
	self.Lives = self.Lives -1
	self.Owner:SetNWInt("lives", self.Owner:GetNWInt("Lives") -1) 	
    self.Total = self.Total -1
	elseif random == 1 and self.Blanks >= 1 and self.Total > 0 then
	self.Weapon:SendWeaponAnim(ACT_SHOTGUN_PUMP)
	 print("rand1blank1")
	self.Blanks = self.Blanks -1
    self.Total = self.Total -1
			self.Owner:SetNWInt("blanks", self.Owner:GetNWInt("Blanks") -1)
		self.Owner:EmitSound(Sound("weapons/gblaster/buckshot_pump.mp3"))
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay +5 )
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay +5 ) 
	elseif random == 2 and self.Lives <= 0 and self.Total > 0 then
	self.Weapon:SendWeaponAnim(ACT_SHOTGUN_PUMP)
    print("rand2nolives")
	self.Blanks = self.Blanks -1
    self.Total = self.Total -1
		self.Owner:SetNWInt("blanks", self.Owner:GetNWInt("Blanks") -1)
	self.Owner:EmitSound(Sound("weapons/gblaster/buckshot_pump.mp3"))
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay +5 )
			self:SetNextSecondaryFire( CurTime() + self.Primary.Delay +5 ) 
	elseif random == 1 and self.Blanks <= 0 and self.Total > 0 then
util.ScreenShake(self:GetPos(),16,236,4*self:GetModelScale(),999*self:GetModelScale())
self.Weapon:SendWeaponAnim(ACT_SHOTGUN_PUMP)
	 print("rand1noblanks")
		local bullet = {} 
	bullet.Num = self.Primary.NumberofShots
	bullet.Src = self.Owner:GetShootPos()
	bullet.Dir = self.Owner:GetAimVector()
	bullet.Spread = Vector( self.Primary.Spread * 0.1 , self.Primary.Spread * 0.1, 0)
	bullet.Tracer = 1
	bullet.Force = self.Primary.Force
	bullet.Damage = self.Primary.Damage * self.Owner:GetNWInt("sawnoff")
	bullet.AmmoType = self.Primary.Ammo
	bullet.TracerName = "bullet_ray"
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
	self.Owner:EmitSound(Sound("weapons/gblaster/buckshot_shoot.mp3"))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay )
	self:SetNextSecondaryFire( CurTime() + self.Primary.Delay ) 
	self.Lives = self.Lives -1
    self.Total = self.Total -1
	self.Owner:SetNWInt("lives", self.Owner:GetNWInt("Lives") -1) 	
	
	end
end
 self.Owner:SetNWInt("sawnoff", 1) 	
local decideround = math.random(1,2)
if decideround == 2 and self.Lives >= 1 then
self.Owner:SetNWString("currentround", "Live")
self.selectedig = 2	
elseif decideround == 1 and self.Blanks >= 1 then
self.Owner:SetNWString("currentround", "Blank")
self.selectedig = 1	
elseif decideround == 2 and self.Lives <= 0 then
self.Owner:SetNWString("currentround", "Blank")
self.selectedig = 1	
elseif decideround == 1 and self.Blanks <= 0 then
self.Owner:SetNWString("currentround", "Live")
self.selectedig = 2	
end


end


function SWEP:SecondaryAttack()
if SERVER then
 local random = math.random(1,2)
 if random == 2 and self.Lives >= 1 and self.Total >= 0 then
 self.Owner:EmitSound(Sound("weapons/gblaster/buckshot_shoot.mp3"))
self.Owner:SetNWBool("dumbass", true) 
timer.Create( "dumbfuck"..self:EntIndex(), 6, 1, function() self.Owner:SetNWBool("dumbass", false) end )	
 print("rand2live1")
 self.Owner:TakeDamage(self.Owner:GetMaxHealth() * 0.2 * self.Owner:GetNWInt("sawnoff"))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay +2)
	self:SetNextSecondaryFire( CurTime() + self.Primary.Delay +2 ) 
	self.Lives = self.Lives -1
    self.Total = self.Total -1
	self.Owner:SetNWInt("lives", self.Owner:GetNWInt("Lives") -1) 	
	elseif random == 1 and self.Blanks >= 1 and self.Total >= 0 then
	 print("rand1blank1")
	self.Blanks = self.Blanks -1
    self.Total = self.Total -1
			self.Owner:SetNWInt("blanks", self.Owner:GetNWInt("Blanks") -1)
		self.Owner:EmitSound(Sound("Weapon_Shotgun.Empty"))
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay -1.8 )
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay -1.8 ) 
	elseif random == 2 and self.Lives <= 0 and self.Total >= 0 then
    print("rand2nolives")
	self.Blanks = self.Blanks -1
    self.Total = self.Total -1
			self.Owner:SetNWInt("blanks", self.Owner:GetNWInt("Blanks") -1)
	self.Owner:EmitSound(Sound("Weapon_Shotgun.Empty"))
		self:SetNextPrimaryFire( CurTime() + self.Primary.Delay -1.8 )
		self:SetNextSecondaryFire( CurTime() + self.Primary.Delay -1.8 ) 
	elseif random == 1 and self.Blanks <= 0 and self.Total >= 0 then
	self.Owner:EmitSound(Sound("weapons/gblaster/buckshot_shoot.mp3"))
		self.Owner:SetNWBool("dumbass", true) 
		timer.Create( "dumbfuck"..self:EntIndex(), 6, 1, function() self.Owner:SetNWBool("dumbass", false) end )	
	 print("rand1noblanks")
		 self.Owner:TakeDamage(self.Owner:GetMaxHealth() * 0.2 * self.Owner:GetNWInt("sawnoff"))
	self:SetNextPrimaryFire( CurTime() + self.Primary.Delay +2 )
	self:SetNextSecondaryFire( CurTime() + self.Primary.Delay +2 ) 
	self.Lives = self.Lives -1
    self.Total = self.Total -1
	self.Owner:SetNWInt("lives", self.Owner:GetNWInt("Lives") -1) 	
	
	end
	end
	 self.Owner:SetNWInt("sawnoff", 1) 
	local decideround = math.random(1,2)
if decideround == 2 and self.Lives >= 1 then
self.Owner:SetNWString("currentround", "Live")
self.selectedig = 2	
elseif decideround == 1 and self.Blanks >= 1 then
self.Owner:SetNWString("currentround", "Blank")
self.selectedig = 1	
elseif decideround == 2 and self.Lives <= 0 then
self.Owner:SetNWString("currentround", "Blank")
self.selectedig = 1	
elseif decideround == 1 and self.Blanks <= 0 then
self.Owner:SetNWString("currentround", "Live")
self.selectedig = 2	
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
        return (1/(self.Secondary.ScopeZoom/2))
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

		
	function SWEP:DrawHUD()
  
	
    if not CLIENT then return end
    local ply = LocalPlayer()
	
	local lives = ply:GetNWInt("lives")
    local blanks = ply:GetNWInt("blanks")
	   -- coff
	   
	   
	   
	   
	   
if ply:GetNWBool("dumbass") == true then
local Texture1 = Material("decals/bloodstain_101") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(255, 255, 255, 255))
surface.DrawTexturedRectRotated( ScrW()-400, ScrH()-500, 1300, 1300, 90 )

local Texture2 = Material("decals/bloodstain_002") 
surface.SetMaterial(Texture2)
surface.SetDrawColor(Color(255, 255, 255, 255))
surface.DrawTexturedRectRotated( ScrW()-1255, ScrH()-655, 655, 655, 90 )
end

if ply:GetNWBool("justloaded") == true then
local blanks = tostring(ply:GetNWInt("blanks"))
local lives = tostring(ply:GetNWInt("lives"))

    local text = "" .. blanks .. " " .. "Blanks, " .. lives .. " Live."
	draw.SimpleText(text, "HudDefault", ScrW() * 0.47, ScrH() * 0.69, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
end

if ply:GetNWInt("currentlytelling") == true then
local blanks = tostring(ply:GetNWString("currentround"))

    local text = "Current Round: " .. blanks .. ""

draw.SimpleText(text, "HudDefault", ScrW() * 0.45, ScrH() * 0.69, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
end

if ply:KeyPressed(IN_USE) and ply:GetNWBool("buckshotvgui") == false and ply:GetNWBool("mandebounce") == false then
self.Owner:SetNWBool("mandebounce", true) 
timer.Create( "guidebounce"..self:EntIndex(), 0.3, 1, function() self.Owner:SetNWBool("mandebounce", false) end )
ply:SetNWBool("buckshotvgui", true) 
end

if ply:KeyPressed(IN_USE) and ply:GetNWBool("buckshotvgui") == true and ply:GetNWBool("mandebounce") == false then
ply:SetNWBool("buckshotvgui", false) 
self.Owner:SetNWBool("mandebounce", true) 
timer.Create( "guidebounce"..self:EntIndex(), 0.3, 1, function() self.Owner:SetNWBool("mandebounce", false) end )
end

    if ply:GetNWBool("buckshotvgui") == false then
	draw.SimpleText("E To open menu", "HudDefault", ScrW() * 0.02, ScrH() * 0.8, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	local Texture1 = Material("vgui/gradient-l") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(25, 25, 25, 155))
surface.DrawTexturedRectRotated( ScrW()-1800, ScrH()-215, 255, 50, 180 )
	end
	
	if ply:GetNWBool("buckshotvgui") == true then
	draw.SimpleText("Hand Saw", "HudDefault", ScrW() * 0.005, ScrH() * 0.79, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("2x Damage next shot. Clears after shot", "HudDefault", ScrW() * 0.008, ScrH() * 0.81, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText(self.Owner:GetNWInt("handsaw"), "HudDefault", ScrW() * 0.21, ScrH() * 0.81, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	local Texture1 = Material("vgui/gradient-l") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(25, 25, 25, 155))
surface.DrawTexturedRectRotated( ScrW()-1750, ScrH()-210, 455, 70, 180 )

	draw.SimpleText("Expired Medicine", "HudDefault", ScrW() * 0.005, ScrH() * 0.86, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("50% chance to take 7% of HP or heal 12% of HP.", "HudDefault", ScrW() * 0.008, ScrH() * 0.88, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText(self.Owner:GetNWInt("expired"), "HudDefault", ScrW() * 0.26, ScrH() * 0.88, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	local Texture1 = Material("vgui/gradient-l") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(25, 25, 25, 155))
surface.DrawTexturedRectRotated( ScrW()-1750, ScrH()-135, 650, 70, 180 )

	draw.SimpleText("Magnifying Glass", "HudDefault", ScrW() * 0.005, ScrH() * 0.72, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Allows you to see the current round", "HudDefault", ScrW() * 0.008, ScrH() * 0.74, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText(self.Owner:GetNWInt("magglass"), "HudDefault", ScrW() * 0.21, ScrH() * 0.74, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	local Texture1 = Material("vgui/gradient-l") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(25, 25, 25, 155))
surface.DrawTexturedRectRotated( ScrW()-1750, ScrH()-285, 455, 70, 180 )

	draw.SimpleText("Handcuffs", "HudDefault", ScrW() * 0.005, ScrH() * 0.65, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText("Stuns the person who last hit you for 4 seconds", "HudDefault", ScrW() * 0.008, ScrH() * 0.67, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	draw.SimpleText(self.Owner:GetNWInt("handcuff"), "HudDefault", ScrW() * 0.26, ScrH() * 0.67, Color( 255, 255, 255, 255 ), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER)
	local Texture1 = Material("vgui/gradient-l") 
surface.SetMaterial(Texture1)
surface.SetDrawColor(Color(25, 25, 25, 155))
surface.DrawTexturedRectRotated( ScrW()-1750, ScrH()-360, 655, 70, 180 )

end


end	


	local Mat = Material( "blasters/buckshotbg" )
  Mat:SetFloat( "$pp_colour_brightness", 0)
    function SWEP:PrintWeaponInfo( x, y, alpha )
        if self.InfoMarkup == nil then
            local str, title_color, text_color = "", "<color=255,255,255,255>", "<color=200,0,200,255>"
			local test, testcolor, nawman = "", "<color=255,255,255,255>", "<color=200,0,200,255>"
            str = "<font=TargetID>"
            if ( self.Author != "" ) then str = str..title_color..language.GetPhrase( "???" )..": </color>"..text_color..self.Author.."</color>\n" end
            if ( self.Purpose != "" ) then str = str..title_color..language.GetPhrase( " Now, me and you, we are dancing on the edge of life and death. " ) end
            if ( self.Instructions != "" ) then str = str..testcolor.."Four items each. You know the drill.        Are you ready?" end
            self.InfoMarkup = markup.Parse( str, 280 )
        end
        local xx, yy, ww, hh = x-6, y-6, 362, self.InfoMarkup:GetHeight() +24
        draw.RoundedBox( 0, xx, yy, ww, hh, Color( 23, 23, 23, 255, alpha ) )
        surface.SetDrawColor( 255, 255, 255, 255 )
        surface.SetMaterial( Mat )
		surface.ScreenHeight(500)
        surface.DrawTexturedRect( xx, yy /2.3, ww, hh *3)
        surface.SetDrawColor( 65, 0, 0, 255 )
        surface.DrawOutlinedRect( xx, yy, ww, hh, 2 )
        surface.SetDrawColor( 255, 255, 255, 2 )
        surface.DrawOutlinedRect( xx, yy, ww, hh, 1 )
        self.InfoMarkup:Draw( x + 5, y + 5, nil, nil, alpha )
        self.InfoMarkup = nil
    end 
	
