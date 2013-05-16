/**
 *
 * User: Ildar Gafarov
 * Date: 24.03.13
 * Time: 15:05
 * Mail: badprogrammist@gmail.com
 */
package framework.core.executors
{
    import framework.entity.component.Component;
    import framework.core.communication.Message;
    import framework.core.communication.listener.IListener;

    public class PlayAnimation implements IListener
    {
        public function PlayAnimation()
        {
        }

        public function Listen(message:Message):void
        {
            var component:Component = message.component;
            if (component.tween == null)
            {
                component.tween = component.animation.Animate(component.mediator.displayObject);
            }
            component.tween.play();
        }
    }
}
