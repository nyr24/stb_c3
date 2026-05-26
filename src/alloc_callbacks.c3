module stb @if(!std::core::env::CUSTOM_STB_CALLBACKS);

fn void* stb_alloc_c3(sz size) @export("stb_alloc_c3")
{
	return mem::tmalloc(size);
}

fn void* stb_realloc_c3(void* old_ptr, sz new_size) @export("stb_realloc_c3")
{
	return mem::trealloc(old_ptr, new_size);
}

fn void stb_free_c3(void* ptr) @export("stb_free_c3")
{
	return alloc::free(tmem, ptr);
}
