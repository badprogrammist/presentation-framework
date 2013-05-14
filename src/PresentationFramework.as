package
{

    import flash.display.Sprite;
    import flash.text.TextField;

    public class PresentationFramework extends Sprite
    {
        public function PresentationFramework()
        {
            var textField:TextField = new TextField();
            textField.text = "Hello, World";
            addChild(textField);  trace("fr");
        }
    }
}
