.class Lio/flutter/embedding/android/FlutterTextureView$1;
.super Ljava/lang/Object;
.source "FlutterTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterTextureView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterTextureView;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/android/FlutterTextureView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 57
    const-string v0, "FlutterTextureView"

    const-string v1, "SurfaceTextureListener.onSurfaceTextureAvailable()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lio/flutter/embedding/android/FlutterTextureView;->access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z

    .line 63
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$200(Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 66
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 84
    const-string v0, "FlutterTextureView"

    const-string v1, "SurfaceTextureListener.onSurfaceTextureDestroyed()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/embedding/android/FlutterTextureView;->access$002(Lio/flutter/embedding/android/FlutterTextureView;Z)Z

    .line 90
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$400(Lio/flutter/embedding/android/FlutterTextureView;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 96
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$500(Lio/flutter/embedding/android/FlutterTextureView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 97
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/flutter/embedding/android/FlutterTextureView;->access$502(Lio/flutter/embedding/android/FlutterTextureView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 102
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 71
    const-string v0, "FlutterTextureView"

    const-string v1, "SurfaceTextureListener.onSurfaceTextureSizeChanged()"

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0}, Lio/flutter/embedding/android/FlutterTextureView;->access$100(Lio/flutter/embedding/android/FlutterTextureView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/flutter/embedding/android/FlutterTextureView$1;->this$0:Lio/flutter/embedding/android/FlutterTextureView;

    invoke-static {v0, p2, p3}, Lio/flutter/embedding/android/FlutterTextureView;->access$300(Lio/flutter/embedding/android/FlutterTextureView;II)V

    .line 75
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .line 80
    return-void
.end method
