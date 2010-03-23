-- Cold Fusion LUA Decompiler v1.0.0
-- By 4E534B
-- Date: 07-25-2007 Time: 22:56:53
-- On error(s), send source (compiled) file to 4E534B@gmail.com

UC_Family("Fighter", 14);
UC_FamilyOverride("Vaygr", "Fighter", 18);

UC_Family("Corvette", 12);
UC_ShipType("MinelayerCorvette", 5);

UC_Family("Frigate", 21);
UC_ShipType("DefenseFieldFrigate", 2);
UC_ShipType("CaptureFrigate", 6);
UC_ShipTypeOverride("Hiigaran", "CaptureFrigate", 4);

UC_Family("Capital", 15);----поднял на 2
UC_FamilyOverride("Vaygr", "Capital", 15);
UC_ShipType("Destroyer", 5);
UC_ShipType("Carrier", 4);
UC_ShipTypeOverride("Vaygr", "Carrier", 6);
UC_ShipType("Battlecruiser", 3);
UC_ShipType("Shipyard", 1);
---добавил
UC_ShipType("Dreadnaught", 2);
UC_ShipType("Linckor", 2);
---

UC_Family("Utility", 50);
UC_ShipType("ResourceCollector", 20);
UC_ShipType("ResourceController", 4);
UC_ShipType("Probe", 10);
UC_ShipType("ECMProbe", 10);
UC_ShipType("ProximitySensor", 10);

UC_Family("Platform", 20);
UC_ShipType("HyperspacePlatform", 4);

UC_Family("Mothership", 6);
UC_Family("SinglePlayerMisc", 100);

