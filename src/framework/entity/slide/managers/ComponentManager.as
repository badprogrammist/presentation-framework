/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 20:24
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.slide.managers
{
    import framework.entity.slide.*;
    import framework.entity.component.Component;
    import framework.core.tree.ITree;
    import framework.repository.EntityRepository;

    public class ComponentManager
    {
        private var _componentRepository = new EntityRepository();
        private var _tree:ITree;
        private var _slide:Slide;

        public function ComponentManager(slide:Slide)
        {
            _slide = slide;
        }

        public function AddComponent(component:Component):void
        {
            _componentRepository.AddEntity(component);
            component.slide = _slide;
        }

        public function GetComponent(id:String):Component
        {
            return _componentRepository.GetEntity(id) as Component;
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
