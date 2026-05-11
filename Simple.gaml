/**
* Name: Simple
* Based on the internal empty template. 
* Author: ADMIN
* Tags: 
*/


model Simple

global {
	init {
		create my_agent number: 50;
	}
}

species my_agent skills: [moving] {
	float speed <- 2.0;
	
	reflex move {
		do wander;
		
	}
	
	aspect default {
		draw circle(2) color: #red;
	}
}

experiment MySimulation type: gui {
	output {
		display MyDisplay {
			species my_agent;
		}
	}
}