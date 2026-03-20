import std::io;
import stb;

fn void test_simple_load() @test
{
	ZString tex_name = "resources/texture.jpg";
	CInt x;
	CInt y;
	CInt ch;
	char* data = stb::load((CChar*)tex_name, &x, &y, &ch, 4);
	ZString failure_reason = (ZString)stb::failure_reason();
	assert(data, "Error loading texture from path: %s, reason: %s", tex_name, failure_reason);
}
