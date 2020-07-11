@extends('admin.layouts.main')
@section('content')

<section class="content-header">
    <div class="row page-title">
        <div class="col-md-12">
            <div aria-label="breadcrumb" class="float-right mt-1">
                <a class="btn btn-primary" href="{{route('admin.page.index')}}">Danh sách</a>
            </div>
            <span><b> <a class="text-dark" href="{{route('admin.page.index')}}">Danh sách</a> / <a class="text-dark" href="javascript:void(0)"> Thêm mới page</a> </b></span>
        </div>
    </div>
</section>

<section class="content">
    <div class="card">
        <div class="card-body">

            <form role="form" action="{{route('admin.page.store')}}" method="post" enctype="multipart/form-data">
                @csrf
                <div class="box-body">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Tiêu Đề</label>
                        <input type="text" class="form-control" id="title" name="title" placeholder="Nhập tên">
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Url(Liên kết tùy chỉnh)</label>
                        <input type="text" class="form-control" id="slug" name="url" placeholder="Nhập liên kết tùy chỉnh">
                    </div>
                    <div class="form-group">
                        <label for="description">Mô tả</label>
                        <textarea value="" id="editor1" name="description" class="form-control" rows="10" ></textarea>
                    </div>
                    <div class="form-group mb-3">
                        <div class="custom-control custom-checkbox form-check">
                            <input type="checkbox" class="custom-control-input" id="invalidCheck" value="1"
                                name="is_active">
                            <label class="custom-control-label" for="invalidCheck">Trạng thái</label>
                        </div>
                    </div>
                    <button class="btn btn-primary" type="submit">Tạo</button>
            </form>

        </div>
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
