<?php

namespace App\Http\Controllers;

use App\Post;
use Illuminate\Http\Request;
use Carbon\Carbon;

class PostController extends Controller
{
  public function allPosts(){
    $posts = Post::orderBy('id', 'desc')->paginate(9);
    return view('blog.blog', compact('posts'));
  }

  public function showPost($slug) {
	$post = Post::where('slug', $slug)->firstOrFail();

	$post->created_at = new Carbon($post->created_at);

	return view('blog.single', compact('post'));
  }

  public function search(Request $request)
  {
    $posts = Post::search($request['search_item'])->paginate(9);
    $searchflag = true;

    return view('blog.blog', compact('posts', 'searchflag'));
  }
}
