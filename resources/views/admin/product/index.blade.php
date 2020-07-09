
@extends('admin.layouts.main')
@section('content')
<div class="row page-title">
    <div class="col-md-12">
        <div aria-label="breadcrumb" class="float-right mt-1">
            <a class="btn btn-primary" href="{{route('admin.product.create')}}">Thêm mới</a>
        </div>
        <h4 class="mb-1 mt-0">Danh sách</h4>
    </div>
    <div class="col-md-12">
         <form role="form" action="{{url('admin/searchProduct')}}" method="get"  enctype="multipart/form-data">   
         <div id="datatable-buttons_filter" class="dataTables_filter" sytle="position:relative">
            <div style="position: absolute;top: 6px;left: 18px;">
                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-search"><circle cx="11" cy="11" r="8"></circle><line x1="21" y1="21" x2="16.65" y2="16.65"></line></svg>
            </div>
            <input type="search" id="search" class="form-control form-control-sm" name="keyword" placeholder="Nhập từ khóa tìm kiếm" aria-controls="datatable-buttons" style= "height:35px; width: 400px;padding-left: 35px;"></div>
        </form>
    </div>
</div>
        <div class="row">
            <div class="col-lg-12">
                   <div class="card">
                       <div class="card-body">
                        <div class="table-responsive" id = "data">
                            <table class="table m-0">
                                <thead>
                                    <th>STT</th>
                                    <th style="width: 225px;">Tên Sản Phẩm</th>
                                    <th>Hình ảnh</th>
                                    <th>Số lượng</th>
                                    <th>Sản phẩm Hot</th>
                                    <th>Vị trí</th>
                                    <th>Trạng thái</th>
                                    <th class="text-center">Hành động</th>
                                 </thead>     
                            <tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            
                            @foreach($data as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{++$key }}</td>
                                    <td>{{ substr($item->name,0) }}</td>
                                    <td>
                                        @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                            <img src="{{asset($item->image)}}" width="50" height="50">
                                        {{-- <img src="{{asset($item->image)}}" width="50" height="50"> --}}
                                        @endif
                                    </td>
                                    <td>{{ $item->stock }}</td>
                                    <td>{{ ($item->is_hot == 1) ? 'Có' : 'Không' }}</td>
                                    <td>{{ $item->position }}</td>
                                    <td>{{ ($item->is_active == 1) ? 'Hiển thị' : 'Ẩn' }}</td>
                                    <td class="text-center">
                                        <a class="btn btn-success" href="{{route('admin.product.show', ['id'=> $item->id ])}}">Xem</a>
                                        <a class="btn btn-primary" href="{{route('admin.product.edit', ['id'=> $item->id ])}}">Sửa</a>
                                        <a class="btn btn-danger" href="javascript:void(0)" onclick="delete_model({{$item->id}},'product')">Xóa</a>
                                    </td>
                                </tr>
                                
                            @endforeach
                            </tbody>
                            </table>
                            <div class="box-footer clearfix">
                                <div class="dataTables_paginate paging_simple_numbers" id="basic-datatable_paginate">
                                        {{ $data->links() }}
                                </div>
                            </div>
                        </div>
                    <!-- /.box-body -->
                        
                       </div>
                   </div>
                </div>
                <!-- /.box -->
        </div>
        <!-- /.row -->
@endsection