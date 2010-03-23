-- This file contains all the UIScreens that will be loaded on startup of the app and on startup of the game.

-- Currently the UI only supports one style sheet, support for multiple stylesheets may be supported in the future if needed.
StyleSheets =
{
	HW2StyleSheet =
	{
		filename = "DATA:\\UI\\NewUI\\Styles\\HW2Styles.lua",
	},
}

-- These screens will be loaded in order of listing...
FrontEndScreens =
{
	;
	{
		name = "Background",
		filename = "DATA:\\UI\\NewUI\\Main\\New\\Background.lua",
		activated = 0,
	},
	-- This is the LuaScript that has the code for the screen
	{
		-- This is the name identifier for the screen.
		name = "NewMainMenu",
		filename = "DATA:\\UI\\NewUI\\Main\\New\\NewMainMenu.lua",
		-- Activate on front end startup (default is zero)
		activated = 0,
		-- Type of menu (default is UIScreen)
		type = "MainMenu",
	},
	{
		name = "CreditsScreen",
		filename = "DATA:\\UI\\NewUI\\CreditsScreen.lua",
		activated = 0,
	},
	{
		name = "GalleryHiigaran",
		filename = "DATA:\\UI\\NewUI\\GalleryHiigaran.lua",
		activated = 0,
		--type = "GalleryHiigaran",
	},
--	{
--		name = "InGameGalleryHiigaran",
--		filename = "DATA:\\UI\\NewUI\\InGameGalleryHiigaran.lua",
--		activated = 0,
--		--type = "GalleryHiigaran",
--	},
	{
		name = "",
		filename = "DATA:\\UI\\NewUI\\GalleryVaygr.lua",
		activated = 0,
		--type = "",
	},
	{
		name = "PasswordScreen",
		filename = "DATA:\\UI\\NewUI\\Shared\\PasswordScreen.lua",
		activated = 0,
	},
	{
		name = "StyleSheetTestScreen",
		filename = "DATA:\\UI\\NewUI\\Styles\\StyleSheetTestScreen.lua",
		activated = 0,
	},
	-- "type" is commented out by default. Careful with this one. It doesn't have a "back" button.
	{
		name = "NotForPublicDisplay",
		filename = "DATA:\\UI\\NewUI\\NotForPublicDisplay.lua",
		activated = 0,
--		type = "NotForPublicDisplay",
	},
	-- don't know if this one needs a "type" (used by functions within Homeworld2.exe)
	{
		name = "ScarProfilerEditBox",
		filename = "DATA:\\UI\\NewUI\\ScarProfilerEditBox.lua",
		activated = 0,
--		type = "ScarProfilerEditBox",
	},
	{
		name = "UserProfile",
		filename = "DATA:\\UI\\NewUI\\SinglePlayer\\SPUserProfile.lua",
		activated = 0,
		type = "UserProfile",
	},
	{
		name = "NewProfile",
		filename = "DATA:\\UI\\NewUI\\SinglePlayer\\SPNewProfile.lua",
		activated = 0,
		type = "NewProfile",
	},
	{
		name = "MissionSelect",
		filename = "DATA:\\UI\\NewUI\\Shared\\MissionSelect.lua",
		activated = 0,
		type = "SPMissionSelect",
	},
	{
		name = "PlayerSetup",
		filename = "DATA:\\UI\\NewUI\\Shared\\PlayerSetup.lua",
		activated = 0,
		type = "PlayerSetup",
	},
	{
		name = "EmblemSelect",
		filename = "DATA:\\UI\\NewUI\\Shared\\EmblemSelect.lua",
		activated = 0,
		type = "EmblemSelect",
	},
	{
		name = "LobbyScreen",
		filename = "DATA:\\UI\\NewUI\\GameRoom.lua",
		activated = 0,
		type = "LobbyScreen",
	},	
	{
		name = "GameTypeInfo",
		filename = "DATA:\\UI\\NewUI\\Shared\\GameTypeInfo.lua",
		activated = 0,
		type = "GameTypeInfo",
	},
	{
		name = "PatchInfoDialog",
		filename = "DATA:\\UI\\NewUI\\Shared\\PatchInfoDialog.lua",
		activated = 0,
		type = "PatchInfoDialog",
	},	
	{
		name = "CreateGameScreen",
		filename = "DATA:\\UI\\NewUI\\Multiplayer\\CreateGameScreen.lua",
		activated = 0,
		type = "CreateGameScreen",
	},		
	{
		name = "LobbyTitleRoom",
		filename = "DATA:\\UI\\NewUI\\ServerLobby.lua",
		activated = 0,
		type = "LobbyTitleRoom",
	},		
	{
		name = "PatchScreen",
		filename = "DATA:\\UI\\NewUI\\PatchScreen.lua",
		activated = 0,
		type = "PatchScreen",
	},	
	{
		name = "Stats",
		filename = "DATA:\\UI\\NewUI\\Stats.lua",
		activated = 0,
		type = "Statistics",
	},
	{
		name = "GameSetup",
		filename = "DATA:\\UI\\NewUI\\Shared\\GameSetup.lua",
		activated = 0,
		type = "GameSetup",
	},
	{
		-- req'd for ConnectionType
		name = "DirectConnection",
		filename = "DATA:\\UI\\NewUI\\Multiplayer\\DirectConnection.lua",
		activated = 0,
		type = "DirectConnectionScreen",
	},
	{
		-- req'd for ConnectionType
		name = "IPConnect",
		filename = "DATA:\\UI\\NewUI\\Multiplayer\\IPConnect.lua",
		activated = 0,
		type = "UIDialog",
	},
	-- Warning: DirectConnection and IPConnect must be loaded before this screen
	{
		name = "ConnectionType",
		filename = "DATA:\\UI\\NewUI\\Multiplayer\\ConnectionType.lua",
		activated = 0,
		type = "ConnectionType",
	},
	{
		name = "FEGameOptions",
		filename = "DATA:\\UI\\NewUI\\FEGameOptions.lua",
		activated = 0,
		type = "FEGameOptions",
	},
	{
		name = "GameInfoScreen",
		filename = "DATA:\\UI\\NewUI\\Multiplayer\\GameInfoScreen.lua",
		activated = 0,
		type = "GameInfoScreen",
	},	
	{
		name = "GameFilterScreen",
		filename = "DATA:\\UI\\NewUI\\Multiplayer\\GameFilterScreen.lua",
		activated = 0,
		type = "GameFilterScreen",
	},	
		
	-- DIALOGS
	{
		name = "YesNoDialog",
		filename = "DATA:\\UI\\NewUI\\YesNoDialog.lua",
		activated = 0,
		type = "UIDialog",
	},
	{
		name = "ErrorMessage",
		filename = "DATA:\\UI\\NewUI\\ErrorMessage.lua",
		activated = 0,
		type = "ErrorMessage",
	},
	{
		name = "WaitMessage",
		filename = "DATA:\\UI\\NewUI\\WaitMessage.lua",
		activated = 0,
		type = "WaitMessage",
	},
	{
		name = "SaveLoadDialog",
		filename = "DATA:\\UI\\NewUI\\Shared\\SaveLoadDialog.lua",
		activated = 0,
		type = "SaveLoadDialog",
	},
	{
		name = "SubtitleScreen",
		filename = "DATA:\\UI\\NewUI\\Subtitle.lua",
		activated = 0,
		type = "SubtitleScreen",
	},
	{
		name = "PlayMoviesScreen",
		filename = "DATA:\\UI\\NewUI\\PlayMoviesScreen.lua",
		activated = 0,
		type = "PlayMoviesScreen",
	},
}

-- in-between-game screens
TransientScreens =
{
	;
	{
		name = "LoadingScreen",
		filename = "DATA:UI/NewUI/LoadingScreen.lua",
		activated = 0,
	},	
}

-- in-game screens
GameScreens =
{
	;
	{
		name = "Pointer",
		filename = "DATA:\\UI\\NewUI\\Pointer.lua",
		type = "Pointer",
		activated = 1,
	},
	{
		name = "GenericScreen",
		filename = "DATA:\\UI\\NewUI\\Generic.lua",
		activated = 0,
	},			
	{
		name = "ResourceMenu",
		filename = "DATA:\\UI\\NewUI\\Resource.lua",
		activated = 0,
	},
--	{
--		name = "PopMenu",
--		filename = "DATA:\\UI\\NewUI\\Pop.lua",
--		activated = 0,
--	},
	{
		name = "UnitCapInfoPopup",
		type = "UnitCapInfoPopup",
		filename = "DATA:\\UI\\NewUI\\UnitCapInfoPopup.lua",
		activated = 0,
	},
	{
		name = "UnitCapInfoPopup1",
		type = "UnitCapInfoPopup",
		filename = "DATA:\\UI\\NewUI\\UnitCapInfoPopup1.lua",
		activated = 0,
	},
	{
		name = "New1",		
		filename = "DATA:\\UI\\NewUI\\New1.lua",
		activated = 0,
	},
	{
		name = "New2",		
		filename = "DATA:\\UI\\NewUI\\New2.lua",
		activated = 0,
	},
	{
		name = "New3",		
		filename = "DATA:\\UI\\NewUI\\New3.lua",
		activated = 0,
	},	
	{
		name = "UnitsMenu",
		filename = "DATA:\\UI\\NewUI\\Units.lua",
		activated = 0,
	},
	{
		name = "ObjectivesList",
		filename = "DATA:\\UI\\NewUI\\ObjectivesList.lua",
		activated = 0,
		type = "ObjectivesList",
	},
	-- Build menu must be loaded before the research menu
	{
		name = "NewBuildMenu",
		filename = "DATA:\\UI\\NewUI\\Build\\FinalBuild.lua",
		activated = 0,
		type = "FinalBuildMenu",	
	},
	{
		name = "NewLaunchMenu",
		filename = "DATA:\\UI\\NewUI\\NewLaunch.lua",
		activated = 0,
		type = "NewLaunchMenu",
	},
	{
		name = "NewResearchMenu",
		filename = "DATA:\\UI\\NewUI\\Research\\Research.lua",
		activated = 0,
		type = "NewResearchMenu",		
	},
	{
		name = "BuildInfo",
		filename = "DATA:\\UI\\NewUI\\Build\\BuildInfo.lua",
		activated = 0,
		type = "BuildInfo",
	},
	{
		name = "ResearchInfo",
		filename = "DATA:\\UI\\NewUI\\Research\\ResearchInfo.lua",
		activated = 0,
		type = "ResearchInfo",
	},
	{
		name = "NewTaskbar",
		filename = "DATA:\\UI\\NewUI\\NewTaskbar.lua",
		activated = 0,
		type = "NewTaskbar",
	},
	{
		name = "EventsScreen",
		filename = "DATA:\\UI\\NewUI\\EventsScreen.lua",
		activated = 0,
		type = "EventsScreen",
	},
	{
		name = "SubtitleScreen",
		filename = "DATA:\\UI\\NewUI\\Subtitle.lua",
		activated = 0,
		type = "SubtitleScreen",
	},
	{
		name = "SubtitleInputScreen",
		filename = "DATA:\\UI\\NewUI\\SubtitleInput.lua",
		activated = 0,
	},
	{
		name = "RightClickMenu",
		filename = "DATA:\\UI\\NewUI\\RightClickMenu.lua",
		activated = 0,
		type = "RightClickMenu",
	},
	{
		name = "DiplomacyScreen",
		filename = "DATA:\\UI\\NewUI\\DiplomacyScreen.lua",
		activated = 0,
		type = "DiplomacyScreen",
	},
	{
		name = "InGameMenu",
		filename = "DATA:\\UI\\NewUI\\InGameMenu.lua",
		activated = 0,
		type = "GameMenu",
	},
	{
		name = "FleetMenu",
		filename = "DATA:\\UI\\NewUI\\FleetMenu.lua",
		activated = 0,
	},
	{	
		name = "TacticsMenu",
		filename = "DATA:\\UI\\NewUI\\TacticsMenu.lua",
		activated = 0,
	},
	{
		name = "StrikeGroupsMenu",
		filename = "DATA:\\UI\\NewUI\\StrikeGroupsMenu.lua",
		activated = 0,
	},
	{
		name = "BuildQueueMenu",
		filename = "DATA:\\UI\\NewUI\\BuildQueueMenu.lua",
		activated = 0,
		type = "BuildQueueMenu",
	},
	{
		name = "ChatScreen",
		filename = "DATA:\\UI\\NewUI\\ChatScreen.lua",
		activated = 0,
		type = "ChatScreen",
	},
	{
		name = "ChatFloating",
		filename = "DATA:\\UI\\NewUI\\ChatFloating.lua",
		activated = 1,
	},
	{
		name = "PlayerLaggingScreen",
		filename = "DATA:\\UI\\NewUI\\PlayerLaggingScreen.lua",
		activated = 0,
		type = "PlayerLaggingScreen",
	},
	{
		name = "SMFiltersMenu",
		filename = "DATA:\\UI\\NewUI\\SMFiltersMenu.lua",
		activated = 0,
		type = "SMFiltersMenu",
	},
	{
		name = "SpeechRecall",
		filename = "DATA:\\UI\\NewUI\\SpeechRecall.lua",
		activated = 0,
		type = "SpeechRecall",
	},
	{
		name = "PauseScreen",
		filename = "DATA:\\UI\\NewUI\\Shared\\PauseScreen.lua",
		activated = 0,
	},
	{
		name = "InGameOptions",
		filename = "DATA:\\UI\\NewUI\\InGameOptions.lua",
		activated = 0,
		type = "InGameOptions",
	},
	{
		name = "SaveLoadDialog",
		filename = "DATA:\\UI\\NewUI\\Shared\\SaveLoadDialog.lua",
		activated = 0,
		type = "SaveLoadDialog",
	},
	{
		name = "GameOverScreen",
		filename = "DATA:\\UI\\NewUI\\GameOverScreen.lua",
		activated = 0,
		type = "GameOverScreen",
	},	
	{
		name = "PlaybackMenu",
		filename = "DATA:\\UI\\NewUI\\Playback\\PlaybackMenu.lua",
		activated = 0,
		type = "PlaybackMenu",
	},

	-- DIALOGS
	{
		name = "YesNoDialog",
		filename = "DATA:\\UI\\NewUI\\YesNoDialog.lua",
		activated = 0,
		type = "UIDialog",
	},
	{
		name = "ErrorMessage",
		filename = "DATA:\\UI\\NewUI\\ErrorMessage.lua",
		activated = 0,
		type = "ErrorMessage",
	},
}
