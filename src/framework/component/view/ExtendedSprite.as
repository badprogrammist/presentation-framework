/**
 *
 * User: Ildar Gafarov
 * Date: 22.03.13
 * Time: 21:28
 * Mail: badprogrammist@gmail.com
 */
package framework.component.view
{
    import flash.display.Graphics;
    import flash.display.Sprite;

    public class ExtendedSprite extends Sprite
    {
        public function ExtendedSprite()
        {
            super();
        }

        override public function set width(value:Number):void
        {
            changeSize(value, this.height);
        }

        override public function set height(value:Number):void
        {
            changeSize(this.width,value);
        }

        private function changeSize(width:Number, height:Number):void
        {
            this.graphics.lineStyle(0,0x111111,0.1);
            this.graphics.drawRect(0,0,width,height);
            //this.graphics.clear();

        }



    }
}
