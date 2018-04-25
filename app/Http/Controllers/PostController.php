<?php

namespace App\Http\Controllers;

use TCG\Voyager\Models\Post;

class PostController extends Controller
{
  public function allPosts(){
    $posts = Post::orderBy('id', 'desc')->get();

    return view('blog.blog', compact('posts'));
  }

  public function showPost($slug) {
	$post = Post::where('slug', $slug)->firstOrFail();

	return view('blog.single', compact('post'));
  }
}
