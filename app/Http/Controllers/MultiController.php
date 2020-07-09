<?php

namespace App\Http\Controllers;
use App\Multi;
use Illuminate\Http\Request;

class MultiController extends Controller
{
	public function create()
    {

        return view('admin.create');
    }
    public function store(Request $request)

    {

            // đặt tên cho file image
             // $file->getClientOriginalName() == tên ban đầu của image
            // Định nghĩa đường dẫn sẽ upload lên
            
            // Thực hiện upload file
             // upload lên thư mục public/uploads/product
       
        if ($request->hasFile('filename')) {
            foreach ($request->file('filename') as $file) {
                $multi= new Multi();
                if (isset($file)) {
                    $multi->filename =  'uploads/multi/images/'.$file->getClientOriginalName();
                    $file->move('uploads/multi/images',$file->getClientOriginalName());
                    $multi->save();
                }
            }
        }
        return back()->with('success', 'Your images has been successfully');
    }
}
