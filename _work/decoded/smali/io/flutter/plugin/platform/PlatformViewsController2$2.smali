.class Lio/flutter/plugin/platform/PlatformViewsController2$2;
.super Ljava/lang/Object;
.source "PlatformViewsController2.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugin/platform/PlatformViewsController2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/flutter/plugin/platform/PlatformViewsController2;


# direct methods
.method constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController2;)V
    .locals 0
    .param p1, "this$0"    # Lio/flutter/plugin/platform/PlatformViewsController2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 762
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clearFocus(I)V
    .locals 5
    .param p1, "viewId"    # I

    .line 844
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 845
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    const-string v1, "PlatformViewsController2"

    if-nez v0, :cond_0

    .line 846
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

    .line 847
    return-void

    .line 849
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    .line 850
    .local v2, "embeddedView":Landroid/view/View;
    if-nez v2, :cond_1

    .line 851
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clearing focus on a null view with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    return-void

    .line 854
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->clearFocus()V

    .line 855
    return-void
.end method

.method public createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 1
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 766
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->createFlutterPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)Lio/flutter/plugin/platform/PlatformView;

    .line 767
    return-void
.end method

.method public dispose(I)V
    .locals 4
    .param p1, "viewId"    # I

    .line 771
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$100(Lio/flutter/plugin/platform/PlatformViewsController2;)Ljava/util/HashSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 772
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 773
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    const-string v1, "PlatformViewsController2"

    if-nez v0, :cond_0

    .line 774
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

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 778
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    .line 779
    .local v2, "embeddedView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 780
    .local v3, "pvParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_1

    .line 784
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 787
    .end local v2    # "embeddedView":Landroid/view/View;
    .end local v3    # "pvParent":Landroid/view/ViewGroup;
    :cond_1
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 789
    :try_start_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->dispose()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 792
    goto :goto_0

    .line 790
    :catch_0
    move-exception v2

    .line 791
    .local v2, "exception":Ljava/lang/RuntimeException;
    const-string v3, "Disposing platform view threw an exception"

    invoke-static {v1, v3, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 795
    .end local v2    # "exception":Ljava/lang/RuntimeException;
    :goto_0
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$300(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;

    .line 796
    .local v1, "parentView":Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;
    if-eqz v1, :cond_3

    .line 797
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->removeAllViews()V

    .line 798
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->unsetOnDescendantFocusChangeListener()V

    .line 800
    invoke-virtual {v1}, Lio/flutter/embedding/engine/mutatorsstack/FlutterMutatorView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 801
    .local v2, "mutatorViewParent":Landroid/view/ViewGroup;
    if-eqz v2, :cond_2

    .line 802
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 804
    :cond_2
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v3}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$300(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 806
    .end local v2    # "mutatorViewParent":Landroid/view/ViewGroup;
    :cond_3
    return-void
.end method

.method public isSurfaceControlEnabled()Z
    .locals 1

    .line 859
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->isHcppEnabled()Z

    move-result v0

    return v0
.end method

.method public onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V
    .locals 7
    .param p1, "touch"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;

    .line 810
    iget v0, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->viewId:I

    .line 811
    .local v0, "viewId":I
    iget-object v1, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$400(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 813
    .local v1, "density":F
    iget-object v2, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v2}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/flutter/plugin/platform/PlatformView;

    .line 814
    .local v2, "platformView":Lio/flutter/plugin/platform/PlatformView;
    const-string v3, "PlatformViewsController2"

    if-nez v2, :cond_0

    .line 815
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

    .line 816
    return-void

    .line 818
    :cond_0
    invoke-interface {v2}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v4

    .line 819
    .local v4, "view":Landroid/view/View;
    if-nez v4, :cond_1

    .line 820
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

    .line 821
    return-void

    .line 823
    :cond_1
    iget-object v3, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v3, v1, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->toMotionEvent(FLio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 824
    .local v3, "event":Landroid/view/MotionEvent;
    invoke-virtual {v4, v3}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 825
    return-void
.end method

.method public setDirection(II)V
    .locals 5
    .param p1, "viewId"    # I
    .param p2, "direction"    # I

    .line 829
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsController2$2;->this$0:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-static {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->access$200(Lio/flutter/plugin/platform/PlatformViewsController2;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/platform/PlatformView;

    .line 830
    .local v0, "platformView":Lio/flutter/plugin/platform/PlatformView;
    const-string v1, "PlatformViewsController2"

    if-nez v0, :cond_0

    .line 831
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

    .line 832
    return-void

    .line 834
    :cond_0
    invoke-interface {v0}, Lio/flutter/plugin/platform/PlatformView;->getView()Landroid/view/View;

    move-result-object v2

    .line 835
    .local v2, "embeddedView":Landroid/view/View;
    if-nez v2, :cond_1

    .line 836
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting direction to a null view with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    return-void

    .line 839
    :cond_1
    invoke-virtual {v2, p2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 840
    return-void
.end method
