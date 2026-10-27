.class public Lcom/github/dart_lang/jni/JniPlugin;
.super Ljava/lang/Object;
.source "JniPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-string v0, "dartjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    const-class v0, Lcom/github/dart_lang/jni/JniPlugin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/github/dart_lang/jni/JniPlugin;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native setClassLoader(Ljava/lang/ClassLoader;)V
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 13
    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 0
    .param p1, "binding"    # Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;

    .line 16
    return-void
.end method
