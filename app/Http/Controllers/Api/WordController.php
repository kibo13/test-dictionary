<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Word;
use Illuminate\Http\Request;

class WordController extends Controller
{
  public function index(Request $request)
  {
    $inputs = explode(' ', $request->text);
    $type = $request->type;
    $lang = $request->lang;
    $translated_words = [];
    $untranslated_words = [];
    $glossary = Word::where('lang', $lang)->get();

    foreach ($inputs as $input) {
      $keyword = $glossary->where('word', $input)->first();

      if (is_null($keyword) || $keyword == '') {
        $untranslated_words[$input] = $input;
      } else {
        $translated_words[$input] = $keyword->translation;
      }
    }

    if ($type == 1) {
      return $translated_words;
    }

    if ($type == 2) {
      return $untranslated_words;
    }
  }
}
