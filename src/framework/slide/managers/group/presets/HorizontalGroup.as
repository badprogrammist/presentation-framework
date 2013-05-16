/**
 *
 * User: Ildar Gafarov
 * Date: 06.04.13
 * Time: 11:24
 * Mail: badprogrammist@gmail.com
 */
package framework.slide.managers.group.presets
{
    import framework.core.IPrototype;

    public class HorizontalGroup extends Group
    {
        public function HorizontalGroup(interval:Number, horizontalAlign:String = "center", verticalAlign:String = "center")
        {
            super (interval, horizontalAlign, verticalAlign);
        }

        override protected function alignHorizontaly():void
        {
            if (horizontalAlign == "center")
            {
                adjust((this.parentDislayObject.width / 2) - (lengthAllContainers() / 2));
            }
            if (horizontalAlign == "left")
            {
                adjust(0);
            }
            if (horizontalAlign == "right")
            {
                adjust(this.parentDislayObject.width - lengthAllContainers());
            }
        }

        override protected function alignVerticaly():void
        {
            for (var i:uint = 0; i < this.childsDisplayObjects.length; i++ )
            {
                if (verticalAlign == "center")
                {
                    if (this.parentDislayObject.height != 0)
                    {
                        this.childsDisplayObjects[i].y = (this.parentDislayObject.height / 2) - (this.childsDisplayObjects[i].height / 2);
                    }
                }
                if (verticalAlign == "top")
                {
                    this.childsDisplayObjects[i].y = 0;
                }
                if (verticalAlign == "bottom")
                {
                    this.childsDisplayObjects[i].y = this.parentDislayObject.height - this.childsDisplayObjects[i].height;
                }
            }
        }

        private function adjust(beginPosition:int):void
        {
            for (var i:uint = 0; i < this.childsDisplayObjects.length; i++ )
            {
                this.childsDisplayObjects[i].x = beginPosition;
                beginPosition += this.childsDisplayObjects[i].width + interval;
            }
        }

        private function lengthAllContainers():int
        {
            var ret:int = 0;
            for (var i:uint = 0; i < this.childsDisplayObjects.length; i++)
            {
                ret += this.childsDisplayObjects[i].width + interval;
            }
            ret -= interval;
            return ret;
        }

        override public function Clone():IPrototype
        {
            var ret:HorizontalGroup = new HorizontalGroup(interval, horizontalAlign, verticalAlign);
            return ret;
        }

    }
}
