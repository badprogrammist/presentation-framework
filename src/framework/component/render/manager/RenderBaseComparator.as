/**
 *
 * User: Ildar Gafarov
 * Date: 28.03.13
 * Time: 22:17
 * Mail: badprogrammist@gmail.com
 */
package framework.component.render.manager
{
    import framework.component.render.base.IRenderBase;

    import org.as3commons.collections.framework.IComparator;

    public class RenderBaseComparator implements IComparator
    {
        public function RenderBaseComparator()
        {
        }

        public function compare(item1:*, item2:*):int
        {
            var result:int = 0;
            if (item1 is IRenderBase && item2 is IRenderBase)
            {
                var n1 : int = (item1 as IRenderBase).GetRelatesLength();
                var n2 : int = (item2 as IRenderBase).GetRelatesLength();

                if (n1 < n2) result = -1;
                else if (n1 > n2) result = 1;
                else result = 0;
            }
            return result;

        }
    }
}
