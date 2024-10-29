package states.stages;

import states.stages.objects.*;

class CrashStage extends BaseStage
{
	var dad:Character3D;

	override function create()
	{
			var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("rockslide"));
			bg.antialiasing = true;
			bg.active = false;
			bg.screenCenter(XY);
			add(bg);
	}
}
