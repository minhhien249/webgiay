<?php

namespace App\Http\Controllers;

use App\Order;
use App\OrderDetail;
use App\OrderStatus;
use App\Product;
use Illuminate\Support\Facades\Artisan;
use Illuminate\Http\Request;

class OrderController extends ShopController
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Order::latest()->paginate(20);
        return view('admin.order.index', [
            'data' => $data
        ]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $order = Order::find($id);
        $order_status = OrderStatus::all();
        return view('admin.order.edit', [
            'order' => $order,
            'order_status' => $order_status
        ]);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $address2 = $request->address2;
        $note = $request->note;
        $id_status = $request->order_status_id;

        $order = Order::findorFail($id);
        $order->address2 = $address2;
        $order->note = $note;
        $order->order_status_id = $id_status;
        //Sử lý trừ giỏ hàng sau khi hoàn thành đơn hàng
        $OrderDetail = OrderDetail::Where('order_id',$order->id)->get();
        if ($id_status == 4) //nếu trạng thái hủy
        {
            # code...
            foreach($OrderDetail as $item){
                $products = Product::where('id',$item->product_id)->get();
                foreach($products as $product){
                    $product->increment('stock', $item->quanty);
                }
            }
        }

        $order->save();

        return redirect()->back()->with('msg', 'Cập nhật đơn hàng thành công');
    }
    public function searchOrder(Request $request)
    {
        $keyword = $request->input('keyword');
        $slug = str_slug($keyword);
            $data = [];
            $data = Order::where([
                ['name', 'like', '%' . $keyword . '%'],
                ['is_active', '=', 1]
            ])->orWhere([
                ['slug', 'like', '%' . str_slug($keyword) . '%'],
                ['is_active', '=', 1]
            ])->orWhere([
                ['summary', 'like', '%' . $keyword . '%'],
                ['is_active', '=', 1]
            ])->paginate(10);
            $data->appends(['keyword'=>$keyword]);
            return view('admin.order.searchOrder', [
                'data' => $data,
                'keyword' => $keyword ? $keyword : ''
            ]);
    }
}