/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 11:27
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.listener
{
    import framework.core.communication.*;
    public interface IListener
    {
        function Listen(message:Message):void;
    }
}
