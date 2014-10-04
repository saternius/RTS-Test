package {

	import flash.display.*;
	import flash.events.*;

	public class Recruit extends MovieClip {
		var cargo:Number = 0;
		var primeTarget:MovieClip;
		var desicion:Number=0;
		public var xDes:Number=0;
		public var yDes:Number=0;
		public var Health:Number=100;
		public var speed=2.8;
		public var HealthPoints=2;
		public var there:Boolean=false;
		public var Strength:Number=1;
		
		public function Recruit() {

		}
		public function spot(guy:MovieClip,dist:Number):void {
			desicion-=1;
			speed=1.4;
				this.hp.Bhar.width=Health;
				this.hp.visible=true;
			if (desicion<0) {
				desicion=30;
				primeTarget=guy;
			}
			if (primeTarget==guy) {
				xDes=guy.x;
				yDes=guy.y;
				if (dist<30) {
					guy.Health-=(Strength)/guy.HealthPoints;
				}
			}
		}
	}
}