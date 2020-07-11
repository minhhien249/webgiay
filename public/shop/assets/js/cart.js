            
     function AddCart(id){
            var qty = $('#number').val();
            $.ajax({
                url:'dat-hang/them-sp-vao-gio-hang/'+id,
                type:'GET',
                data: {
                    qty : qty
                },
            }).done(function(response){
                RenderCart(response);
                console.log(response);
                alertify.success('Đã thêm sản phẩm vào giỏ');
            });
        }
        $('#item-cart').on("click",".del-icon i",function(){
            $.ajax({
                url:'dat-hang/xoa-sp-gio-hang/'+$(this).data("id"),
                type:'GET',
            }).done(function(response){
                RenderCart(response);
                alertify.success('Đã xóa sản phẩm');
            });
        })
        function RenderCart(response){
            $("#item-cart").html(response);
            $("#total-quanty-show").text($("#total-quanty-cart").val());
        }


        function AddCart(id){
            var qty = $('#number').val();
            $.ajax({
                url:'dat-hang/them-sp-vao-gio-hang/'+id,
                type:'GET',
                data: {
                    qty : qty
                },
            }).done(function(response){
                RenderCart(response);
                alertify.success('Đã thêm sản phẩm vào giỏ');
            });
        }
        $('#item-cart').on("click",".del-icon i",function(){
            $.ajax({
                url:'dat-hang/xoa-sp-gio-hang/'+$(this).data("id"),
                type:'GET',
            }).done(function(response){
                RenderCart(response);
                alertify.success('Đã xóa sản phẩm');
            });
        })
        function RenderCart(response){
            $("#item-cart").html(response);
            $("#total-quanty-show").text($("#total-quanty-cart").val());
        }