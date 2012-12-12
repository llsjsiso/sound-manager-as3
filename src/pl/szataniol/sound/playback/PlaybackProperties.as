package pl.szataniol.sound.playback {

	import flash.media.SoundTransform;

	/**
	 * @author Andrzej Korolczuk (http://blog.szataniol.pl)
	 */
	public class PlaybackProperties {

		private var _volume : Number;
		private var _startTime:Number;
		private var _panning:Number;
		private var _loops:int;

		private var _playbackMode : String;
		
		/**
		 * @param vars
		 *    volume:Number
		 *    startTime:Number
		 * @param playbackMode @see PlaybackModes
		 *  
		 */
		public function PlaybackProperties(vars:Object = null, playbackMode : String = "overlap") {
			
			if(!vars) {
				vars = {};
			}

			_playbackMode = playbackMode;
			_volume = vars.volume || 1;
			_startTime = vars.startTime || 0;
			_loops = vars.loops || 0;
			_panning = vars.panning || 0;
		}

		public function get volume() : Number {
			
			return _volume;
		}

		public function get playbackMode() : String {
			
			return _playbackMode;
		}

		public function get startTime() : Number {
			return _startTime;
		}

		public function get loops() : int {
			return _loops;
		}

		public function get soundTransform() : SoundTransform {
			
			return new SoundTransform(volume, _panning);
		}
	}
}
