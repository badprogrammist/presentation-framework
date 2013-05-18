/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 21:52
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component.render.base
{
    import framework.core.IPrototype;
    import framework.entity.component.Component;

    import org.as3commons.collections.Set;

    public class RenderBase implements IRenderBase
    {
        private var _relates:Set;

        public function RenderBase()
        {
        }

        public function Process(component:Component):void
        {
        }

        public function RegisterRelate(renderClass:Class):void
        {
            if (_relates == null) _relates = new Set();
            _relates.add(renderClass);
        }

        public function GetRelatesLength():int
        {
            var result:int = 0;
            if (_relates) result = _relates.size;
            return result;
        }

        public function Clone():IPrototype
        {
            return new RenderBase();
        }
    }
}
