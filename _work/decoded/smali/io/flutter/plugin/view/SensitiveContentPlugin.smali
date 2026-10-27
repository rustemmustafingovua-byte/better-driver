.class public Lio/flutter/plugin/view/SensitiveContentPlugin;
.super Ljava/lang/Object;
.source "SensitiveContentPlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;


# instance fields
.field private mFlutterActivity:Landroid/app/Activity;

.field private final mFlutterViewId:I

.field private final mSensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;


# direct methods
.method public constructor <init>(ILandroid/app/Activity;Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;)V
    .locals 1
    .param p1, "flutterViewId"    # I
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "sensitiveContentChannel"    # Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p2, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterActivity:Landroid/app/Activity;

    .line 35
    iput p1, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterViewId:I

    .line 36
    iput-object p3, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mSensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    .line 38
    iget-object v0, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mSensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    invoke-virtual {v0, p0}, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->setSensitiveContentMethodHandler(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;)V

    .line 39
    return-void
.end method

.method private getFlutterViewNotFoundErrorReason()Ljava/lang/String;
    .locals 2

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FlutterView with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterViewId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "not found"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNotSupportedErrorReason()Ljava/lang/String;
    .locals 1

    .line 42
    const-string v0, "isSupported() should be called before attempting to set content sensitivity as it is not supported on this device."

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 124
    iget-object v0, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mSensitiveContentChannel:Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel;->setSensitiveContentMethodHandler(Lio/flutter/embedding/engine/systemchannels/SensitiveContentChannel$SensitiveContentMethodHandler;)V

    .line 125
    iput-object v1, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterActivity:Landroid/app/Activity;

    .line 126
    return-void
.end method

.method public getContentSensitivity()I
    .locals 3

    .line 92
    invoke-virtual {p0}, Lio/flutter/plugin/view/SensitiveContentPlugin;->isSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const/4 v0, 0x2

    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterActivity:Landroid/app/Activity;

    iget v1, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 99
    .local v0, "flutterView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 103
    invoke-virtual {v0}, Landroid/view/View;->getContentSensitivity()I

    move-result v1

    .line 104
    .local v1, "currentContentSensitivity":I
    return v1

    .line 100
    .end local v1    # "currentContentSensitivity":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Lio/flutter/plugin/view/SensitiveContentPlugin;->getFlutterViewNotFoundErrorReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isSupported()Z
    .locals 2

    .line 114
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 115
    .local v0, "isSupported":Z
    :goto_0
    return v0
.end method

.method public setContentSensitivity(I)V
    .locals 3
    .param p1, "requestedContentSensitivity"    # I

    .line 58
    invoke-virtual {p0}, Lio/flutter/plugin/view/SensitiveContentPlugin;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterActivity:Landroid/app/Activity;

    iget v1, p0, Lio/flutter/plugin/view/SensitiveContentPlugin;->mFlutterViewId:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "flutterView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {v0}, Landroid/view/View;->getContentSensitivity()I

    move-result v1

    .line 70
    .local v1, "currentContentSensitivity":I
    if-ne v1, p1, :cond_0

    .line 72
    return-void

    .line 76
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setContentSensitivity(I)V

    .line 80
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 81
    return-void

    .line 65
    .end local v1    # "currentContentSensitivity":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Lio/flutter/plugin/view/SensitiveContentPlugin;->getFlutterViewNotFoundErrorReason()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    .end local v0    # "flutterView":Landroid/view/View;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Lio/flutter/plugin/view/SensitiveContentPlugin;->getNotSupportedErrorReason()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
