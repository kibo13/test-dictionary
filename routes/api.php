<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

use App\Http\Controllers\Api\WordController;

Route::post('words', [WordController::class, 'index']);
