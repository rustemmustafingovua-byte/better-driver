.class public Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;
.super Ljava/lang/Object;
.source "PlatformViewsChannel2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlatformViewsChannel2"


# instance fields
.field private final channel:Lio/flutter/plugin/common/MethodChannel;

.field private handler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

.field private final parsingHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3
    .param p1, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$1;-><init>(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->parsingHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 39
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter/platform_views_2"

    sget-object v2, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 41
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->channel:Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->parsingHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;)Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;

    .line 24
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->handler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/Exception;

    .line 24
    invoke-static {p0}, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->detailedExceptionString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static detailedExceptionString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 1
    .param p0, "exception"    # Ljava/lang/Exception;

    .line 52
    invoke-static {p0}, Lio/flutter/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public invokeViewFocused(I)V
    .locals 3
    .param p1, "viewId"    # I

    .line 45
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->channel:Lio/flutter/plugin/common/MethodChannel;

    if-nez v0, :cond_0

    .line 46
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->channel:Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "viewFocused"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lio/flutter/plugin/common/MethodChannel;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public setPlatformViewsHandler(Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;)V
    .locals 0
    .param p1, "handler"    # Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 186
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2;->handler:Lio/flutter/embedding/engine/systemchannels/PlatformViewsChannel2$PlatformViewsHandler;

    .line 187
    return-void
.end method
