/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 20:24
 * Mail: badprogrammist@gmail.com
 */
package framework.slide.managers
{
    import framework.slide.*;
    import framework.component.Component;
    import framework.core.tree.ITree;

    import org.as3commons.collections.Map;

    public class ComponentManager
    {
        private var _components:Map;
        private var _tree:ITree;
        private var _slide:Slide;

        public function ComponentManager(slide:Slide)
        {
            _slide = slide;
            _components = new Map();
        }

        public function AddComponent(component:Component):void
        {
            _components.add(component.id,component);
            component.slide = _slide;
        }

        public function GetComponent(id:String):Component
        {
            return _components.itemFor(id);
        }

        public function set tree(value:ITree):void
        {
            _tree = value;
        }

        public function get tree():ITree
        {
            return _tree;
        }

    }
}
