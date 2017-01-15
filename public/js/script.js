function playPause(id) {
	var video = document.getElementById(id);
	if (video.paused) {
		video.play();
	}
	else video.pause();
}