.class Lio/flutter/embedding/android/FlutterView$3;
.super Ljava/lang/Object;
.source "FlutterView.java"

# interfaces
.implements Lio/flutter/embedding/engine/renderer/FlutterUiResizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/android/FlutterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/embedding/android/FlutterView;


# direct methods
.method constructor <init>(Lio/flutter/embedding/android/FlutterView;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/embedding/android/FlutterView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resizeEngineView(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "changed":Z
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, v1, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    if-eqz v1, :cond_3

    .line 196
    iget-object v1, p0, Lio/flutter/embedding/android/FlutterView$3;->this$0:Lio/flutter/embedding/android/FlutterView;

    iget-object v1, v1, Lio/flutter/embedding/android/FlutterView;->renderSurface:Lio/flutter/embedding/engine/renderer/RenderSurface;

    check-cast v1, Landroid/view/View;

    .line 197
    .local v1, "flutterEngineView":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 198
    .local v2, "surfaceParams":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    if-eq v3, p2, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 200
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 202
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    if-eq v3, p1, :cond_1

    .line 203
    const/4 v0, 0x1

    .line 204
    iput p1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 206
    :cond_1
    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 209
    .end local v1    # "flutterEngineView":Landroid/view/View;
    .end local v2    # "surfaceParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    goto :goto_0

    .line 210
    :cond_3
    const-string v1, "FlutterView"

    const-string v2, "Flutter engine view not set."

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :goto_0
    return-void
.end method
