@extends('admin.layouts.main')
@section('content')
    <style>
        #thongbao {
            position: absolute;
            margin-bottom: 0px;
            width: 350px;
            z-index: 1000;
            float: right;
            right: 22px;
        }
    </style>
    <div class="row page-title">
    <div class="col-md-12">
        <h4 class="mb-1 mt-0">Chi tiết đơn hàng</h4>
    </div>
    </div>
    @if (session('msg'))
        <div class="pad margin no-print">
            <div class="alert alert-success alert-dismissible" style="" id="thongbao">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                <h4 class="text-white"><i class="icon fa fa-check"></i> Thông báo !</h4>
                {{ session('msg') }}
            </div>
        </div>
    @endif

    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-12">
                <div class="card">
                    <div class="card-boy">
                        <div class="box">
                    <div class="box-body table-responsive no-padding">
                        <table class="table table-hover">
                            <tbody>
                            <tr>
                                <th>STT</th>
                                <th style="max-with:200px">Tên SP</th>
                                <th>Hình ảnh</th>
                                <th>SKU</th>
                                <th>Số lượng</th>

                                <th>Giá</th>
                                <th>Thành tiền</th>
                                <th class="text-center"></th>
                            </tr>
                            </tbody>
                            <!-- Lặp một mảng dữ liệu pass sang view để hiển thị -->
                            @foreach($order->details as $key => $item)
                                <tr class="item-{{ $item->id }}"> <!-- Thêm Class Cho Dòng -->
                                    <td>{{ ++$key }}</td>
                                    <td>
                                        <a href="{{route('admin.product.edit', ['id'=> $item->product_id])}}">
                                            {{ substr($item->name, 0) }}
                                        </a>
                                    </td>
                                    <td>
                                        @if ($item->image) <!-- Kiểm tra hình ảnh tồn tại -->
                                            <img src="{{asset($item->image)}}" width="50" height="50">
                                        @endif
                                    </td>
                                    <td>{{ $item->sku }}</td>
                                    <td>{{ $item->quanty }}</td>
                                    <td>{{ number_format($item->price) }} đ</td>

                                    <td style="color:red;">{{ number_format($item->price * $item->quanty) }} đ</td>
                                </tr>
                            @endforeach
                        </table>
                    </div>
                    <!-- /.box-body -->

                </div>
                    </div>
                </div>
                <div class="box box-primary">
                    <form action="{{ route('admin.order.update', ['id' => $order->id]) }}" method="post">
                        @csrf
                        @method('PUT')
                        
                        <div class="card">
                            <div class="card-body">
                                <div class="box-body">
                            <table class="table table-bordered">
                                <tbody>
                                <tr>
                                    <td><label for="">Mã ĐH :</label></td>
                                    <td>{{ $order->code }}</td>
                                    <td><label>Ngày Đặt Hàng:</label></td>
                                    <td>{{ $order->created_at }}</td>
                                </tr>
                                <tr>
                                    <td><label for="">Họ tên :</label></td>
                                    <td>{{ $order->fullname }}</td>
                                    <td><label>Mã giảm giá</label></td>
                                    <td>{{ $order->coupon }}</td>
                                </tr>
                                <tr>
                                    <td><label>SĐT :</label> </td>
                                    <td>{{ $order->phone }}</td>
                                    <td><label>Tạm tính</label></td>
                                    <td>{{ number_format($order->total) }}</td>
                                </tr>
                                <tr>
                                    <td><label>Email :</label></td>
                                    <td>{{ $order->email }}</td>
                                    <td><label>Khuyến mại</label></td>
                                    <td>{{ number_format($order->discount) }} đ</td>
                                </tr>
                                <tr>
                                    <td><label>Địa chỉ :</label> </td>
                                    <td colspan="">{{ $order->address }}</td>
                                    <td><label>Thành tiền</label></td>
                                    <td style="color: red">{{ number_format($order->total - $order->discount) }} đ</td>

                                </tr>
                                <tr>
                                    <td><label>Địa chỉ nhận hàng :</label> </td>
                                    <td colspan="">
                                        <div class="form-group">
                                            <input class="form-control" name="address2" value="{{ $order->address2 }}">
                                        </div>
                                    </td>
                                    <td><label>Trạng thái ĐH</label></td>
                                    <td style="color: red">
                                        <select class="form-control " name="order_status_id" style="max-width: 150px;display: inline-block;">
                                            <option value="0">-- chọn --</option>
                                            @foreach($order_status as $status)
                                                <option {{ ($order->order_status_id == $status->id ? 'selected':'') }} value="{{ $status->id }}">{{ $status->name }}</option>
                                            @endforeach
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><label>Ghi chú :</label> </td>
                                    <td colspan="3">
                                        <div class="form-group">
                                            <textarea name="note" class="form-control" rows="3" placeholder="">{{ $order->note }}</textarea>
                                        </div>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                            </div>
                        </div>
                        <div class="box-header with-border">
                            <button type="submit" class="btn btn-info btn-flat">
                                <i class="fa fa-edit"></i>
                                Cập nhật
                            </button>
                        </div>
                    </form>
                </div>
                <!-- /.box -->
                

            </div>
            <!--/.col (right) -->
        </div>
        <!-- /.row -->
    </section>
@endsection
@section('my_javascript')
    <script type="text/javascript">
        $(function () {
            // setup textarea sử dụng plugin CKeditor
            var _ckeditor = CKEDITOR.replace('editor1');
            _ckeditor.config.height = 200; // thiết lập chiều cao
        })
    </script>
@endsection
