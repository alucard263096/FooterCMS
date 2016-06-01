document.write("<script language=javascript src='http://map.qq.com/api/js?v=2.exp&key=EBWBZ-CZN3K-4O5JK-A3WQF-5HOCS-HUB2O&libraries=drawing,geometry,autocomplete,convertor'></script>");


myjs_afterimportdataload = function () {
    $("#importList tr").each(function () {
        var row = $(this);
        var kd_lat = row.find(".kd_lat");
        var kd_lng = row.find(".kd_lng");
        var kv_lat = row.find(".kv_lat");
        var kv_lng = row.find(".kv_lng");
        var searchService = new qq.maps.SearchService({
            //检索成功的回调函数
            complete: function (results) {
                //设置回调函数参数
                try {
                    var pois = results.detail.pois;
                    if (pois.length > 0) {
                        for (var i = 0, l = pois.length; i < l; i++) {
                            var poi = pois[i];
                            kd_lat.html(poi.latLng.getLat());
                            kd_lng.html(poi.latLng.getLng());
                            kv_lat.val(poi.latLng.getLat());
                            kv_lng.val(poi.latLng.getLng());
                            break;
                        }
                    } else {
                        kd_lat.html("-");
                        kd_lng.html("-");
                    }
                } catch (ex) {
                    kd_lat.html("-");
                    kd_lng.html("-");
                }
            },
            //若服务请求失败，则运行以下函数
            error: function () {
                kd_lat.html("-");
                kd_lng.html("-");
            }
        });

        searchService.search(row.find(".kv_address").val());

    });
};