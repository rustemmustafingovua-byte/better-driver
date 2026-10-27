.class Lio/flutter/plugin/platform/PlatformViewsController2$1;
.super Ljava/lang/Object;
.source "PlatformViewsController2.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/flutter/plugin/platform/PlatformViewsController2;->createSurfaceClipCallback(Landroid/view/SurfaceView;FLandroid/graphics/Rect;I)Landroid/view/SurfaceHolder$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

.field final synthetic val$opacity:F

.field final synthetic val$screenRect:Landroid/graphics/Rect;

.field final synthetic val$surfaceView:Landroid/view/SurfaceView;

.field final synthetic val$viewId:I


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController2;Landroid/view/SurfaceView;FLandroid/graphics/Rect;I)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/platform/PlatformViewsController2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 622
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$surfaceView:Landroid/view/SurfaceView;

    iput p3, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$opacity:F

    iput-object p4, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$screenRect:Landroid/graphics/Rect;

    iput p5, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$viewId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 649
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 625
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    .line 626
    .local v0, "surfaceControl":Landroid/view/SurfaceControl;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 627
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 628
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->createTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$opacity:F

    .line 629
    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$screenRect:Landroid/graphics/Rect;

    .line 630
    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    .line 631
    goto :goto_0

    .line 632
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to apply clipping to SurfaceView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$surfaceView:Landroid/view/SurfaceView;

    .line 635
    invoke-virtual {v2}, Landroid/view/SurfaceView;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - the SurfaceControl was null or invalid during surfaceCreated callback."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 632
    const-string v2, "PlatformViewsController2"

    invoke-static {v2, v1}, Lio/flutter/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$000(Lio/flutter/plugin/platform/PlatformViewsController2;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v1

    invoke-virtual {v1}, Lio/flutter/embedding/engine/FlutterJNI;->scheduleFrame()V

    .line 643
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$100(Lio/flutter/plugin/platform/PlatformViewsController2;)Ljava/util/HashSet;

    move-result-object v1

    iget v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$viewId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 644
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 645
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 653
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$100(Lio/flutter/plugin/platform/PlatformViewsController2;)Ljava/util/HashSet;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$viewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 654
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$1;->val$surfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 655
    return-void
.end method
