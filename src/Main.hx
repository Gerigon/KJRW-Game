package;

import openfl.display.Sprite;
import openfl.Lib;
import src.RoomLoader;

import src.RoomItem;
import src.Inventory;
import src.InventoryItem;

/**
 * ...
 * @author Erik de Vries
 */
 
class Main extends Sprite 
{
	public static var inventory:Inventory = new Inventory();
	private var roomLoader:RoomLoader = new RoomLoader();
	
	public function new() 
	{
		super();
		
		addChild(roomLoader);
		
		//var coal:RoomItem = new RoomItem();
		inventory = new Inventory();
		
		//addChild(coal);
		addChild(inventory);
		
		
		//inventory.AddItem(coal.iItem);
	}
}
