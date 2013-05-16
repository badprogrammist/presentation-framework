package framework.core.tree
{
    import org.as3commons.collections.LinkedSet;
    import org.as3commons.collections.Set;
    import org.as3commons.collections.framework.ISet;
    import org.as3commons.collections.framework.ISetIterator;

    /**
	 * ...
	 * @author Ildar Gafarov badprogrammist@gmail.com 
	 */
	public class Iterator implements IIterator
	{
		private var _tree:ITree;
        private var _currentId:String;
        private var _currentParentId:String;

        private var _stack:LinkedSet;
        private var _visits:Set;

		public function Iterator(tree:ITree)
		{
            _tree = tree;
            _stack = new LinkedSet();
            _visits = new Set();
            addInStack(_tree.GetRoot());
            _currentParentId = _tree.GetRoot();
        }

        public function HasNext():Boolean
        {
            var isNext:Boolean = _stack.size != 0;
            if (isNext ==false)
            {
                _visits.clear();
            }
            return isNext;
        }

        public function Next():void
        {
            var first:String = _stack.first;
            _currentId = first;
            _currentParentId = _tree.GetParent(first);
            if (isVisit(first) == false)
            {
                markAsVisited(first);
                var childs:ISet = _tree.GetChilds(first);
                var i:ISetIterator = childs.iterator() as ISetIterator;
                while(i.hasNext())
                {
                    var next:String = i.next();
                    _stack.addLast(next);
                }
            }
            _stack.removeFirst();
        }

        public function GetCurrentId():String
        {
            return _currentId;
        }

        public function GetCurrentParentId():String
        {
            return _currentParentId;
        }


        private function addInStack(id:String):void
        {
            _stack.addLast(id);
        }

        private function markAsVisited(id:String):void
        {
            _visits.add(id);
        }

        private function isVisit(id:String):Boolean
        {
            return _visits.has(id);
        }



    }


}