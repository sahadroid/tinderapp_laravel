<?php

namespace App\Console\Commands;

use App\Models\People;
use Illuminate\Console\Command;
use Illuminate\Support\Facades\Mail;

class CheckLikesAndSendEmail extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'likes:check';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Check if a post has more than 50 likes and send email to admin';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $peoples = People::has('likes', '>=', 50)->get();

        foreach ($peoples as $people) {
            Mail::raw('Post ID: ' . $people->id . ' has more than 50 likes', 
            function ($message) {
                $message->to('sahat.2101@gmail.com')->subject('People Liked More than 50 Times');
            });
        }        
    }
}
