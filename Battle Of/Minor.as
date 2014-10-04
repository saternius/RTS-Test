package {

	import flash.display.*;
	import flash.events.*;


	public class Minor extends MovieClip {
		var cargo:Number = 0;
		public var xDes:Number=0;
		public var yDes:Number=0;
		public var there:Boolean=false;
		public var Health:Number=112;
	    public var HealthPoints=1;
		public var speed=.8;
		var xDrift:Number=Math.random()*50-25;
		var yDrift:Number=Math.random()*50-25;
		var lift:Boolean=true;
		var gold:Boolean=false;
		var dir:Boolean=false;
		public function Minor() {

		}
		public function spot(guy:MovieClip,dist:Number):void {
			yDes=500+Math.random()*20;
			speed=1.1-(cargo*.004);
			this.hp.Bhar.width=Health;
		}
		public function collect(spot:MovieClip):void {
			speed=.8-(cargo*.002);
			if (spot.f.currentFrame==2) {
				gold=false;
			} else {
				gold=true;
			}
			if (cargo<100) {
				xDes=spot.x+xDrift;
				yDes=spot.y+yDrift;
			}
			if (there && cargo<100) {
				head.play();
				cargo+=.2;
			}
			if (cargo>=100 && lift) {
				lift=false;
				spot.removeOre();
				yDes=650;
				there=false;
			}
			if (y>570 && cargo>=100) {
				cargo=0;
				lift=true;
				there=false;
				if (!gold) {
					(this.parent as MovieClip).moneh+=100;
				} else {
					(this.parent as MovieClip).moneh+=250;
				}
			}
		}
	}
}