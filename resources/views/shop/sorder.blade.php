@extends('shop.layouts.main')
@section('content')
<div class="container">
	<div class="row">
		<h2 class="col-12">Tra Cứu Đơn Hàng </h2>
		<form action="{{ route('shop.viewsearchorder') }}" method="GET" class="search-box-2">
			<input type="text" class="search-field-2" name="tim-kiem" placeholder="Nhập từ khóa tìm kiếm" value="{{ isset($keyword) ? $keyword : '' }}">
			<button type="submit" class="search-btn-2"><i class="fa fa-search"></i></button>
		</form>
	</div>
	<div>

	</div>
</div>
@endsection