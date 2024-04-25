<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;

class SwaggerController extends Controller
{
    /**
     * Get the Swagger JSON file.
     *
     * @return \Illuminate\Http\Response
     */
    public function getJson()
    {
        $filePath = public_path('docs/api-docs.json');
        
        // Check if the file exists
        if (!File::exists($filePath)) {
            abort(404, 'The Swagger JSON file does not exist.');
        }

        // Read the file contents
        $json = File::get($filePath);

        // Return the JSON response
        return response()->json(json_decode($json));
    }
}
