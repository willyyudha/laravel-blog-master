@extends('layouts.app')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header" style="text-align: center; font-size: 20px;">Dashboard Area</div>
                <div class="card-body">
                     <div class="row float-left">
                         @foreach($provinsi as $bali)
                         <div class="">
                             <h4 style="font-size: 40px; text-align: center; margin-bottom: 20px" y><a style="text-decoration: none;" href="{{route('user.area.store' , $bali)}}">{{ $bali->name }}</a></h4>
                             @foreach($bali->children as $kabupaten)
                             <div class="float-left col-lg-3">
                                 <h5 style="font-size: 30px "><a style="text-decoration: none" href="{{route('user.area.store' , $kabupaten)}}">{{$kabupaten->name}}</a></h5>
                                 @foreach($kabupaten->children as $kota)
                                     <div>
                                         <h5><a style="text-decoration: none" href="{{route('user.area.store' , $kota)}}">{{$kota -> name}}</a></h5>
                                     </div>
                                 @endforeach
                             </div>
                             @endforeach
                         </div>
                     </div>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</div>
@endsection
