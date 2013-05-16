/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 14:16
 * Mail: badprogrammist@gmail.com
 */
package framework.core.communication.switcher
{
    import framework.core.communication.listener.IListener;

    public interface ISwitcher extends IListener
    {
        function AddSwitch(source:IListener,bin:IListener,switchSourceMessageClass:Class):void;
        function SetStart(listener:IListener):void;
    }
}
