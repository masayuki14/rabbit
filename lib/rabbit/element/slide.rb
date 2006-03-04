require 'rabbit/element/slide-element'
require 'rabbit/element/text-container-element'

module Rabbit
  module Element
    class Slide
      include SlideElement

      def initialize(title)
        super(title.text)
        add_element(title)
      end

      def headline
        @elements[0]
      end

      def body
        @elements[1]
      end
    end

    class HeadLine
      include TextContainerElement

      def text
        "= #{super}"
      end

      def to_html(generator)
        "<h1>#{super}</h1>"
      end
    end

    class Body
      include ContainerElement
    end
  end
end
