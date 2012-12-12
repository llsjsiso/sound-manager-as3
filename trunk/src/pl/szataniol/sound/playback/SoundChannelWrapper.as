package pl.szataniol.sound.playback {

	import flash.media.SoundChannel;


	public class SoundChannelWrapper {

		private var _soundChannel : SoundChannel;
		private var _playbackProperies : PlaybackProperties;

		public function SoundChannelWrapper(soundChannel : SoundChannel, playbackProperies : PlaybackProperties) {

			_playbackProperies = playbackProperies;
			_soundChannel = soundChannel;
		}

		public function get soundChannel() : SoundChannel {
			
			return _soundChannel;
		}

		public function get playbackProperies() : PlaybackProperties {
			
			return _playbackProperies;
		}
	}
}