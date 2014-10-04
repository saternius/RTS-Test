package {

	import flash.display.*;
	import flash.events.*;

	public class King extends MovieClip {
		var cargo:Number = 0;
		public var xDes:Number=0;
		public var yDes:Number=0;
		public var Health:Number=100;
		public var Strength:Number=3;
	    public var HealthPoints=5;
		public var speed=.4;
		public var there:Boolean=false;
		public function King() {
			yDes=500;
			speed=1;
		}
		public function spot(guy:MovieClip,dist:Number):void {
			speed=1.4;
			this.hp.Bhar.width=Health;
			this.hp.visible=true;
			if(dist<30){
				guy.Health-=(Strength)/guy.HealthPoints;
			}
		}
		public function collect(spot:MovieClip, dist:Number):void {

		}
	}
}