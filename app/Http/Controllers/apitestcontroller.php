<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

use Illuminate\Console\Scheduling\Schedule;
use Illuminate\Foundation\Console\Kernel as ConsoleKernel;
use Illuminate\Support\Facades\DB;

class apitestcontroller extends Controller
{
    public function index(){

    return Post::all();
    }
    
    public function store(){
        
        request()->validate([
            'title' => 'required',
            'content' => 'Required',
        ]);
        
        
            return Post::create([
                'title' => request('title'),
        
                'content' => request('content'),
            ]);
        
        }
        
public function update(Post $post){

    request()->validate([
        'title' => 'required',
        'content' => 'Required',
    ]);


    $success = $post->update([
        'title' => request('title'),

        'content' => request('content'),

    ]);

    return [
        'success' => $success
    ];
    }
    
    public function delete(Post $post){

        $success = $post->delete();

    return [
        'success' => $success
    ];

        }

    public function updateevery10(){

         $x=0;
        $txt = "post ";
        $txt1 = "content ";
        while(1){
            return Post::create([
                 'title' => $txt.$x,
                'content' => $txt1.$x,
            ]);
            $x+=1;
            sleep(600);
            }   
        }
}