#include <gtkmm.h>

//////  Declaration and implementation of MyWindow, subclass of Gtk::Window
class MyWindow : public Gtk::Window
{
public:
  MyWindow();
};

MyWindow::MyWindow()
{
  set_title("Sweeper");
  set_default_size(200, 200);
}
//////  End of MyWindow

int main(int argc, char* argv[])
{
  auto app = Gtk::Application::create("com.daryllee.sweeper");

  return app->make_window_and_run<MyWindow>(argc, argv);
}
