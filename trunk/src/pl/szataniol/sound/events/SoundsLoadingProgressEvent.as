package pl.szataniol.sound.events {

	import flash.events.Event;

	/**
	 * @author Andrzej Korolczuk (http://blog.szataniol.pl)
	 */
	public class SoundsLoadingProgressEvent extends Event {
		
		public static const PROGRESS:String = "soundsLoadingProgress";
		public static const COMPLETE:String = "soundsLoadingComplete";
		
		public var progressPercent:Number;

		public function SoundsLoadingProgressEvent(type : String, bubbles : Boolean = false, cancelable : Boolean = false) {
			
			super(type, bubbles, cancelable);
		}
	}
}
