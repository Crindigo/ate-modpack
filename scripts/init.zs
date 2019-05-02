extrautilities2.Tweaker.XUTweaker.disableNetherPortals();

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
		val world = crafttweaker.world.IWorld.getFromID(0);
		if (world.worldInfo.difficulty != "peaceful" && event.player.world.time % 600 == 0) {
    		event.player.foodStats.addStats(10, 10);
				event.player.heal(10);
  	}
});

events.onPlayerLoggedIn(function(event as crafttweaker.event.PlayerLoggedInEvent) {
		// using or crafting some item should allow daylight to cycle again. i guess that could
		// set some player data which we can check here.
		// not sure how this is going to work in multiplayer.
		server.commandManager.executeCommand(server, "time set 114000");
		server.commandManager.executeCommand(server, "gamerule doDaylightCycle false");
		server.commandManager.executeCommand(server, "gamerule doMobSpawning false");
		server.commandManager.executeCommand(server, "gamerule doWeatherCycle false");
});