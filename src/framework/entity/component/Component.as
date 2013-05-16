/**
 *
 * User: Ildar Gafarov
 * Date: 23.03.13
 * Time: 17:04
 * Mail: badprogrammist@gmail.com
 */
package framework.entity.component
{
    import com.greensock.core.TweenCore;

    import framework.entity.EntityBase;

    import framework.entity.animation.IAnimation;
    import framework.entity.component.render.manager.IRenderManager;
    import framework.core.IIdentified;
    import framework.core.communication.Message;
    import framework.core.communication.listener.IListener;
    import framework.entity.component.view.IMediator;
    import framework.entity.slide.Slide;


    public class Component extends EntityBase implements IListener,IIdentified
    {
        private var _mediator:IMediator;
        private var _listener:IListener;
        private var _animation:IAnimation;
        private var _tween:TweenCore;
        private var _slide:Slide;

        private var _render:IRenderManager;

        public function Component(id:String, mediator:IMediator,render:IRenderManager,listener:IListener,animation:IAnimation)
        {
            super(id);
            _listener = listener;
            _mediator = mediator;
            _animation = animation;
            _mediator.RegisterListener(this);
            _render = render;
        }

        public function get animation():IAnimation
        {
            return _animation;
        }

        public function get renderManager():IRenderManager
        {
            return _render;
        }

        public function get mediator():IMediator
        {
            return _mediator;
        }

        public function Listen(message:Message):void
        {
            if (_listener)
            {
                var componentMessage:Message = message.Clone();
                componentMessage.component = this;
                _listener.Listen(componentMessage);
            }
        }

        public function get tween():TweenCore
        {
            return _tween;
        }

        public function set tween(value:TweenCore):void
        {
            _tween = value;
        }

        public function get slide():Slide
        {
            return _slide;
        }

        public function set slide(value:Slide):void
        {
            _slide = value;
        }
    }
}
