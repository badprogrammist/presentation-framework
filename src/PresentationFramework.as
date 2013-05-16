package
{
    import flash.filters.BitmapFilter;
    import flash.filters.DropShadowFilter;
    import flash.filters.GlowFilter;

    import framework.component.animation.preset.Alpha;
    import framework.component.animation.preset.LeftRight;
    import framework.component.Component;
    import framework.component.animation.preset.Timeline;
    import framework.component.render.base.presets.filter.Filter;
    import framework.component.render.manager.IRenderManager;
    import framework.component.render.manager.RenderManager;
    import framework.component.render.base.presets.border.IBorder;
    import framework.component.render.base.presets.border.SolidBorder;
    import framework.component.render.base.presets.fill.IFill;
    import framework.component.render.base.presets.fill.SolidFill;
    import framework.component.render.base.presets.position.IPosition;
    import framework.component.render.base.presets.position.Position;
    import framework.component.render.base.presets.shape.IShape;
    import framework.component.render.base.presets.shape.RectangleShape;
    import framework.component.render.base.presets.size.ISize;
    import framework.component.render.base.presets.size.Size;
    import framework.component.view.ExtendedSprite;
    import framework.component.view.IMediator;
    import framework.component.view.Mediator;
    import framework.core.communication.listener.IListener;
    import framework.core.communication.publisher.Publisher;
    import framework.core.executors.PlayAnimation;
    import framework.core.executors.ReverseAnimation;

    import flash.display.Sprite;

    import framework.core.messages.view.MouseOutMessage;

    import framework.core.messages.view.MouseOverMessage;
    import framework.core.tree.Tree;
    import framework.slide.Slide;
    import framework.slide.managers.group.presets.VerticalGroup;

    public class PresentationFramework extends Sprite
    {
        public function PresentationFramework()
        {
            super();

            var border:IBorder = new SolidBorder(1,0x111111);
            var fill:IFill = new SolidFill(0x674523,0.3);
            var pos:IPosition = new Position(0,0);
            var shape:IShape = new RectangleShape();
            var size:ISize = new Size(20,50,true,false);
            var sfilter:BitmapFilter = new DropShadowFilter(0,0,0x111111,1,10,10,1,3);
            var gfilter:BitmapFilter = new GlowFilter(0xFF0000,0.3);
            var shadowFilter:Filter = new Filter(sfilter);
            var glowFilter:Filter = new Filter(gfilter);
            var renderManager:IRenderManager = new RenderManager();
            renderManager.AddRenderBase(border);
            renderManager.AddRenderBase(fill);
            renderManager.AddRenderBase(pos);
            renderManager.AddRenderBase(shape);
            renderManager.AddRenderBase(size);
            renderManager.AddRenderBase(shadowFilter);
            renderManager.AddRenderBase(glowFilter);

            var renderManagerClone:RenderManager = renderManager.Clone() as RenderManager;

            var pa:IListener = new PlayAnimation();
            var ra:IListener = new ReverseAnimation();

            var timeline:Timeline = new Timeline("tl");
            timeline.AddAnimation(new LeftRight("lr"));
            timeline.AddAnimation(new Alpha("a"));

            var sprite1:ExtendedSprite = new ExtendedSprite();
            sprite1.alpha = 0;
            var mediator1:IMediator = new Mediator(sprite1);
            var publisher:Publisher = new Publisher();
            publisher.Subscribe(MouseOverMessage,pa);
            publisher.Subscribe(MouseOutMessage,ra);
            var c1:Component = new Component("c1",mediator1,renderManager, publisher, timeline);

            var sprite2:ExtendedSprite = new ExtendedSprite();
            var mediator2:IMediator = new Mediator(sprite2);
            mediator2.RegisterMessage(MouseOverMessage);
            mediator2.RegisterMessage(MouseOutMessage);
            mediator2.RegisterListener(c1);
            var c2:Component = new Component("c2",mediator2,renderManagerClone,null,null);

            var rootSprite:ExtendedSprite = new ExtendedSprite();
            rootSprite.width = 300;
            rootSprite.height = 300;
            addChild(rootSprite);
            var rootMediator:Mediator = new Mediator(rootSprite);
            var root:Component = new Component("ROOT",rootMediator,null,null,null);

            var tree:Tree = new Tree();
            tree.AddNode("","ROOT");
            tree.AddNode("ROOT","c2");
            tree.AddNode("ROOT","c1");

            var slide:Slide = new Slide();
            slide.componentManager.AddComponent(c1);
            slide.componentManager.AddComponent(c2);
            slide.componentManager.AddComponent(root);
            slide.componentManager.tree = tree;

            slide.groupManager.AddGroup("ROOT",new VerticalGroup(5));

            slide.Draw();
        }
    }
}
