-----------------------------------------------------------------------------
-- stat multipliers (tweakables)
-----------------------------------------------------------------------------
-- Combat total = (ShipbuiltRU) + (ShipsCapturedRU) + (ShipsDestroyedRU) - (ShipslostRU)
smShipBuiltRU = 1.0
smShipsCapturedRU = 1.0
smShipsDestroyedRU = 1.0
smShipsLostRU = 1.0

-- Resource total = (ResourcesHarvested) + (ResourcesSpent) + (CollectorsBuiltRU) + (RefineriesRU)
smResourcesHarvestedRU = 0.5
smResourcesSpentRU = 0.5
smCollectorsBuiltRU = 1.0
smRefineriesRU = 1.0

-- Building & Research total = (Total build shipsRU) + (NumSubsystemsRU) + (ResearchRU)
smBuildShipsRU = 1.0
smSubsystemsRU = 1.5
smResearchRU = 1.0

-- Diplomacy total = (Tribute donated) - (Tribute received) + deathTime * 3
smTributeDonatedRU = 1.0
smTributeReceivedRU = 0.25
smDeathTimeLoserSec = 2.245 	-- just to make the numbers not so obvious
smDeathTimeWinnerSec = 4.879

-- Custom loaded chunk to procedureally create stats tabs
-- stat hookups are in Statistics.cpp in
	
	
-----------------------------------------------------------------------------
-- stats screen def'n
-----------------------------------------------------------------------------
-- Layout for the game statistics screen
Stats = {
	size = {0, 0, 800, 600},
	stylesheet = "HW2StyleSheet",
	
	pixelUVCoords = 1,
		
	-- Screens to go to when next is pressed
	onSPSkirmishDone = "GameSetup",
	onMPDone = "LobbyScreen",
	
	-- Max # of stats per stat tab frame
	statCount = 6,
	
	-- Max # of players 
	playerCount = 6,
	
	noTimeKilledText = "--",
	
	---  const StatBinding gc_statBindings[]
	StatTabs = {
		;
		{
			name = "tabOverview",
			type = "StatTab",
			title = "$4500",--OVERVIEW
			helpTip = "$4555",
			;
			-- Stats 
			{
				name = "statCombatTotal",
				type = "PlayerStat",
				title = "$4518",--COMBAT
				helpTip = "$4519",
				fstring = "%d",
				position = 0,
				stat = "CombatTotal",
			},
			{
				name = "statResourceTotal",
				type = "PlayerStat",
				title = "$4528",--RESOURCE TOTAL
				helpTip = "$4529",
				fstring = "%d",
				position = 1,
				stat = "ResourceTotal",
			},
			{
				name = "statBuildingTotal",
				type = "PlayerStat",
				title = "$4538",--BUILDING TOTAL
				helpTip = "$4539",
				fstring = "%d",
				position = 2,
				stat = "BuildingTotal",
			},
			{
				name = "statDiplomacyTotal",
				type = "PlayerStat",
				title = "$4548",--DIPLOMACY TOTAL
				helpTip = "$4549",
				fstring = "%d",
				position = 3,
				stat = "DiplomacyTotal",
			},
			
			{
				name = "statOverviewTotal",
				type = "PlayerStat",
				fstring = "%d",
				title = "$4506",--OVERVIEW TOTAL
				helpTip = "$4507",
				position = 5,
				stat = "OverviewTotal",
			},
		},
		
		{
			name = "tabCombat",
			type = "StatTab",
			title = "$4501", --COMBAT
			helpTip = "$4556",
			;
			-- Stats 
			{
				name = "statShipsBuilt",
				type = "PlayerStat",
				title = "$4508",--SHIPS BUILT
				helpTip = "$4509",
				fstring = "%d",
				stat = "TotalShipsBuilt",
				position = 0,
			},
			{
				name = "statShipsLost",
				type = "PlayerStat",
				title = "$4510",--SHIPS LOST
				helpTip = "$4511",
				fstring = "%d",
				stat = "TotalShipsLost",
				position = 1,
			},
			{
				name = "statShipsDestroyed",
				type = "PlayerStat",
				title = "$4512",--ENEMY SHIPS KILLED
				helpTip = "$4513",
				fstring = "%d",
				stat = "TotalShipsDestroyed",
				position = 2,
			},
			{
				name = "statShipsCaptured",
				type = "PlayerStat",
				title = "$4514",--ENEMY SHIPS CAPTURED
				helpTip = "$4515",
				fstring = "%d",
				stat = "TotalShipsCaptured",
				position = 3,
			},
			--{
			--	name = "statBestShip",
			--	type = "PlayerStat",
			--	title = "$4516",--BEST SHIP
			--   helpTip = "$4517",
			--	fstring = "%d",
			--	stat = "BestShip",
			--	position = 0,
			--},
			{
				name = "statCombatTotal",
				type = "PlayerStat",
				title = "$4518",--TOTAL SHIPS BUILT
				helpTip = "$4519",
				fstring = "%d",
				stat = "CombatTotal",
				position = 5,
			},
		},
		
		{
			name = "tabResource",
			type = "StatTab",
			title = "$4502",--RESOURCE
			helpTip = "$4557",
			;
			-- Stats 
			{
				name = "statRUHarvested",
				type = "PlayerStat",
				title = "$4520",--RESOURCES GATHERED
				helpTip = "$4521",
				position = 0,
				stat = "TotalRUHarvested",
				fstring = "%d RU",
			},
			{
				name = "statRUSpent",
				type = "PlayerStat",
				title = "$4522",--RESOURCES SPENT
				helpTip = "$4523",
				position = 1,
				stat = "TotalRUSpent",
				fstring = "%d RU",
			},
			{
				name = "statResourceCollectors",
				type = "PlayerStat",
				title = "$4524",--RESOURCES COLLECTORS BUILT
				helpTip = "$4525",
				position = 2,
				stat = "ResourceCollectors",
				fstring = "%d",
			},
			{
				name = "statMobileRefineries",
				type = "PlayerStat",
				title = "$4526",--REFINERIES BUILT
				helpTip = "$4527",
				position = 3,
				stat = "MobileRefineries",
				fstring = "%d",
			},
			{
				name = "statResourceTotal",
				type = "PlayerStat",
				title = "$4528",--RESOURCES TOTAL
				helpTip = "$4529",
				position = 5,
				stat = "ResourceTotal",
				fstring = "%d",
			},
		},
		
		{
			name = "tabBuilding",
			type = "StatTab",
			title = "$4503",--BUILDING
			helpTip = "$4558",
			;
			-- Stats 
			{
				name = "statBuildCapableShips",
				type = "PlayerStat",
				title = "$4530",--NUMBER OF BUILD CAPABLE SHIPS
				helpTip = "$4531",
				position = 0,				
				fstring = "%d",
				stat = "BuildCapableShips",
			},			
			{
				name = "statTotalSubsystems",
				type = "PlayerStat",
				title = "$4532",--NUMBER OF SUBSYSTEMS
				helpTip = "$4533",
				position = 1,				
				fstring = "%d",
				stat = "TotalSubsystems",
			},
			{
				name = "statTechnologies",
				type = "PlayerStat",
				title = "$4534",--% RESEARCH
				helpTip = "$4535",
				position = 2,				
				fstring = "%d\%",
				stat = "Research%",
			},
			{
				name = "statResearchCost",
				type = "PlayerStat",
				title = "$4536",--RU SPENT ON RESEARCH
				helpTip = "$4537",
				position = 3,				
				fstring = "%d RU",
				stat = "ResearchCost",
			},
			{
				name = "statBuildingTotal",
				type = "PlayerStat",
				title = "$4538",--BUILDING TOTAL
				helpTip = "$4539",
				position = 5,				
				fstring = "%d",
				stat = "BuildingTotal",
			},
		},
		
		{
			name = "tabDiplomacy",
			type = "StatTab",
			title = "$4504",--DIPLOMACY
			helpTip = "$4559",
			;
			-- Stats 
			
			-- Team has been removed b/c its useless
			--{
			--	name = "statTeam",
			--	type = "PlayerStat",
			--	title = "$4540",--TEAM
			--	helpTip = "$4541",
			--	position = 0,
			--	fstring = "%d",
			--	stat = "Team",
			--},
			{
				name = "statTributeRecieved",
				type = "PlayerStat",
				title = "$4542",--TRIBUTE RECEIVED
				helpTip = "$4543",
				position = 0,				
				fstring = "%d RU",
				stat = "TributeReceived",
			},
			{
				name = "statTributeDontated",
				type = "PlayerStat",
				title = "$4544",--TRIBUTE DONTATED
				helpTip = "$4545",
				position = 1,				
				fstring = "%d RU",
				stat = "TributeDonated",
			},
			{
				name = "statTimeOfDeath",
				type = "PlayerStat",
				title = "$4546",--TIME OF DEATH
				helpTip = "$4547",
				position = 2,				
				fstring = "%d:%02d:%02d",
				stat = "TimeOfDeath",
			},
			{
				name = "statDiplomacyTotal",
				type = "PlayerStat",
				title = "$4548",--DIPLOMACY TOTAL
				helpTip = "$4549",
				position = 5,				
				fstring = "%d",
				stat = "DiplomacyTotal",
			},
		},
	},
	
	;

	-- Crappy gamespy logo
	-- Only visible in gamespy games
	{
		type = "Frame",
		name = "frameGamespy",
		BackgroundGraphic = {
			type = "Graphic",
			size = {128,32},
			texture = "Data:UI\\NewUI\\Network\\gamespy.mres",
			textureUV = {0.0,0.0,128,32},
		},
		position = {656,9},
		size = {128,32},
		;
	},
	
	
	-- Title
	{
		type = "TextLabel",
		position = {16,-2},
		size = {600,36},
		name = "lblTitle",
		Text = {
			text = "$4550", --GAME STATISTICS
			textStyle = "FEHeading1",
		},
		;
	},

	-- Subtitle (Victory)
	{
		type = "TextLabel",
		position = {17,34},
		size = {700,21},
		name = "lblSubtitleVictory",
		Text = {
			text = "$4551", --VICTORY
			textStyle = "FEHeading2",
		},
		;
	},
	
	-- Subtitle (Defeat)
	{
		type = "TextLabel",
		position = {17,34},
		size = {700,21},
		name = "lblSubtitleDefeat",
		Text = {
			text = "$4552",--DEFEAT
			textStyle = "FEHeading2",
		},
		;
	},

	
	
	
	
	------------------------------------------------------------------------------------
	-- TABS FRAME
	------------------------------------------------------------------------------------
	{
		type = "Frame",
		position = {12,140},
		size = {776, 252},
		backgroundColor = "FEColorBackground1",
		--backgroundColor = {250,50,50,255},
		;
		
		-- Title
		{
			type = "TextLabel",
			position = {5,2},
			size = {400,13},
			Text = {
				text = "$4553", -- PLAYER STATISTICS
				textStyle = "FEHeading3",
			},
		},

		-- SubTitle
		{
			type = "TextLabel",
			name = "lblStatsSubtitle",
			position = {5,18},
			size = {400,9},
			Text = {
				text = "$4554", -- STATS SUBTITLE//
				textStyle = "FEHeading4",
			},
		},
		
		-- GLOBAL STATS
		{
			type = "TextLabel",
			name = "lblTotalTime",
			position = {400, 4},
			size = {374, 13},
			Text = {
				text = "$5174",
				textStyle = "FEButtonTextStyle",
				color = {255,255,255,255},
				hAlign = "Right",
				vAlign = "Middle",
			},
		},
		{
			type = "TextLabel",
			name = "lblLevelName",
			position = {400, 17},
			size = {374, 13},
			Text = {
				text = "$5175",
				textStyle = "FEButtonTextStyle",
				color = {255,255,255,255},
				hAlign = "Right",
				vAlign = "Middle",
			},
		},
			
		-- TabButtons frame
		{
			type = "Frame",
			name = "frameTabButtons",
			position = {282,34},
			size = {560, 15},
			autoarrange = 1,
			autoarrangeSpace = 1,
			autoarrangeWidth = 560,
		},
		
		-- Tab button to clone	
		{
			type = "RadioButton",
			visible = 0,
			name = "btnTabButtonToClone",
			buttonStyle = "FETabButtonStyle",
			Text = {
				textStyle = "FEButtonTextStyle",
			},
		},
		
		-- Outline frame
		{
			type = "Frame",
			outerBorderWidth = 1,
			borderColor = "FEColorOutline",
			position = {3, 49},
			size = {770, 200},
			;
			
			-- Corner frame
			{
				type = "Frame",
				borderWidth = 1,
				borderColor = "FEColorOutline",
				size = {194, 38},
			},
			
			-- Player frame
			{
				type = "Frame",
				name = "framePlayers",
				borderWidth = 1,
				borderColor = "FEColorOutline",
				position = {0,38},
				size = {194, 162},
				autoarrange = 1,
				;
			},
			
			
			-- Player stat title frame
			{
				type = "Frame",
				name = "statTitlesParentFrame",
				borderWidth = 1,
				borderColor = "FEColorOutline",
				position = {194,0},
				size = {576, 38},
				autoarrange = 1,
				autoarrangeWidth = 578,
			},
			
			-- Stat title to clone
			{
				type = "TextLabel",
				name = "lblStatTitle",
				visible = 0,
				size = {96,38},
				wrapping = 1,
				marginWidth = 10,
				Text = {
					textStyle = "FEButtonTextStyle",
					color = {255,255,255,255},
					vAlign = "Middle",
					hAlign = "Center",
				},
			},
			
			
			
			-- Player slot frame to clone
			{
				type = "Frame",
				size = {194, 27},
				name = "framePlayerInfoToClone",
				visible = 0,
				;
				
				-- Player info
				{
					type = "Frame",
					borderColor = "FEColorOutline",
					borderWidth = 1,
					position = {-1,0},
					size = {196, 27},
					;
					
					{
						type = "Frame",
						outerBorderWidth = 1,
						borderColor = {255,255,255,255},
						backgroundColor = {161,104,206,255},
						position = {5,5},
						size = {182,17},
						name = "frmPlayerInfo",
						;					
		
						-- Player name
						{
							type = "TextLabel",
							position = {5,2},
							size = {111,12},
							name = "lblName",
							giveParentMouseInput = 1,
							dropShadow = 1,
							Text = {
								color = {255,255,255,255},
								text = "$5177",							
								textStyle = "FEButtonTextStyle",
								hAlign = "Left",
							},
							;
						},				
							
						{
							type = "Frame",
							position = {120,0},
							size = {60,17},
							name = "frmEmblem",
							;
							-- Team color stripes frame
							{
								type = "Frame",							
								BackgroundGraphic = {
									type = "Graphic",
									size = {60,17},
									texture = "Data:UI\\NewUI\\Network\\stripes.mres",
									textureUV = {0.0,0.0,60,17},								
								},
								size = {60,17},
								name = "frmStripe",
								;
							},
			
							-- Badge graphic
							{
								type = "Frame",
								BackgroundGraphic = {
									type = "Graphic",
									size = {17,17},
									texture = "DATA:Badges/Hiigaran.tga",
									textureUV = {0.0,0.0,64,64},
								},							
								size = {17,17},
								name = "frmBadge",
								;
							},
						},
					},	
				},
			},
			
			-- Stats frame
			{
				type = "Frame",
				name = "frameStats",
				borderWidth = 1,
				borderColor = "FEColorOutline",
				position = {194, 38},
				size = {576, 162},
				autoarrange = 1,
				;
			},
			
			-- Stats slot to clone
			{
				type = "Frame",
				name = "frameStatSlotToClone",
				size = {576, 27},
				visible = 0,
				;
				
				-- Stats				
				{
					type = "Frame",
					name = "frameStats",
					borderColor = "FEColorOutline",
					borderWidth = 1,
					position = {-1, 0},
					size = {578, 27},
					autoarrange = 1,
					autoarrangeWidth = 578,
					;
				},
			},
			
			-- Stat label to clone
			{
				type = "TextLabel",
				visible = 0,
				name = "lblStat",
				size = {96,27},
				wrapping = 1,
				marginWidth = 15,
				Text = {
					font = "ChatFont",
					vAlign = "Middle",
					hAlign = "Center",
					color = {255,255,255,255},
				},
			},
		},
	},
	
	
	
	------------------------------------------------------------------------------------
	-- CHAT FRAME
	------------------------------------------------------------------------------------
	{
		type = "Frame",
		name = "frameChatRoot",
		position = {12,326},
		size = {776, 202},
		backgroundColor = "FEColorBackground1",
		--backgroundColor = {250,50,50,255},
		visible = 0,
		;
		
		-- Title
		{
			type = "TextLabel",
			position = {5,2},
			size = {400,13},
			Text = {
				text = "$5178", -- CHAT
				textStyle = "FEHeading3",
			},
		},

		-- SubTitle
		{
			type = "TextLabel",
			position = {5,18},
			size = {400,9},
			Text = {
				text = "$3309", -- ENTER CHAT MESSAGE//
				textStyle = "FEHeading4",
			},
		},
		
		-- Border frame
		{
			type = "Frame",
			borderWidth = 2,
			borderColor = "FEColorOutline",
			position = {2,29},
			size = {772,171},
			
			;
			
			-- Chat list box
			{
				type = "ListBox",
				name = "listBoxChat",
				--backgroundColor = {100,0,0,200},
				position = {3,2},
				size = {765,148},
				hugBottom = 1,
				;
			},
			
			-- Line for left side of scrollbar
			{
				type = "Line",
				above = 1,
				lineWidth = 2,
				color = "FEColorOutline",				
				p1 = {751, 0},
				p2 = {751,151},
			},
			
			-- List box item to clone
			{
				type = "ListBoxItem",
				visible = 0,
				enabled = 0,
				autosize = 1,
				name = "lstBoxChatMsgTemplate",
				;
				{
					type = "TextLabel",
					name = "m_lblText",
					Text = {
						textStyle = "FEListBoxItemTextStyle",
						color = {255,255,255,255},
					},
					width = 756,
					wrapping = 1,
					autosize = 1,
					marginWidth = 2,
					;
				},
			},
			
			-- Bottom Border frame
			{
				type = "Frame",
				borderColor = "FEColorOutline",
				outerBorderWidth = 2,
				position = {2,152},
				size = {768,17},
				;
				-- Text input
				{
					type = "TextInput",
					textInputStyle = "FEChatTextInputStyle",
					borderWidth = 0,
					outerBorderWidth = 0,
					position = {2,0},
					size = {640, 17},
					name = "txtInputChat",
					helpTipTextLabel = "lblHelpText",
					helpTip = "$4560", -- "TYPE YOUR CHAT MESSAGE",
					maxTextLength = 256,
					;
				},
				
				-- Line for left side of button
				{
					type = "Line",
					above = 1,
					lineWidth = 2,
					color = "FEColorOutline",				
					p1 = {642, 0},
					p2 = {642,21},
				},
			
				-- Send button
				{
					type = "TextButton",
					buttonStyle = "FEButtonStyle2",
					position = {646,2},
					name = "btnSendChat",
					Text = {
						text = "$3416",
						textStyle = "FEButtonTextStyle",
					},
					helpTipTextLabel = "lblHelpText",
					helpTip = "$4561", -- "POST YOUR CHAT MESSAGE",
					;
				},
			},
			
			
		},
		
	},
	
	
	
	
	------------------------------------------------------------------------------------
	-- BOTTOM NAVIGATION FRAME
	------------------------------------------------------------------------------------
	{
		type = "Frame",
		backgroundColor = "FEColorBackground1",
		--backgroundColor = {250,50,50,255},
		position = {12,544},
		size = {776,44},
		;
		-- OUTLINE FRAME
		{
			type = "Frame",
			borderWidth = 2,
			borderColor = "FEColorOutline",
			position = {2,2},
			size = {772,40},
			;
			
			-- HELP TEXT
			{
				type = "TextLabel",
				position = {4,4},
				size = {764,13},
				name = "lblHelpText",
				Text = {					
					textStyle = "FEHelpTipTextStyle",
				},
				;
			},
			
			-- LINE
			{
				type = "Line",
				above = 0,
				lineWidth = 2,
				color = "FEColorOutline",				
				p1 = {2, 19},
				p2 = {770, 19},
				
			},
			
			-- BUTTONS			
			
			-- BACK BUTTON (return to game setup)
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle2",
				position = {648,23},
				name = "btnBack",
				Text = {
					text = "$5188", -- "CONTINUE",
					textStyle = "FEButtonTextStyle",
				},
				helpTipTextLabel = "lblHelpText",
				helpTip = "$4562", -- "GO TO GAME MENU",
			},
			
			-- REPLAY RECORDED GAME
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",
				position = {126,23},
				visible = 1,
				name = "btnReplay",
				Text = {
					text = "$5179",
					textStyle = "FEButtonTextStyle",
				},
				helpTipTextLabel = "lblHelpText",
				helpTip = "$4563", -- "PLAYBACK A PREVIOUSLY RECORDED GAME",
				;
			},
			
			-- SAVE RECORDING
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",
				position = {248,23},
				visible = 1,
				name = "btnSaveRecorded",
				Text = {
					text = "$5180",
					textStyle = "FEButtonTextStyle",
				},
				helpTipTextLabel = "lblHelpText",
				helpTip = "$4564", -- "SAVE A RECORDING OF THE LAST GAME FOR VIEWING LATER",
				;
			},
			
			-- MAIN MENU
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",
				--position = {526,23},
				position = {4,23},
				name = "btnMainMenu",
				Text = {
					text = "$2617", 
					textStyle = "FEButtonTextStyle",
				},
				helpTipTextLabel = "lblHelpText",
				helpTip = "$4565", -- "RETURN TO THE MAIN MENU",
				
				onMouseClicked = "UI_ShowScreen(\"NewMainMenu\", eTransition)",
				;
			},
			
			
			
			-- NEW GAME (not used anymore)
			{
				type = "TextButton",
				enabled = 0,
				visible = 0,
				buttonStyle = "FEButtonStyle2",
				position = {648,23},
				name = "btnNewGame",
				Text = {
					text = "$5181", -- NEW GAME
					textStyle = "FEButtonTextStyle",
				},
				helpTipTextLabel = "lblHelpText",
				helpTip = "$4566", -- "START A NEW GAME WITH CURRENT PLAYERS",
				;
			},
		},
	},
	
}
