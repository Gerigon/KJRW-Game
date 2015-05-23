package;

import openfl.display.Sprite;
import openfl.Lib;

/**
 * ...
 * @author Rutger S
 */

class Main extends Sprite 
{

	var UI:Interface;
	public function new() 
	{
		super();
		UI = new Interface();
		addChild(UI);
		trace("test " + UI);
		// Assets:
		// openfl.Assets.getBitmapData("img/assetname.jpg");
	}
}
