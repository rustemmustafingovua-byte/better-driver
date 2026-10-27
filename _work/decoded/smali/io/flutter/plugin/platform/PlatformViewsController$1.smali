.class Lio/flutter/plugin/platform/PlatformViewsController$1;
.super Ljava/lang/Object;
.source "PlatformViewsController.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformViewsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformViewsController;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFocus(I)V
    .locals 4
    .param p1, "viewId"    # I

    .line 474
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v0

    const-string v1, "PlatformViewsController"

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 476
    .local v0, "controller":Lio/flutter/plugin/platform/VirtualDisplayController;
    invoke-virtual {v0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    .line 477
    .local v0, "embeddedView":Landroid/view/View;
    goto :goto_0

    .line 478
    .end local v0    # "embeddedView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 479
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    if-nez v0, :cond_1

    .line 480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing focus on an unknown view with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    return-void

    .line 483
    :cond_1
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 485
    .local v0, "embeddedView":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_2

    .line 486
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clearing focus on a null view with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void

    .line 489
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 490
    return-void
.end method

.method public createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 2
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 169
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$000(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 170
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$100(Lio/flutter/plugin/platform/PlatformViewsController;)V

    .line 172
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/platform/PlatformViewsController;->createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;Z)Lio/flutter/plugin/platform/PlatformView;

    move-result-object v0

    .line 174
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v1, v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$200(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 177
    return-void
.end method

.method public createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J
    .locals 6
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 195
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$000(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 196
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->viewId:I

    .line 197
    .local v0, "viewId":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_5

    .line 201
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, v1, Lio/flutter/plugin/platform/PlatformViewsController;->textureRegistry:Lio/flutter/view/TextureRegistry;

    if-eqz v1, :cond_4

    .line 207
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$400(Lio/flutter/plugin/platform/PlatformViewsController;)Lio/flutter/embedding/android/FlutterView;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 214
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;Z)Lio/flutter/plugin/platform/PlatformView;

    move-result-object v1

    .line 216
    .local v1, "platformView":Lio/flutter/plugin/platform/PlatformView;
    invoke-interface {v1}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v3

    .line 217
    .local v3, "embeddedView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_2

    .line 229
    nop

    .line 230
    invoke-static {}, Lio/flutter/plugin/platform/PlatformViewsController;->access$500()[Ljava/lang/Class;

    move-result-object v4

    invoke-static {v3, v4}, Lio/flutter/util/ViewUtils;->hasChildViewOfType(Landroid/view/View;[Ljava/lang/Class;)Z

    move-result v4

    xor-int/2addr v2, v4

    .line 234
    .local v2, "supportsTextureLayerMode":Z
    if-nez v2, :cond_1

    .line 235
    iget-object v4, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;->displayMode:Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest$RequestedDisplayMode;

    sget-object v5, Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest$RequestedDisplayMode;->TEXTURE_WITH_HYBRID_FALLBACK:Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest$RequestedDisplayMode;

    if-ne v4, v5, :cond_0

    .line 237
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v4, v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$200(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 238
    const-wide/16 v4, -0x2

    return-wide v4

    .line 239
    :cond_0
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v4}, Lio/flutter/plugin/platform/PlatformViewsController;->access$600(Lio/flutter/plugin/platform/PlatformViewsController;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 240
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v4, v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$700(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J

    move-result-wide v4

    return-wide v4

    .line 246
    :cond_1
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v4, v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->configureForTextureLayerComposition(Lio/flutter/plugin/platform/PlatformView;Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J

    move-result-wide v4

    return-wide v4

    .line 218
    .end local v2    # "supportsTextureLayerMode":Z
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "The Android view returned from PlatformView#getView() was already added to a parent view."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 208
    .end local v1    # "platformView":Lio/flutter/plugin/platform/PlatformView;
    .end local v3    # "embeddedView":Landroid/view/View;
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flutter view is null. This means the platform views controller doesn\'t have an attached view, view id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 202
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Texture registry is null. This means that platform views controller was detached, view id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 198
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to create an already created platform view, view id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public createPlatformViewHcpp(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 3
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create an HC++ platform view from within PlatformViewsController1. Request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispose(I)V
    .locals 5
    .param p1, "viewId"    # I

    .line 251
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 252
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    const-string v1, "PlatformViewsController"

    if-nez v0, :cond_0

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Disposing unknown platform view with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    return-void

    .line 256
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 257
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, "embeddedView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 259
    .local v3, "pvParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 263
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 266
    .end local v2    # "embeddedView":Landroid/view/View;
    .end local v3    # "pvParent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 268
    :try_start_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->dispose()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 271
    goto :goto_0

    .line 269
    :catch_0
    move-exception v2

    .line 270
    .local v2, "exception":Ljava/lang/RuntimeException;
    const-string v3, "Disposing platform view threw an exception"

    invoke-static {v1, v3, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 272
    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 273
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, v1, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 274
    .local v1, "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    invoke-virtual {v1}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v2

    .line 275
    .local v2, "embeddedView":Landroid/view/View;
    if-eqz v2, :cond_2

    .line 276
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v3, v3, Lio/flutter/plugin/platform/PlatformViewsController;->contextToEmbeddedView:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_2
    invoke-virtual {v1}, Lio/flutter/plugin/platform/VirtualDisplayController;->dispose()V

    .line 279
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v3, v3, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    return-void

    .line 284
    .end local v1    # "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    .end local v2    # "embeddedView":Landroid/view/View;
    :cond_3
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/plugin/platform/PlatformViewWrapper;

    .line 285
    .local v1, "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    if-eqz v1, :cond_5

    .line 286
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformViewWrapper;->removeAllViews()V

    .line 287
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformViewWrapper;->release()V

    .line 288
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformViewWrapper;->unsetOnDescendantFocusChangeListener()V

    .line 290
    invoke-virtual {v1}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 291
    .local v2, "wrapperParent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_4

    .line 292
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 294
    :cond_4
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v3}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 295
    return-void

    .line 298
    .end local v2    # "wrapperParent":Landroid/view/ViewGroup;
    :cond_5
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$900(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 299
    .local v2, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    if-eqz v2, :cond_7

    .line 300
    invoke-virtual {v2}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->removeAllViews()V

    .line 301
    invoke-virtual {v2}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->unsetOnDescendantFocusChangeListener()V

    .line 303
    invoke-virtual {v2}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 304
    .local v3, "mutatorViewParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    .line 305
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 307
    :cond_6
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v4}, Lio/flutter/plugin/platform/PlatformViewsController;->access$900(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 309
    .end local v3    # "mutatorViewParent":Landroid/view/ViewGroup;
    :cond_7
    return-void
.end method

.method public isHcppEnabled()Z
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method synthetic lambda$resize$0$io-flutter-plugin-platform-PlatformViewsController$1(Lio/flutter/plugin/platform/VirtualDisplayController;FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
    .locals 6
    .param p1, "vdController"    # Lio/flutter/plugin/platform/VirtualDisplayController;
    .param p2, "originalDisplayDensity"    # F
    .param p3, "onComplete"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;

    .line 359
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1700(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/VirtualDisplayController;)V

    .line 364
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1400(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1100(Lio/flutter/plugin/platform/PlatformViewsController;)F

    move-result v0

    .line 365
    .local v0, "displayDensity":F
    :goto_0
    new-instance v1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;

    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 367
    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetWidth()I

    move-result v3

    int-to-double v3, v3

    invoke-static {v2, v3, v4, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1800(Lio/flutter/plugin/platform/PlatformViewsController;DF)I

    move-result v2

    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 368
    invoke-virtual {p1}, Lio/flutter/plugin/platform/VirtualDisplayController;->getRenderTargetHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v3, v4, v5, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1800(Lio/flutter/plugin/platform/PlatformViewsController;DF)I

    move-result v3

    invoke-direct {v1, v2, v3}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;-><init>(II)V

    .line 365
    invoke-interface {p3, v1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;->run(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;)V

    .line 369
    return-void
.end method

.method public offset(IDD)V
    .locals 5
    .param p1, "viewId"    # I
    .param p2, "top"    # D
    .param p4, "left"    # D

    .line 313
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    return-void

    .line 324
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformViewWrapper;

    .line 325
    .local v0, "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    if-nez v0, :cond_1

    .line 326
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting offset for unknown platform view with id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlatformViewsController"

    invoke-static {v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    return-void

    .line 329
    :cond_1
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v1, p2, p3}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1000(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v1

    .line 330
    .local v1, "physicalTop":I
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v2, p4, p5}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1000(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v2

    .line 331
    .local v2, "physicalLeft":I
    nop

    .line 332
    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 333
    .local v3, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 334
    iput v2, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 335
    const/16 v4, 0x33

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 336
    invoke-virtual {v0, v3}, Lio/flutter/plugin/platform/PlatformViewWrapper;->setLayoutParams(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 337
    return-void
.end method

.method public onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V
    .locals 7
    .param p1, "touch"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;

    .line 415
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->viewId:I

    .line 416
    .local v0, "viewId":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1400(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 418
    .local v1, "density":F
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v2, v0}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v2, v2, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 420
    .local v2, "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    const/4 v4, 0x1

    invoke-virtual {v3, v1, p1, v4}, Lio/flutter/plugin/platform/PlatformViewsController;->toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewTouch;Z)Landroid/view/MotionEvent;

    move-result-object v3

    .line 421
    .local v3, "event":Landroid/view/MotionEvent;
    invoke-virtual {v2, v3}, Lio/flutter/plugin/platform/VirtualDisplayController;->dispatchTouchEvent(Landroid/view/MotionEvent;)V

    .line 422
    return-void

    .line 425
    .end local v2    # "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    .end local v3    # "event":Landroid/view/MotionEvent;
    :cond_0
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/platform/PlatformView;

    .line 426
    .local v2, "platformView":Lio/flutter/plugin/platform/PlatformView;
    const-string v3, "PlatformViewsController"

    if-nez v2, :cond_1

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sending touch to an unknown view with id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    return-void

    .line 430
    :cond_1
    invoke-interface {v2}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v4

    .line 431
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_2

    .line 432
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending touch to a null view with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-void

    .line 435
    :cond_2
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    const/4 v5, 0x0

    invoke-virtual {v3, v1, p1, v5}, Lio/flutter/plugin/platform/PlatformViewsController;->toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewTouch;Z)Landroid/view/MotionEvent;

    move-result-object v3

    .line 436
    .restart local v3    # "event":Landroid/view/MotionEvent;
    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 437
    return-void
.end method

.method public resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
    .locals 12
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;
    .param p2, "onComplete"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;

    .line 343
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-wide v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->newLogicalWidth:D

    invoke-static {v0, v1, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1000(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v0

    .line 344
    .local v0, "physicalWidth":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-wide v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->newLogicalHeight:D

    invoke-static {v1, v2, v3}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1000(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v1

    .line 345
    .local v1, "physicalHeight":I
    iget v2, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->viewId:I

    .line 347
    .local v2, "viewId":I
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v3, v2}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 348
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v3}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1100(Lio/flutter/plugin/platform/PlatformViewsController;)F

    move-result v3

    .line 349
    .local v3, "originalDisplayDensity":F
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v4, v4, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 354
    .local v4, "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    iget-object v5, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v5, v4}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1200(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/VirtualDisplayController;)V

    .line 355
    new-instance v5, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0, v4, v3, p2}, Lio/flutter/plugin/platform/PlatformViewsController$1$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/platform/PlatformViewsController$1;Lio/flutter/plugin/platform/VirtualDisplayController;FLio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V

    invoke-virtual {v4, v0, v1, v5}, Lio/flutter/plugin/platform/VirtualDisplayController;->resize(IILjava/lang/Runnable;)V

    .line 370
    return-void

    .line 373
    .end local v3    # "originalDisplayDensity":F
    .end local v4    # "vdController":Lio/flutter/plugin/platform/VirtualDisplayController;
    :cond_0
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v3}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/plugin/platform/PlatformView;

    .line 374
    .local v3, "platformView":Lio/flutter/plugin/platform/PlatformView;
    iget-object v4, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v4}, Lio/flutter/plugin/platform/PlatformViewsController;->access$300(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/plugin/platform/PlatformViewWrapper;

    .line 375
    .local v4, "viewWrapper":Lio/flutter/plugin/platform/PlatformViewWrapper;
    if-eqz v3, :cond_6

    if-nez v4, :cond_1

    goto :goto_0

    .line 386
    :cond_1
    invoke-virtual {v4}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getRenderTargetWidth()I

    move-result v5

    if-gt v0, v5, :cond_2

    .line 387
    invoke-virtual {v4}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getRenderTargetHeight()I

    move-result v5

    if-le v1, v5, :cond_3

    .line 388
    :cond_2
    invoke-virtual {v4, v0, v1}, Lio/flutter/plugin/platform/PlatformViewWrapper;->resizeRenderTarget(II)V

    .line 391
    :cond_3
    invoke-virtual {v4}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 392
    .local v5, "viewWrapperLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 393
    iput v1, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 394
    instance-of v6, v5, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v6, :cond_4

    .line 395
    move-object v6, v5

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v7, 0x33

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 398
    :cond_4
    invoke-virtual {v4, v5}, Lio/flutter/plugin/platform/PlatformViewWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 400
    invoke-interface {v3}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v6

    .line 401
    .local v6, "embeddedView":Landroid/view/View;
    if-eqz v6, :cond_5

    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 403
    .local v7, "embeddedViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 404
    iput v1, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 405
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    .end local v7    # "embeddedViewLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    new-instance v7, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;

    iget-object v8, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 409
    invoke-virtual {v4}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getRenderTargetWidth()I

    move-result v9

    int-to-double v9, v9

    invoke-static {v8, v9, v10}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1300(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v8

    iget-object v9, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 410
    invoke-virtual {v4}, Lio/flutter/plugin/platform/PlatformViewWrapper;->getRenderTargetHeight()I

    move-result v10

    int-to-double v10, v10

    invoke-static {v9, v10, v11}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1300(Lio/flutter/plugin/platform/PlatformViewsController;D)I

    move-result v9

    invoke-direct {v7, v8, v9}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;-><init>(II)V

    .line 407
    invoke-interface {p2, v7}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;->run(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferSize;)V

    .line 411
    return-void

    .line 376
    .end local v5    # "viewWrapperLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "embeddedView":Landroid/view/View;
    :cond_6
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resizing unknown platform view with id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "PlatformViewsController"

    invoke-static {v6, v5}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public setDirection(II)V
    .locals 4
    .param p1, "viewId"    # I
    .param p2, "direction"    # I

    .line 441
    invoke-static {p2}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1500(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 452
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v0

    const-string v1, "PlatformViewsController"

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->vdControllers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/VirtualDisplayController;

    .line 454
    .local v0, "controller":Lio/flutter/plugin/platform/VirtualDisplayController;
    invoke-virtual {v0}, Lio/flutter/plugin/platform/VirtualDisplayController;->getView()Landroid/view/View;

    move-result-object v0

    .line 455
    .local v0, "embeddedView":Landroid/view/View;
    goto :goto_0

    .line 456
    .end local v0    # "embeddedView":Landroid/view/View;
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->access$800(Lio/flutter/plugin/platform/PlatformViewsController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 457
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    if-nez v0, :cond_1

    .line 458
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting direction to an unknown view with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    return-void

    .line 461
    :cond_1
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    move-object v0, v2

    .line 463
    .local v0, "embeddedView":Landroid/view/View;
    :goto_0
    if-nez v0, :cond_2

    .line 464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting direction to a null view with id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    return-void

    .line 467
    :cond_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 468
    return-void

    .line 442
    .end local v0    # "embeddedView":Landroid/view/View;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to set unknown direction value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(view id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synchronizeToNativeViewHierarchy(Z)V
    .locals 1
    .param p1, "yes"    # Z

    .line 494
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController$1;->this$0:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-static {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->access$1602(Lio/flutter/plugin/platform/PlatformViewsController;Z)Z

    .line 495
    return-void
.end method
