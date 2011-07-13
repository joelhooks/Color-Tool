package com.colorpicker.sections.palletview.events {
	import flash.events.Event;

	/**
	 * @author mikesven
	 */
	public class PalletChipEvent extends Event {
		
		public var chipID:int;
		
		public static const REMOVE_CHIP:String = "REMOVE_CHIP";
		public static const REPOSTION_CHIP:String = "REPOSITION_CHIP";
		
		public function PalletChipEvent(type : String, theID:int, bubbles : Boolean = false, cancelable : Boolean = false) {
			chipID = theID;
			super(type, bubbles, cancelable);
		}
			
		override public function clone() : Event {
			return new PalletChipEvent(type, chipID, bubbles, cancelable);
		}
		
	}
}
