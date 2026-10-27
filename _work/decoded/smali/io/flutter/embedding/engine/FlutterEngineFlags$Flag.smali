.class public Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;
.super Ljava/lang/Object;
.source "FlutterEngineFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/FlutterEngineFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flag"
.end annotation


# instance fields
.field public final allowedInRelease:Z

.field public final engineArgument:Ljava/lang/String;

.field public final metadataKey:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "engineArgument"    # Ljava/lang/String;
    .param p2, "metaDataName"    # Ljava/lang/String;

    .line 55
    const-string v0, "io.flutter.embedding.android."

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lio/flutter/embedding/engine/FlutterEngineFlags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lio/flutter/embedding/engine/FlutterEngineFlags$1;

    .line 34
    invoke-direct {p0, p1, p2}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "engineArgument"    # Ljava/lang/String;
    .param p2, "metaDataName"    # Ljava/lang/String;
    .param p3, "flagPrefix"    # Ljava/lang/String;
    .param p4, "allowedInRelease"    # Z

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->metadataKey:Ljava/lang/String;

    .line 78
    iput-boolean p4, p0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->allowedInRelease:Z

    .line 79
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lio/flutter/embedding/engine/FlutterEngineFlags$1;

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "engineArgument"    # Ljava/lang/String;
    .param p2, "metaDataName"    # Ljava/lang/String;
    .param p3, "allowedInRelease"    # Z

    .line 60
    const-string v0, "io.flutter.embedding.android."

    invoke-direct {p0, p1, p2, v0, p3}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLio/flutter/embedding/engine/FlutterEngineFlags$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Z
    .param p4, "x3"    # Lio/flutter/embedding/engine/FlutterEngineFlags$1;

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public hasCommandLineValue()Z
    .locals 2

    .line 83
    iget-object v0, p0, Lio/flutter/embedding/engine/FlutterEngineFlags$Flag;->engineArgument:Ljava/lang/String;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
