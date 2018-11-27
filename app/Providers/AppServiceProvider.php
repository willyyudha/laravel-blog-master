<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        \App\Area::creating(function ($area){

            $prefix = $area->parent ? $area->parent->name . ' ' : '';

            $area->slug = str_slug($prefix . $area->name);

        });

        \App\Category::creating(function ($kategoris){

            $prefix = $kategoris->parent ? $kategoris->parent->name . ' ' : '';

            $kategoris->slug = str_slug($prefix . $kategoris->name);

        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
