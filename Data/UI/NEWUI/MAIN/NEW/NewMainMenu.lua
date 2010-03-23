-- LUA CONFIG FOR THE MAIN MENU UISCREEN
NewMainMenu = {
	size = {0, 0, 800, 600},
	stylesheet = "HW2StyleSheet",
	
	RootElementSettings = {
		backgroundColor = {0,0,0,255}, -- black background for letterbox effect
	},
	
	-- Flags
	pixelUVCoords = 1, -- Enter pixel coords for texture coords
	
	--Hotkeys = {
	--	{ "FE_ExitToWindows()",INKE_KeyDown, 0, "Exit to operating system",    { ALTKEY, F4KEY } },
	--},
	;
	{
		type = "Frame",
		position = {1, 100},
		size = {900, 400},
		BackgroundGraphic = {
			size = { 800, 400 },
			texture = "DATA:UI/NewUI/Background/load_background.mres",
			textureUV = { 0, 56, 800, 455},
		},
	},
		
	-- Panel frame
	{
		type = "Frame",
		autosize = 1,
		backgroundColor = "FEColorBackground1",
		--backgroundColor =  {100,100,100,255},
		position = {580, 125},
		autoarrange = 1,
		autoarrangeWidth = 304,
		autoarrangeSpace = -10,
		maxSize = {210, 400},
		;
		
		-- Spacer
		{
			type = "Frame",             
			size = {304, 1},			
		},
		
		-- Panel Title
		{
			type = "TextLabel",
			size = {304, 15},
			Text = {
				textStyle = "FEHeading3",
				text = "$2617",
				offset = {8,0},
			},
		},
		
		-- Spacer
		{
			type = "Frame",
			size = {304, 2},			
		},
		
		-- Panel Subtitle
		{
			type = "TextLabel",
			name = "m_lblSubTitle",			
			size = {304, 10},
			Text = {
				textStyle = "FEHeading4",
				text = "$2618",
				offset = {8,0},
			},
		},
		
		-- Spacer
		{
			type = "Frame",
			size = {304, 2},			
		},
		
		-- Left edge spacer
		{
			type = "Frame",
			size = {2,50},
			--backgroundColor = {100,100,100,255},
		},
		
		-- Button Frame
		{
			type = "Frame",
			outerBorderWidth = 0,
			borderColor = "FEColorOutline",
			autosize = 1,
			autoarrange = 1,
			autoarrangeSpace = 15,
			autoarrangeWidth = 256,
			;
			
			-- Buttons		
			--{
			--	type = "TextButton",
			--	buttonStyle = "FEButtonStyle1",			
			--	name = "btnStartGame",	
			--	width = 200,
			--	text = "$2601", -- Quick Start (Player Vs. CPU),
			--	
			--	onMouseClicked = "UI_StartGameWithSelectedLevel(); ",			
			--},
			
			-- Level Drop Down List Box	
			--{
			--	type = "DropDownListBox",			
			--	width = 242,
			--	name = "listLevels",	
			--},	
			
			-- Spacer
			--{
			--	type = "Frame",
			--	size = {220, 7},
			--},
			
			
			{
				type = "TextButton",
				buttonStyle = "",			
				text = " ",
				name = "btnTutorial",
				width = 200,
			},
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",			
				text = " ¿Ãœ¿Õ»ﬂ  ŒÕ≈÷ ¬–≈Ã≈Õ", -- Campaign,
				name = "btnCampaign",
				width = 200,
			},
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",			
				text = "$2604", -- Player VS CPU,
				name = "btnPlayerVsCPU",	
				width = 200,
			},	
			
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",						
				text = "$2614", -- Multiplayer (even newer)",
				name = "btnMultiplayer",
				width = 200,
				onMouseClicked ="UI_ShowScreen('ConnectionType', eTransition);",
			},			
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",		
				width = 200,
				enabled = 1,
				text = "$2605", -- Check for patch
				onMouseClicked ="UI_ShowScreen('PatchScreen', eTransition);",
			},		
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",			
				text = "$2616", -- Player Profiles",
				name = "btnProfile",
				width = 200,
				
				onMouseClicked = [[
					UI_SetNextScreen("UserProfile", "NewMainMenu");
					UI_SetPreviousScreen("UserProfile", "NewMainMenu");
					UI_ShowScreen("UserProfile", eTransition);
				]],
			},
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",			
				text = "$2607", -- Options",
				name = "btnOptions",
				width = 200,
				onMouseClicked = "UI_ShowScreen(\"FEGameOptions\", eTransition)",
			},
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle1",			
				-- Movies
				text = "$3366",
				name = "btnLoadRecorded",
				width = 200,
				onMouseClicked = "FE_LoadGameScreen_RecordedGame(); ",
			},
			{     
                        type = "TextButton",
			      buttonStyle = "FEButtonStyle1", 
				-- Manuals					
				text = "GALLERY",
				name = "btnManuals",
				width = 200,
				onMouseClicked = [[UI_ShowScreen("GalleryHiigaran", eTransition)]],       

                  
                 	},
			{     
	   		      type = "TextButton", 
				buttonStyle = "FEButtonStyle1",
				text = "$2608", -- Movies",
				name = "btnMovies",
				width = 200,
				onMouseClicked = "UI_ShowScreen(\"PlayMoviesScreen\", eTransition)",
			},
			
			
			-- Spacer (This keeps the width as well)
			{
				type = "Frame",
				size = {296, 10},
			},		
			
			{
				type = "TextButton",
				buttonStyle = "FEButtonStyle2",			
				text = "$2609", -- Exit",
				name = "btnExit",
				width = 200,
				onMouseClicked = "UI_ExitApp();",
			},
		},
		
		-- bottom Spacer
		{
			type = "Frame",
			size = {300,10},
			--backgroundColor = {100,100,100,255},
		},
	},
	
	
	
	
	
	
	{ -- Listbox Object to clone
		type = "TextListBoxItem",
		
		buttonStyle = "FEListBoxItemButtonStyle",
		
		name = "m_levelListBoxItem",
		
		visible = 0,
		enabled = 0,
		
		Text = {
			textStyle = "FEListBoxItemTextStyle",			
		},	
	},
		
	-- Comment out this frame if you dont want the build info...
	--{
	--	type = "Frame",
	--	autosize = 1,
	--	position = {2, 600 - 15},
	--	;
		
		-- Version number
		{
			type = "TextLabel",
			name = "lblVersion",
			size = {400, 13},
			position = {578-220,518-40},
			Text = {	
				text = "P.G.C Presents demo v001 ",
				font = "ButtonFont",
				hAlign = "Right",
				vAlign = "Top",
				color = {100,166,190,255},
				offset = {-2, 0},
			},
		},
		
		-- Build number
		--{
		--	type = "TextLabel",
		--	name = "lblBuildNumber",
		--	visible = 0,
		--	size = {400, 13},
		--	position = {0,13},
		--	Text = {				
		--		font = "ListBoxItemFont",
		--		color = {255,255,255, 255},
		--	},
		--},
		
		-- Builder name
		--{
		--	type = "TextLabel",
		--	name = "lblBuilderName",
		--	visible = 0, 
		--	size = {400, 13},
		--	position = {0,26},
		--	Text = {				
		--		font = "ListBoxItemFont",
		--		color = {255,255,255, 255},
		--	},
		--},
		
		-- Data path
		--{
		--	type = "TextLabel",
		--	name = "lblDataPath",
		--	visible = 0,
		--	size = {400, 13},
		--	position = {0,39},
		--	Text = {				
		--		font = "ListBoxItemFont",
		--		color = {255,255,255, 255},
		--	},
		--},
	--},
	
	
}