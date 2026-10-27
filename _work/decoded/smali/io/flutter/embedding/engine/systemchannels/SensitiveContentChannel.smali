.class public Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;
.super Ljava/lang/Object;
.source "SensitiveContentChannel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;
    }
.end annotation


# static fields
.field public static final AUTO_SENSITIVE_CONTENT_SENSITIVITY:I = 0x0

.field public static final NOT_SENSITIVE_CONTENT_SENSITIVITY:I = 0x2

.field public static final SENSITIVE_CONTENT_SENSITIVITY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SensitiveContentChannel"

.field public static final UNKNOWN_CONTENT_SENSITIVITY:I = 0x3


# instance fields
.field public final channel:Lio/flutter/plugin/common/MethodChannel;

.field public final parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

.field private sensitiveContentMethodHandler:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V
    .locals 3
    .param p1, "dartExecutor"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$1;-><init>(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    .line 146
    new-instance v0, Lio/flutter/plugin/common/MethodChannel;

    const-string v1, "flutter/sensitivecontent"

    sget-object v2, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    invoke-direct {v0, p1, v1, v2}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    .line 148
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->channel:Lio/flutter/plugin/common/MethodChannel;

    iget-object v1, p0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->parsingMethodHandler:Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;

    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;)Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    .line 22
    iget-object v0, p0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->sensitiveContentMethodHandler:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;

    return-object v0
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;I)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->deserializeContentSensitivity(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;I)I
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;
    .param p1, "x1"    # I

    .line 22
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->serializeContentSensitivity(I)I

    move-result v0

    return v0
.end method

.method private deserializeContentSensitivity(I)I
    .locals 3
    .param p1, "contentSensitivityIndex"    # I

    .line 109
    packed-switch p1, :pswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentSensitivityIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not known to the SensitiveContentChannel."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 113
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 111
    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private serializeContentSensitivity(I)I
    .locals 1
    .param p1, "contentSensitivityValue"    # I

    .line 131
    packed-switch p1, :pswitch_data_0

    .line 141
    const/4 v0, 0x3

    return v0

    .line 137
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 135
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 133
    :pswitch_2
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public setSensitiveContentMethodHandler(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;)V
    .locals 0
    .param p1, "sensitiveContentMethodHandler"    # Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;

    .line 157
    iput-object p1, p0, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->sensitiveContentMethodHandler:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;

    .line 158
    return-void
.end method
