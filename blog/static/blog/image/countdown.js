function countdown(){
	this.start_time = "0:0:10";
	this.target_id = "#timer";
	this.name = "timer";
}

countdown.prototype.init  = function(){
	this.reset();
	setInterval(this.name + '.tick()', 1000);
}

countdown.prototype.reset = function(){
	time = this.start_time.split(":");
	this.hours = parseInt(time[0])
	this.minutes = parseInt(time[1]);
	this.seconds = parseInt(time[2]);
	this.update_target();
}

countdown.prototype.tick = function(){
	if (this.seconds == 0){
		if(this.minutes == 0){
			if(this.hours == 0){
				text("Sorry.The vehicle has already passed your area.");
				this.reset();
			}
			this.hours--;
			this.minutes = 59;
			this.seconds = 59;
		}
		if(this.minutes != 59)
		this.minutes--;
		this.seconds = 59;
	}
	else{
		this.seconds--;
	}
	this.update_target();
}

countdown.prototype.update_target = function(){
	seconds = this.seconds;
	minutes = this.minutes;
	hours = this.hours;
	if(seconds < 10) {seconds = "0" + seconds;}
	if(minutes < 10){ minutes = "0" + minutes;}
    if(hours < 10) {hours = "0" + hours;}
	$(this.target_id).val(hours + ":" + minutes + ":" + seconds);
}