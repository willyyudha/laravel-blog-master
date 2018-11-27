<?php

namespace App\Http\ViewComposer;

use Illuminate\View\View;

class AreaComposer
{

    private $area;


    public function compose(View $view)
    {

        if(!$this->area)
        {
            $this->area = \App\Area::where('slug' , session()->get('area' , config()->get('willytutorial.standar.area')))->first();
        }
            return $view->with('area' , $this->area);
    }



}
