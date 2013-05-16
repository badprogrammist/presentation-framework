package framework.core.tree
{
    import org.as3commons.collections.Set;
    import org.as3commons.collections.framework.ISet;

    /**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com 
	 */
	public class Node implements INode
	{
        private var _id:String;
        private var _parentId:String;
        private var _childs:Set;

		public function Node(parentId:String,id:String)
		{
            _id = id;
            _parentId = parentId;
            _childs = new Set();
		}

        public function AddChild(childId:String):void
        {
            _childs.add(childId);
        }
        public function GetChilds():ISet
        {
            return _childs;
        }

        public function GetParent():String
        {
            return _parentId;
        }

        public function RemoveChild(childId:String):void
        {
            _childs.remove(childId);
        }

        public function GetId():String
        {
            return _id;
        }
    }



}