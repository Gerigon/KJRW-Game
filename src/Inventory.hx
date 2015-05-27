package ;
import openfl.display.Sprite;
import openfl.Lib;
/**
 * ...
 * @author Erik de Vries
 */
class Inventory extends Sprite
{
	public var Items:Array<InventoryItem>;
	
	public function new() 
	{
		super();
		Items = new Array<InventoryItem>();
	}
	
	public function AddItem(itemToAdd:InventoryItem)
	{
		Items.push(itemToAdd);
	}
	
	public function RemoveItem()
	{
		
	}
	
}