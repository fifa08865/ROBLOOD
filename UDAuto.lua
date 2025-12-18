local Codes = {
	"ThankYou100k",
	"HereyougoEA!",
	"ThousandsOfCodes!",
	"MaxedOut!",
	"SixSeven!",
	"FixingBugs!",
	"75kLikes!",
	"NumberOne!",
	"Universal!",
	"Mainstream!",
	"ThankYouUTD!",
	"40kCCU!",
	"THANKYOU!",
	"RELEASE!",
	"UNRIVALED!"
}

for i,v in pairs(Codes) do
	local args = {
		v
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("CodeService"):WaitForChild("RF"):WaitForChild("Redeem"):InvokeServer(unpack(args))
	task.wait(.3)
end

local function setting()
		local args = {
		"KidNaruto"
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DataService"):WaitForChild("RF"):WaitForChild("ClaimStarterUnit"):InvokeServer(unpack(args))

		local args = {
		"Beginning"
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DataService"):WaitForChild("RE"):WaitForChild("CompleteTutorial"):FireServer(unpack(args))

		local args = {
		buffer.fromstring("\f\000\000")
	}
	game:GetService("ReplicatedStorage"):WaitForChild("ByteNetReliable"):FireServer(unpack(args))

	local args = {
		"AutoSkipSummon",
		true
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DataService"):WaitForChild("RE"):WaitForChild("SetSetting"):FireServer(unpack(args))
	local args = {
		"SellLegendary",
		true
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DataService"):WaitForChild("RE"):WaitForChild("SetSetting"):FireServer(unpack(args))
	local args = {
		"SellEpic",
		true
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DataService"):WaitForChild("RE"):WaitForChild("SetSetting"):FireServer(unpack(args))
	local args = {
		"SellRare",
		true
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("DataService"):WaitForChild("RE"):WaitForChild("SetSetting"):FireServer(unpack(args))
	local args = {
		{
			1
		}
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("BattlepassService"):WaitForChild("RF"):WaitForChild("ClaimTiers"):InvokeServer(unpack(args))
end

while task.wait(.5) do
	local args = {
		"TenSummon",
		"Special"
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Packages"):WaitForChild("_Index"):WaitForChild("sleitnick_knit@1.7.0"):WaitForChild("knit"):WaitForChild("Services"):WaitForChild("BannerService"):WaitForChild("RF"):WaitForChild("BuyBanner"):InvokeServer(unpack(args))
end
	


