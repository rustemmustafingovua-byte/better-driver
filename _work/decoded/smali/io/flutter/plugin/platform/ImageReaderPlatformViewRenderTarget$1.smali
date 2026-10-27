.class Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;
.super Ljava/lang/Object;
.source "ImageReaderPlatformViewRenderTarget.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;->this$0:Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, "image":Landroid/media/Image;
    :try_start_0
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    .local v1, "e":Ljava/lang/IllegalStateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onImageAvailable acquireLatestImage failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImageReaderPlatformViewRenderTarget"

    invoke-static {v3, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    if-nez v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    iget-object v1, p0, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget$1;->this$0:Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;

    invoke-static {v1}, Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;->access$000(Lio/flutter/plugin/platform/ImageReaderPlatformViewRenderTarget;)Lio/flutter/view/TextureRegistry$ImageTextureEntry;

    move-result-object v1

    invoke-interface {v1, v0}, Lio/flutter/view/TextureRegistry$ImageTextureEntry;->pushImage(Landroid/media/Image;)V

    .line 53
    return-void
.end method
