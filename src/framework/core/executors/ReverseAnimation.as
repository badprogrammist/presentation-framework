/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 15:30
 * Mail: badprogrammist@gmail.com
 */
package framework.core.executors
{
    import framework.entity.component.Component;
    import framework.core.communication.Message;
    import framework.core.communication.listener.IListener;

    public class ReverseAnimation implements IListener
    {
        public function ReverseAnimation()
        {
        }

        public function Listen(message:Message):void
        {
            var component:Component = message.component;
            if (component.tween)
            {
                component.tween.reverse();
            }
        }
    }
}
