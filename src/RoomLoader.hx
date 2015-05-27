package src;
import openfl.Lib;
import openfl.display.Sprite;

/**
 * ...
 * @author Erik de Vries
 */
class RoomLoader extends Sprite
{

	private var allItems:Array<Array<RoomItem>> = new Array<Array<RoomItem>>();
	private var xPositions:Array<Array<Float>> = new Array<Array<Float>>();
	private var yPositions:Array<Array<Float>> = new Array<Array<Float>>();
	private var currentItems:Array<RoomItem> = new Array<RoomItem>();
	
	public function new() 
	{
		super();
		CreateItems();
	}
	
	private function CreateItems()
	{
		allItems[0] = new Array<RoomItem>();
		xPositions[0] = new Array<Float>();
		yPositions[0] = new Array<Float>();
		
		allItems[0][0] = new RoomItem();
		//allItems[0][0].Init("img/Coal.png", Main.inventory);
		xPositions[0][0] = 200;
		yPositions[0][0] = 300;
	}
	
	public function LoadRoom(roomToLoad:Int):Void
	{
		for (i in currentItems) 
		{
			removeChild(i);
		}
		for (i in 0...allItems[roomToLoad].length)
		{
			var item:RoomItem = allItems[roomToLoad][i];
			item.x = xPositions[roomToLoad][i];
			item.y = yPositions[roomToLoad][i];
			addChild(item);
			currentItems.push(item);
		}
	}
	
}