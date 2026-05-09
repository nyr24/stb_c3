module stb_test @test;
import std::io;
import stb;
import env;

fn void test_simple_load()
{
	ZString tex_name = "resources/texture.jpg";
	int x;
	int y;
	int ch;
	char* data = stb::load(tex_name, &x, &y, &ch, 4);
	ZString failure_reason = (ZString)stb::failure_reason();
	assert(data, "Error loading texture from path: %s, reason: %s", tex_name, failure_reason);
}

module env;
const DEFAULT_STB_ALLOC = true;
