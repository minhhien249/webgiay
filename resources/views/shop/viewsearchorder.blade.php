@extends('shop.layouts.main')
@section('content')
<div class="container">
    @foreach ($searchorder as $item)
    <div>
    <h2>Mã Đơn Hàng : {{ $item->code }}</h2>
    </div>
<div>Trạng thái : @if (  $item->order_status_id == 1  )
    <p>Chưa xử lý</p>
@endif
@if (  $item->order_status_id == 2  )
    <p>Đang xử lý</p>
@endif
@if (  $item->order_status_id == 3  )
    <p>Hoàn Thành</p>
@endif
@if (  $item->order_status_id == 4  )
    <p>Hủy</p>
@endif
</div>

 @endforeach
</div>
@endsection