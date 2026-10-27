.class public interface abstract Lio/flutter/plugin/platform/PlatformView;
.super Ljava/lang/Object;
.source "PlatformView.java"


# virtual methods
.method public abstract dispose()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onFlutterViewAttached(Landroid/view/View;)V
    .locals 0
    .param p1, "flutterView"    # Landroid/view/View;

    .line 34
    return-void
.end method

.method public onFlutterViewDetached()V
    .locals 0

    .line 49
    return-void
.end method

.method public onInputConnectionLocked()V
    .locals 0

    .line 71
    return-void
.end method

.method public onInputConnectionUnlocked()V
    .locals 0

    .line 80
    return-void
.end method
