package states.stages;

import states.stages.objects.*;

class Checker extends BaseStage
{
        public var dadMap:Map<String, Character3D> = new Map<String, Character3D>();
	public var dad:Character3D = 'doll';
	public var dadGroup:FlxSpriteGroup;

	public var vocals:FlxSound;

	override function create()
	{
			var bg:FlxSprite = new FlxSprite().loadGraphic(Paths.image("redfloor"));
			// bg.setGraphicSize(Std.int(bg.width * 2.5));
			// bg.updateHitbox();
			bg.antialiasing = true;
			// bg.scrollFactor.set(0.66, 0.66);
			bg.active = false;
			bg.screenCenter(XY);
			add(bg);
		
		dadGroup = new FlxSpriteGroup(DAD_X, DAD_Y);
		
		dad = new Character3D(0, 0, SONG.player2);
		startCharacterPos(dad, true);
		dadGroup.add(dad);
		
		add(dadGroup);

		startCharacterScripts(dad.curCharacter);
	}
	public function addCharacterToList(newCharacter:String, type:Int) {
		switch(type) {
			case 1:
				if(!dadMap.exists(newCharacter)) {
					var newDad:Character3D = new Character3D(0, 0, newCharacter);
					dadMap.set(newCharacter, newDad);
					dadGroup.add(newDad);
					startCharacterPos(newDad, true);
					newDad.alpha = 0.00001;
					startCharacterScripts(newDad.curCharacter);
				}
	                     }
        }
	public function addBehindDad(obj:FlxBasic)
	{
		insert(members.indexOf(dadGroup), obj);
	}
}
