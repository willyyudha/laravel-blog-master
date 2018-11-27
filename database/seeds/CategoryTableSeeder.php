<?php

use Illuminate\Database\Seeder;

class CategoryTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {

             $kategori = [


                  [
                       'name' => 'Komunitas' ,
                       'children' => [
                            ['name' => 'Programming'],
                            ['name' => 'Seni'],
                            ['name' => 'Kesehatan'],
                            ['name' => 'Berita Lokal'],
                            ['name' => 'Barang Hilang'],
                            ['name' => 'Acara'],
                            ['name' => 'Musik'],
                            ['name' => 'Politik'],
                            ['name' => 'Pecinta Hewan'],
                       ]


                  ],

                  [
                       'name' => 'Personal' ,
                       'children' =>
                       [
                         ['name' => 'Percintaan'],
                         ['name' => 'Pria mencari wanita'],
                         ['name' => 'Wanita mencari pria'],
                         ['name' => 'Komunikasi'],
                         ['name' => 'Kontrol Emosi'],

                       ]

                  ],
                  [
                       'name' => 'Tempat Tinggal' ,
                       'children' =>
                           [
                               ['name' => 'Apartement / rumah'],
                               ['name' => 'Kos'],
                               ['name' => 'Bungalo'],
                               ['name' => 'Hotel'],
                               ['name' => 'Villa'],
                               ['name' => 'Paket Liburan'],
                               ['name' => 'Guest House'],
                           ]



                  ],



             ];

             foreach($kategori as $kategoris)
             {
                     \App\Category::create($kategoris);
             }


    }
}
