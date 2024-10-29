package states.stages;

import states.stages.objects.*;

class Minecraft extends BaseStage
{
        public var dadMap:Map<String, Character3D> = new Map<String, Character3D>();
	public var dad:Character3D = 'steve';

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
