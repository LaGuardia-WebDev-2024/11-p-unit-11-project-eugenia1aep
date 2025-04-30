// Arrays
var snowX = [100, 120, 160, 200];
var snowY = [50, 70, 40, 20];
var snowColors = ["white", "lightblue", "lavender", "cyan"]; 
// Draw one snowflake
var drawSnowflake = function(x, y, color){
    fill(color);
    text("*", x, y);
};

// Setup once
setup = function() {
    size(600, 450);
    textSize(40);
};

// Draw repeatedly
draw = function() {
    background(164, 212, 255);

// Draw falling snowflakes
for (var i = 0; i < snowX.length; i++) {
drawSnowflake(snowX[i], snowY[i], snowColors[i]);
snowY[i] += 1; // fall speed

// Reset to top 
if (snowY[i] > height) {
snowY[i] = 0;
        }
    }

// Ground rectangle
fill(255, 255, 255);
rect(-10, 300, 610, 150);
};