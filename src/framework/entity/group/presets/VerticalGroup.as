/**
 *
 * User: Ildar Gafarov
 * Date: 06.04.13
 * Time: 11:24
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.group.presets
{
    import framework.core.IPrototype;
    import framework.entity.group.Group;

    public class VerticalGroup extends Group
    {

        public function VerticalGroup(id:String, interval:Number, horizontalAlign:String = "center", verticalAlign:String = "center")
        {
            super (id, interval, horizontalAlign, verticalAlign);
        }

        override protected function alignHorizontaly():void
        {
            for (var i:uint = 0; i < this.childsDisplayObjects.length; i++ )
            {
                if (horizontalAlign == "center")
                {
                    if (this.parentDislayObject.height != 0)
                    {
                        this.childsDisplayObjects[i].x = (this.parentDislayObject.width / 2) - (this.childsDisplayObjects[i].width / 2);
                    }
                }
                if (horizontalAlign == "left")
                {
                    this.childsDisplayObjects[i].x = 0;
                }
                if (horizontalAlign == "right")
                {
                    if (this.parentDislayObject.width != 0)
                    {
                        this.childsDisplayObjects[i].x = this.parentDislayObject.width - this.childsDisplayObjects[i].width;
                    }
                }
            }
        }

        override protected function alignVerticaly():void
        {
            if (verticalAlign == "center")
            {
                adjust((this.parentDislayObject.height / 2) - (lengthAllContainers() / 2));
            }
            if (verticalAlign == "top")
            {
                adjust(0);
            }
            if (verticalAlign == "bottom")
            {
                adjust(this.parentDislayObject.height - lengthAllContainers());
            }
        }

        private function adjust(beginPosition:int):void
        {
            for (var i:uint = 0; i < this.childsDisplayObjects.length; i++ )
            {
                this.childsDisplayObjects[i].y = beginPosition;
                beginPosition += this.childsDisplayObjects[i].height + interval;
            }
        }

        private function lengthAllContainers():int
        {
            var ret:int = 0;
            for (var i:uint = 0; i < this.childsDisplayObjects.length; i++)
            {
                ret += this.childsDisplayObjects[i].height + interval;
            }
            ret -= interval;
            return ret
        }

        override public function Clone():IPrototype
        {
            var ret:VerticalGroup = new VerticalGroup(id, interval, horizontalAlign, verticalAlign);
            return ret;
        }




    }
}
