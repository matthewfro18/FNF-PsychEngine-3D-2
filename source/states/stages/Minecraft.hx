package states.stages;

import states.stages.objects.*;

class Minecraft extends BaseStage
{
        var dad:Character3D;

	override function create()
	{
			var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("flatland"));
			// bg.setGraphicSize(Std.int(bg.width * 2.5));
			// bg.updateHitbox();
			bg.antialiasing = true;
			bg.scrollFactor.set(0.9, 0.9);
			bg.active = false;
			bg.screenCenter(XY);
			add(bg);
	}
}
