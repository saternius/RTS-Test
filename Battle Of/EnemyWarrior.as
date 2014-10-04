package {

	import flash.display.*;
	import flash.events.*;

	public class EnemyWarrior extends MovieClip {
     var cargo:Number = 0;
	 public var xDes:Number=0;
	 public var Health:Number=100;
	 public var Strength:Number=1;
	 public var yDes:Number=0;
	 public var HealthPoints=2;
	 public var speed=.4;
	 public var there:Boolean=false;
	 public var charge:Boolean=false;
		public function EnemyWarrior() {

		}
		public function spot(guy:MovieClip,dist:Number):void{
			xDes=guy.x;
			yDes=guy.y;
			speed=1.4;
			this.hp.Bhar.width=Health;
			this.hp.visible=true;
			if(dist<20){
				guy.Health-=(Strength)/guy.HealthPoints;
			}
		}
		
		public function collect(spot:MovieClip):void{
			
		}
		public function chargy():void{
			speed=1.8;
		}
	}
}