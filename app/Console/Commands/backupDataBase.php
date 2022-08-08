<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Carbon\Carbon;

class backupDataBase extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'backup:database';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'backup database';

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
        $fileName = env('DB_DATABASE')."_". env('DB_HOST')."_".strtotime(now()).".sql";
        $command = "mysqldump -u " . env('DB_USERNAME') ." --password=" . env('DB_PASSWORD') ." ". env('DB_DATABASE') ." > ".$fileName;
        exec($command);
    }
}
