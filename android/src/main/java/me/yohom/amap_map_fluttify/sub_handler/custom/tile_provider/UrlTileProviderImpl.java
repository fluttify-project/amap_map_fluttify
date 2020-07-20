package me.yohom.amap_map_fluttify.sub_handler.custom.tile_provider;

import android.util.Log;

import com.amap.api.maps.model.UrlTileProvider;

import java.net.URL;

public class UrlTileProviderImpl extends UrlTileProvider {

    public UrlTileProviderImpl(int width, int height, String urlTemplate) {
        super(width, height);
        this.urlTemplate = urlTemplate;
    }

    final String urlTemplate;

    @Override
    public URL getTileUrl(int x, int y, int zoom) {
        try {
            final String url = urlTemplate
                    .replace("{x}", String.valueOf(x))
                    .replace("{y}", String.valueOf(y))
                    .replace("{scale}", String.valueOf(zoom));
            Log.d("瓦片地址", url);
            return new URL(url);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }
}
