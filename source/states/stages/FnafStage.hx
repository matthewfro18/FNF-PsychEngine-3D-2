package states.stages;

import states.stages.objects.*;

class FnafStage extends BaseStage
{
        var dad:Character3D;

	override function create()
	{
			var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("bedroom"));
			bg.antialiasing = true;
			bg.active = false;
			bg.setGraphicSize(Std.int(bg.width * 0.9));
			bg.updateHitbox();
			bg.screenCenter(XY);
			add(bg);
	}
}
