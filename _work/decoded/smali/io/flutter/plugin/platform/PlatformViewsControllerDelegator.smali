.class public Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;
.super Ljava/lang/Object;
.source "PlatformViewsControllerDelegator.java"

# interfaces
.implements Lio/flutter/plugin/platform/PlatformViewsAccessibilityDelegate;
.implements Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;


# instance fields
.field platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

.field platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;


# direct methods
.method public constructor <init>(Lio/flutter/plugin/platform/PlatformViewsController;Lio/flutter/plugin/platform/PlatformViewsController2;)V
    .locals 0
    .param p1, "platformViewsController"    # Lio/flutter/plugin/platform/PlatformViewsController;
    .param p2, "platformViewsController2"    # Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    .line 28
    iput-object p2, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    .line 29
    return-void
.end method


# virtual methods
.method public attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "textureRegistry"    # Lio/flutter/view/TextureRegistry;
    .param p3, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 147
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/plugin/platform/PlatformViewsController;->attach(Landroid/content/Context;Lio/flutter/view/TextureRegistry;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 148
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1, p3}, Lio/flutter/plugin/platform/PlatformViewsController2;->attach(Landroid/content/Context;Lio/flutter/embedding/engine/dart/DartExecutor;)V

    .line 149
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewsChannel()Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel;->setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;)V

    .line 150
    return-void
.end method

.method public attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V
    .locals 1
    .param p1, "accessibilityBridge"    # Lio/flutter/view/AccessibilityBridge;

    .line 48
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 49
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->attachAccessibilityBridge(Lio/flutter/view/AccessibilityBridge;)V

    .line 50
    return-void
.end method

.method public clearFocus(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 107
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->clearFocus(I)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->clearFocus(I)V

    .line 112
    :goto_0
    return-void
.end method

.method public createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 1
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 128
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->createForPlatformViewLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 129
    return-void
.end method

.method public createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J
    .locals 2
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 134
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->createForTextureLayer(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createPlatformViewHcpp(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V
    .locals 1
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;

    .line 140
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->createPlatformView(Lio/flutter/embedding/engine/systemchannels/PlatformViewCreationRequest;)V

    .line 141
    return-void
.end method

.method public detachAccessibilityBridge()V
    .locals 1

    .line 54
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController;->detachAccessibilityBridge()V

    .line 55
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->detachAccessibilityBridge()V

    .line 56
    return-void
.end method

.method public dispose(I)V
    .locals 1
    .param p1, "viewId"    # I

    .line 60
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->dispose(I)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->dispose(I)V

    .line 65
    :goto_0
    return-void
.end method

.method public getPlatformViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "viewId"    # I

    .line 34
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    .line 34
    :goto_0
    return-object v0
.end method

.method public isHcppEnabled()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0}, Lio/flutter/plugin/platform/PlatformViewsController2;->isHcppEnabled()Z

    move-result v0

    return v0
.end method

.method public offset(IDD)V
    .locals 7
    .param p1, "viewId"    # I
    .param p2, "top"    # D
    .param p4, "left"    # D

    .line 80
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    goto :goto_0

    .line 83
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v1, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .end local p1    # "viewId":I
    .end local p2    # "top":D
    .end local p4    # "left":D
    .local v2, "viewId":I
    .local v3, "top":D
    .local v5, "left":D
    invoke-interface/range {v1 .. v6}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->offset(IDD)V

    .line 85
    :goto_0
    return-void
.end method

.method public onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V
    .locals 2
    .param p1, "touch"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;

    .line 89
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;->viewId:I

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V

    goto :goto_0

    .line 92
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->onTouch(Lio/flutter/embedding/engine/systemchannels/PlatformViewTouch;)V

    .line 94
    :goto_0
    return-void
.end method

.method public resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V
    .locals 2
    .param p1, "request"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;
    .param p2, "onComplete"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;

    .line 71
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget v1, p1, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;->viewId:I

    invoke-virtual {v0, v1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->resize(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewResizeRequest;Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewBufferResized;)V

    .line 76
    :goto_0
    return-void
.end method

.method public setDirection(II)V
    .locals 1
    .param p1, "viewId"    # I
    .param p2, "direction"    # I

    .line 98
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController2;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;->setDirection(II)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->setDirection(II)V

    .line 103
    :goto_0
    return-void
.end method

.method public synchronizeToNativeViewHierarchy(Z)V
    .locals 1
    .param p1, "yes"    # Z

    .line 116
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    iget-object v0, v0, Lio/flutter/plugin/platform/PlatformViewsController;->channelHandler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel$PlatformViewsHandler;->synchronizeToNativeViewHierarchy(Z)V

    .line 117
    return-void
.end method

.method public usesVirtualDisplay(I)Z
    .locals 1
    .param p1, "id"    # I

    .line 41
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->getPlatformViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController2:Lio/flutter/plugin/platform/PlatformViewsController2;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController2;->usesVirtualDisplay(I)Z

    move-result v0

    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/platform/PlatformViewsControllerDelegator;->platformViewsController:Lio/flutter/plugin/platform/PlatformViewsController;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/platform/PlatformViewsController;->usesVirtualDisplay(I)Z

    move-result v0

    .line 41
    :goto_0
    return v0
.end method
