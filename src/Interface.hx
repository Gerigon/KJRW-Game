package;

import openfl.display.Sprite;
import openfl.Lib;
import flash.text.TextField;
import flash.text.TextFormat;

/**
 * ...
 * @author Rutger S
 */
class Interface extends Sprite
{
	var myText:TextField = new TextField();
	var myFormat:TextFormat = new TextFormat();

	public function new() 
	{
		super();
		
		myFormat.color = 0x1F21BF;
		myText.defaultTextFormat = myFormat;
		myText.x = Lib.current.stage.stageWidth / 2 - myText.width/2;
		myText.y = Lib.current.stage.stageHeight * .8;
		myText.text = "Test Test Test Test Test Test Test Test Test ";
		addChild(myText);
	}
	
	public function DisplayText(text:String)
	{
		myText.text = text;
	}
	
}