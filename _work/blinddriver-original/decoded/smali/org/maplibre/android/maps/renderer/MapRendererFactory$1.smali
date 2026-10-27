.class Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;
.super Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/maplibre/android/maps/renderer/MapRendererFactory;->newTextureViewMapRenderer(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$initCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;ZLjava/lang/Runnable;)V
    .locals 0

    iput-object p5, p0, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;->val$initCallback:Ljava/lang/Runnable;

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;-><init>(Landroid/content/Context;Landroid/view/TextureView;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public onSurfaceCreated(Landroid/view/Surface;)V
    .locals 1

    iget-object v0, p0, Lorg/maplibre/android/maps/renderer/MapRendererFactory$1;->val$initCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-super {p0, p1}, Lorg/maplibre/android/maps/renderer/textureview/TextureViewMapRenderer;->onSurfaceCreated(Landroid/view/Surface;)V

    return-void
.end method
