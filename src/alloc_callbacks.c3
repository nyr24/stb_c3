module stb;

fn void* c3_talloc(usz size) @export("c3_talloc")
{
	return mem::tmalloc(size);
}

fn void* c3_trealloc(void* old_ptr, usz new_size) @export("c3_trealloc")
{
	return mem::trealloc(old_ptr, new_size);
}

fn void c3_tfree(void* ptr) @export("c3_tfree")
{
	return allocator::free(tmem, ptr);
}
