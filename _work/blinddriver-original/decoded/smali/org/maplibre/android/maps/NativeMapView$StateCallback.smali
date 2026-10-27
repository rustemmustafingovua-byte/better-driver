.class interface abstract Lorg/maplibre/android/maps/NativeMapView$StateCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/maplibre/android/maps/NativeMapView$StyleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/android/maps/NativeMapView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StateCallback"
.end annotation


# virtual methods
.method public abstract onCameraDidChange(Z)V
.end method

.method public abstract onCameraIsChanging()V
.end method

.method public abstract onCameraWillChange(Z)V
.end method

.method public abstract onCanRemoveUnusedStyleImage(Ljava/lang/String;)Z
.end method

.method public abstract onDidBecomeIdle()V
.end method

.method public abstract onDidFailLoadingMap(Ljava/lang/String;)V
.end method

.method public abstract onDidFinishLoadingMap()V
.end method

.method public abstract onDidFinishRenderingFrame(ZLorg/maplibre/android/maps/RenderingStats;)V
.end method

.method public abstract onDidFinishRenderingMap(Z)V
.end method

.method public abstract onGlyphsError([Ljava/lang/String;II)V
.end method

.method public abstract onGlyphsLoaded([Ljava/lang/String;II)V
.end method

.method public abstract onGlyphsRequested([Ljava/lang/String;II)V
.end method

.method public abstract onPostCompileShader(IILjava/lang/String;)V
.end method

.method public abstract onPreCompileShader(IILjava/lang/String;)V
.end method

.method public abstract onRenderError()V
.end method

.method public abstract onShaderCompileFailed(IILjava/lang/String;)V
.end method

.method public abstract onSourceChanged(Ljava/lang/String;)V
.end method

.method public abstract onSpriteError(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSpriteLoaded(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onSpriteRequested(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onStyleImageMissing(Ljava/lang/String;)V
.end method

.method public abstract onSymbolError(Ljava/lang/String;)V
.end method

.method public abstract onTileAction(Lorg/maplibre/android/tile/TileOperation;IIIIILjava/lang/String;)V
.end method

.method public abstract onWillStartRenderingFrame()V
.end method

.method public abstract onWillStartRenderingMap()V
.end method
