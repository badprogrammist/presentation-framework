package framework.core.tree
{
    import org.as3commons.collections.Map;
    import org.as3commons.collections.framework.IMap;
    import org.as3commons.collections.framework.ISet;

    /**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com 
	 */
	public class Tree implements ITree
	{
        private var _root:INode;
        private var _nodes:IMap;

		public function Tree() 
		{
            _nodes = new Map();
		}

        public function GetRoot():String
        {
            return _root.GetId();
        }

        public function AddNode(parentId:String, id:String):void
        {
            if (_nodes.size == 0)
            {
                createRoot(id);
            }
            else
            {
                if (_nodes.hasKey(parentId))
                {
                    var parent:INode = _nodes.itemFor(parentId) as INode;
                    var node:INode = new Node(parentId,id);
                    parent.AddChild(id);
                    _nodes.add(id, node);
                }
            }
        }

        private function createRoot(id:String):void
        {
            var node:INode = new Node("NONE",id);
            _root = node;
            _nodes.add(id, node);
        }

        public function GetIterator():IIterator
        {
            return new Iterator(this);
        }

        public function GetParent(childId:String):String
        {
            var child:INode = _nodes.itemFor(childId);
            return child.GetParent();
        }

        public function GetChilds(parentId:String):ISet
        {
            var parent:INode = _nodes.itemFor(parentId);
            return parent.GetChilds();
        }

        public function GetSize():uint
        {
            return _nodes.size;
        }

    }

}