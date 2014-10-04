package {

	import flash.display.*;
	import flash.events.*;

	public class Rock extends MovieClip {
     var ores:Number=1;
		public function Rock() {

		}
		public function removeOre():void{
			if(ores==1){
				this.removeChild(a);
			}
			if(ores==2){
				this.removeChild(b);
			}
			if(ores==3){
				this.removeChild(c);
			}
			if(ores==4){
				this.removeChild(d);
			}
			if(ores==5){
				this.removeChild(e);
			}
			if(ores==6){
				(this.parent as MovieClip).done(this);
			}
			ores++;
		}
	}
}