<?php

use Illuminate\Database\Seeder;

class AreaTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
                $areas = [
                     [
                              'name' => 'Bali',
                              'children' => [

                                  [
                                  'name' => 'Badung',
                                    'children' => [
                                        ['name' => 'Abiansemal'],
                                        ['name' => 'Kuta Selatan'],
                                        ['name' => 'Kuta Utara'],
                                        ['name' => 'Kuta'],
                                        ['name' => 'Mengwi'],
                                        ['name' => 'Petang'],
                                        ]
                                  ],

                                  [
                                  'name' => 'Denpasar',
                                  'children' => [
                                        ['name' => 'Denpasar Barat'],
                                        ['name' => 'Denpasar Timur'],
                                        ['name' => 'Denpasar Selatan'],
                                        ['name' => 'Denpasar Utara'],
                                        ]
                                  ],

                                  [
                                  'name' => 'Bangli',
                                  'children' => [

                                        ['name' => 'Bangli'],
                                        ['name' => 'Kintamani'],
                                        ['name' => 'Susut'],
                                        ['name' => 'Abiansemal']
                                        ]
                                  ],


                                  [
                                  'name' => 'Karangasem',
                                  'children' => [
                                        ['name' => 'Abang'],
                                        ['name' => 'Bebandem'],
                                        ['name' => 'Karangasem'],
                                        ['name' => 'Kubu'],
                                        ['name' => 'Manggis'],
                                        ['name' => 'Rendang'],
                                        ['name' => 'Selat'],
                                        ['name' => 'Sidemen'],
                                        ]
                                  ],

                                  [
                                  'name' => 'Buleleng',
                                  'children' => [
                                        ['name' => 'Banjar'],
                                        ['name' => 'Buleleng'],
                                        ['name' => 'Busung Biu'],
                                        ['name' => 'Gerokgak'],
                                        ['name' => 'Kubutambahan'],
                                        ['name' => 'Sawan'],
                                        ['name' => 'Sukasada'],
                                        ['name' => 'Tejakula'],
                                        ['name' => 'Seririt'],
                                        ]
                                  ],

                                  [
                                  'name' => 'Gianyar',
                                  'children' => [
                                      ['name' => 'Blahbatuh'],
                                      ['name' => 'Gianyar'],
                                      ['name' => 'Payangan'],
                                      ['name' => 'Sukawati'],
                                      ['name' => 'Tampaksiring'],
                                      ['name' => 'Tegallalang'],
                                      ['name' => 'Ubud'],
                                      ],
                                  ],

                                  [
                                  'name' => 'Klungkung',
                                  'children' => [
                                      ['name' => 'Banjararangkan'],
                                      ['name' => 'Dawan'],
                                      ['name' => 'Klungkung'],
                                      ['name' => 'Nusa Penida'],
                                      ]
                                  ],

                                  [
                                  'name' => 'Jembrana',
                                  'children' => [
                                      ['name' => 'Jembrana'],
                                      ['name' => 'Melaya'],
                                      ['name' => 'Mendoyo'],
                                      ['name' => 'Negara'],
                                      ['name' => 'Pekutatan'],
                                      ]
                                  ],
                              ],
                          ],
                ];

                foreach ($areas as $area)
                {
                     \App\Area::create($area);
                }
    }
}
