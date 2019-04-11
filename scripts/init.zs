extrautilities2.Tweaker.XUTweaker.disableNetherPortals();

events.onPlayerTick(function(event as crafttweaker.event.PlayerTickEvent) {
	val world = crafttweaker.world.IWorld.getFromID(0);
	
	if (world.worldInfo.difficulty != "peaceful" && event.player.world.time % 600 == 0) {
    	event.player.foodStats.addStats(10, 10);
		event.player.heal(10);
    }
});
