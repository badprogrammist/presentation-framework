/**
 * User: Ildar Gafarov
 * Date: 16.05.13
 * Time: 21:10
 * Mail: badprogrammist@gmail.com
 */
package framework.entity
{
    public class EntityBase
    {
        private var _id:String;

        public function EntityBase(id:String)
        {
            _id = id;
        }

        public function get id():String
        {
            return _id;
        }
    }
}
