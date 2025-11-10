// Select all the elements in the HTML page

function initme(myid){
console.log(myid);
// and assign them to a variable
let now_playing = document.querySelector(".now-playing"+myid);
let track_art = document.querySelector(".track-art"+myid);
let track_id = document.querySelector(".track-id"+myid);
let track_name = document.querySelector(".track-name"+myid);
let track_artist = document.querySelector(".track-artist"+myid);
 
let playpause_btn = document.querySelector(".playpause-track"+myid);
let next_btn = document.querySelector(".next-track"+myid);
let prev_btn = document.querySelector(".prev-track"+myid);
 
let seek_slider = document.querySelector(".seek_slider"+myid);
let volume_slider = document.querySelector(".volume_slider"+myid);
let curr_time = document.querySelector(".current-time"+myid);
let myhash;
try{
myhash = JSON.parse(document.querySelector(".lyrichash"+myid).innerHTML);
}
catch(e){
myhash={};
}

let total_duration = document.querySelector(".total-duration"+myid);
// Specify globally used values
let track_index = 0;
let isPlaying = false;
let updateTimer;
 
// Create the audio element for the player
let curr_track = document.createElement('audio'); 
let mycurrtrack = document.querySelector('.mycurrtrack'+myid); 
// Define the list of tracks that have to be played
let track_list = JSON.parse(document.querySelector(".track_list"+myid).innerHTML);



function loadTrack(track_index) {
  // Clear the previous seek timer
  clearInterval(updateTimer);
  resetValues();
 
  // Load a new track
  console.log(track_list.length, track_index);
  curr_track.src = track_list[track_index].path;
  mycurrtrack.innerHTML=track_list[track_index].path; 
// Define the list of tracks that have to be played
  curr_track.load();
 
  // Update details of the track
  track_art.style.backgroundImage =
     "url(" + track_list[track_index].image + ")";
  track_id.textContent = track_list[track_index].id;
  track_name.textContent = track_list[track_index].name;
  track_artist.textContent = track_list[track_index].artist;
  now_playing.textContent =
     "PLAYING " + (track_index + 1) + " OF " + track_list.length;
 
  // Set an interval of 1000 milliseconds
  // for updating the seek slider
  updateTimer = setInterval(seekUpdate, 100);
 
  // Move to the next track if the current finishes playing
  // using the 'ended' event
  curr_track.addEventListener("ended", nextTrack);
  
  curr_track.addEventListener("error", nextTrackError);
 
  // Apply a random background color
  //random_bg_color();
}
 
function random_bg_color() {
  // Get a random number between 64 to 256
  // (for getting lighter colors)
  let red = Math.floor(Math.random() * 256) + 64;
  let green = Math.floor(Math.random() * 256) + 64;
  let blue = Math.floor(Math.random() * 256) + 64;
 
  // Construct a color with the given values
  //let bgColor = "rgb(" + red + ", " + green + ", " + blue + ")";
 
  // Set the background to the new color
  //document.body.style.background = bgColor;
  //document.body.style.background = "black";
}
 
// Function to reset all values to their default
function resetValues() {
  curr_time.textContent = "00:00";
  total_duration.textContent = "00:00";
  seek_slider.value = 0;
}




 
function playTrack() {
  // Play the loaded track
  curr_track.play();
  isPlaying = true;
  playpause_btn.innerHTML = '&#x23f8;';


 
  // Replace icon with the pause icon

}
 
function pauseTrack() {
  // Pause the loaded track
  curr_track.pause();
  isPlaying = false;
 
  // Replace icon with the play icon
  playpause_btn.innerHTML = '&#x25B6;';

}
 
function playpauseTrack() {
  // Switch between playing and pausing
  // depending on the current state
  if (!isPlaying) playTrack();
  else pauseTrack();
}
playpause_btn.addEventListener("click", playpauseTrack); 
function nextTrackError(e,err) {
  console.log(JSON.stringify(e)) // Go back to the first track if the
  console.log((e,err)) // Go back to the first track if the
  if (typeof JSON.parse(JSON.stringify(e))["isTrusted"] !== "undefined"){
  // current one is the last in the track list
	  track_list.splice(track_index, 1);

	 if (window.next){
  if (track_index >= track_list.length){
    track_index =+ 1;
  }
	 }else{
  if (track_index === 0){
    track_index = track_list.length;
  }else{
    track_index -= 1;
  }
	 }
 
  // Load and play the new track
  loadTrack(track_index);
  playTrack();
  }
}
function nextTrack() {
  // Go back to the first track if the
  // current one is the last in the track list
	window.next=true;
  if (track_index < track_list.length - 1)
    track_index += 1;
  else track_index = 0;
 
  // Load and play the new track
  loadTrack(track_index);
  playTrack();
}
next_btn.addEventListener("click", nextTrack); 
 
function idontlike() {
$.ajax({url:"/songs/"+track_id.innerHTML+"/idontlike"});
}
function prevTrack() {
  // Go back to the last track if the
  // current one is the first in the track list
	window.next=false;
  if (track_index > 0)
    track_index -= 1;
  else track_index = track_list.length - 1;
   
  // Load and play the new track
  loadTrack(track_index);
  playTrack();
}
prev_btn.addEventListener("click", prevTrack); 



function seekTo() {
  // Calculate the seek position by the
  // percentage of the seek slider
  // and get the relative duration to the track
  seekto = curr_track.duration * (seek_slider.value / 100);
 
  // Set the current track position to the calculated seek position
  curr_track.currentTime = seekto;
}
 seek_slider.addEventListener("change", seekTo); 
 
function setVolume() {
  // Set the volume according to the
  // percentage of the volume slider set
  curr_track.volume = volume_slider.value / 100;
}
 volume_slider.addEventListener("change", setVolume); 
 
function seekUpdate() {
  let seekPosition = 0;
 
  // Check if the current track duration is a legible number
  if (!isNaN(curr_track.duration)) {
    seekPosition = curr_track.currentTime * (100 / curr_track.duration);
    seek_slider.value = seekPosition;
 
    // Calculate the time left and the total duration
    let currentMinutes = Math.floor(curr_track.currentTime / 60);
    let currentSeconds = Math.floor(curr_track.currentTime - currentMinutes * 60);
    let currentmilliSeconds = Math.floor((curr_track.currentTime - currentMinutes * 60 - currentSeconds)*10);
    let durationMinutes = Math.floor(curr_track.duration / 60);
    let durationSeconds = Math.floor(curr_track.duration - durationMinutes * 60);
 
    // Add a zero to the single digit time values
    if (currentSeconds < 10) { currentSeconds = "0" + currentSeconds; }
    if (durationSeconds < 10) { durationSeconds = "0" + durationSeconds; }
    if (currentMinutes < 10) { currentMinutes = "0" + currentMinutes; }
    if (durationMinutes < 10) { durationMinutes = "0" + durationMinutes; }
 
    // Display the updated duration
    curr_time.textContent = currentMinutes + ":" + currentSeconds;

    document.querySelector('.curr_time_m'+myid).textContent = currentMinutes + ":" + currentSeconds+"."+currentmilliSeconds;
    total_duration.textContent = durationMinutes + ":" + durationSeconds;
    

  }
}


loadTrack(track_index);
return false;
};


$(function(){
// Load the first track in the tracklist
$("[data-music-release-id]").each(function(){
var myid=String($(this)[0].dataset.musicReleaseId);
try{
initme(myid);
}
catch(e){
console.log("error");
}
});

});
