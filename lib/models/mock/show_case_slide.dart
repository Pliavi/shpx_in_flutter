import 'package:flutter_shpx/models/show_case_slide.dart';

abstract class ShowCaseSlideMock {
  static const slides = [
    ShowCaseSlide(
      title: "Showcase Kitchen",
      content: """lorem ipsum dolor sit amet, consectetur adipiscing elit."""
          """A eleifend viverra nam libero tellus."""
          """Luctus ornare ac, dolor tempor pellentesque nec.""",
      image: "assets/images/kitchen.jpg",
    ),
    ShowCaseSlide(
      title: "Showcase Living Room",
      content: """A eleifend viverra nam libero tellus. """
          """Luctus ornare ac, dolor tempor pellentesque nec."""
          """lorem ipsum dolor sit amet, consectetur adipiscing elit.""",
      image: "assets/images/living-room.jpg",
    ),
  ];
}
