package src;

import openfl.display.Bitmap;
import openfl.display.BitmapData;
import openfl.display.Sprite;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.events.KeyboardEvent;
import openfl.Assets;
import openfl.Lib;


/**
 * ...
 * @author Erik de Vries
 */
class RoomItem extends Sprite
{
	public var ImageBitmap: Bitmap;
	
	//change INT to ENUM, when you figure out how. dumbass.
	public var type:ItemType;
	public var iItem:InventoryItem;
	
	private var inventory:Inventory;
	
	public function new() 
	{
		super();
		Start();
	}
	
	private function Start()
	{
		type = ItemType.Coal;
		ImageBitmap = new Bitmap();
		iItem = new InventoryItem(type);
		
		addEventListener(MouseEvent.MOUSE_DOWN, Clicked);
		
		addChild(ImageBitmap);
	}
	
	public function Init(newImage:String, mainInventory:Inventory)
	{
		var Image:BitmapData = Assets.getBitmapData(newImage);
		ImageBitmap.bitmapData = Image;
		inventory = mainInventory;
	}
	
	private function Clicked(e:MouseEvent):Void
	{
		inventory.AddItem(iItem);
		parent.removeChild(this);
	}
}