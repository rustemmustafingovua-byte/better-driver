.class public Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
.super Ljava/lang/Object;
.source "ScribeChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;
    }
.end annotation


# static fields
.field public static final METHOD_IS_FEATURE_AVAILABLE:Ljava/lang/String; = "Scribe.isFeatureAvailable"

.field public static final METHOD_IS_STYLUS_HANDWRITING_AVAILABLE:Ljava/lang/String; = "Scribe.isStylusHandwritingAvailable"

.field public static final METHOD_START_STYLUS_HANDWRITING:Ljava/lang/String; = "Scribe.startStylusHandwriting"

.field private static final TAG:Ljava/lang/String; = "ScribeChannel"


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field public final parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field private scribeMethodHandler:Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3
    .param p1, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 108
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter/scribe"

    sget-object v2, Lio/flutter/plugin/common/JSONMethodCodec;->INSTANCE:Lio/flutter/plugin/common/JSONMethodCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 109
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 110
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;)Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;

    .line 24
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->scribeMethodHandler:Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .param p1, "x1"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "x2"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 24
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->isFeatureAvailable(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .param p1, "x1"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "x2"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 24
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->isStylusHandwritingAvailable(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method static synthetic access$300(Lio/flutter/embedding/engine/systemchannels/ScribeChannel;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel;
    .param p1, "x1"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "x2"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 24
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->startStylusHandwriting(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method private isFeatureAvailable(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 70
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->scribeMethodHandler:Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;->isFeatureAvailable()Z

    move-result v0

    .line 71
    .local v0, "isAvailable":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v0    # "isAvailable":Z
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "exception":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "error"

    invoke-interface {p2, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 75
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private isStylusHandwritingAvailable(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 79
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    const/4 v2, 0x0

    const-string v3, "error"

    if-ge v0, v1, :cond_0

    .line 80
    const-string v0, "Requires API level 34 or higher."

    invoke-interface {p2, v3, v0, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void

    .line 85
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->scribeMethodHandler:Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;->isStylusHandwritingAvailable()Z

    move-result v0

    .line 86
    .local v0, "isAvailable":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .end local v0    # "isAvailable":Z
    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    .local v0, "exception":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v3, v1, v2}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method

.method private startStylusHandwriting(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 4
    .param p1, "call"    # Lio/flutter/plugin/common/MethodCall;
    .param p2, "result"    # Lio/flutter/plugin/common/MethodChannel$Result;

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "error"

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 95
    const-string v0, "Requires API level 33 or higher."

    invoke-interface {p2, v2, v0, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    return-void

    .line 100
    :cond_0
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->scribeMethodHandler:Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    invoke-interface {v0}, Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;->startStylusHandwriting()V

    .line 101
    invoke-interface {p2, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "exception":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v2, v1, v3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :goto_0
    return-void
.end method


# virtual methods
.method public setScribeMethodHandler(Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;)V
    .locals 0
    .param p1, "scribeMethodHandler"    # Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    .line 117
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/ScribeChannel;->scribeMethodHandler:Lio/flutter/embedding/engine/systemchannels/ScribeChannel$ScribeMethodHandler;

    .line 118
    return-void
.end method
