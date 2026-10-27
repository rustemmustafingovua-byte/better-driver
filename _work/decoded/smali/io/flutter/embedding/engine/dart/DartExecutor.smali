.class public Lio/flutter/embedding/engine/dart/DartExecutor;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;,
        Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DartExecutor"


# instance fields
.field private final assetManager:Landroid/content/res/AssetManager;

.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

.field private final dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

.field private final engineId:J

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private isApplicationRunning:Z

.field private final isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

.field private isolateServiceId:Ljava/lang/String;

.field private isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;


# direct methods
.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;)V
    .locals 2
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;

    .line 64
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/flutter/embedding/engine/dart/DartExecutor;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;J)V

    .line 65
    return-void
.end method

.method public constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Landroid/content/res/AssetManager;J)V
    .locals 3
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p2, "assetManager"    # Landroid/content/res/AssetManager;
    .param p3, "engineId"    # J

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    .line 51
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor$1;

    invoke-direct {v0, p0}, Lio/flutter/embedding/engine/dart/DartExecutor$1;-><init>(Lio/flutter/embedding/engine/dart/DartExecutor;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    .line 69
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 70
    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->assetManager:Landroid/content/res/AssetManager;

    .line 71
    iput-wide p3, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->engineId:J

    .line 72
    new-instance v0, Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-direct {v0, p1}, Lio/flutter/embedding/engine/dart/DartMessenger;-><init>(Lio/flutter/embedding/engine/FlutterJNI;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 73
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    const-string v1, "flutter/isolate"

    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateChannelMessageHandler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    invoke-virtual {v0, v1, v2}, Lio/flutter/embedding/engine/dart/DartMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    .line 74
    new-instance v0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger;Lio/flutter/embedding/engine/dart/DartExecutor$1;)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    .line 77
    invoke-virtual {p1}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    .line 80
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lio/flutter/embedding/engine/dart/DartExecutor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 39
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lio/flutter/embedding/engine/dart/DartExecutor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lio/flutter/embedding/engine/dart/DartExecutor;
    .param p1, "x1"    # Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lio/flutter/embedding/engine/dart/DartExecutor;)Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;
    .locals 1
    .param p0, "x0"    # Lio/flutter/embedding/engine/dart/DartExecutor;

    .line 39
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    return-object v0
.end method


# virtual methods
.method public disableBufferingIncomingMessages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->disableBufferingIncomingMessages()V

    .line 263
    return-void
.end method

.method public enableBufferingIncomingMessages()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages()V

    .line 256
    return-void
.end method

.method public executeDartCallback(Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;)V
    .locals 11
    .param p1, "dartCallback"    # Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;

    .line 175
    iget-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "Attempted to run a DartExecutor that is already running."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    return-void

    .line 180
    :cond_0
    const-string v0, "DartExecutor#executeDartCallback"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v2

    .line 181
    .local v2, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart callback: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v3, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v4, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->pathToBundle:Ljava/lang/String;

    iget-object v0, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->callbackHandle:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v5, v0, Lio/flutter/view/FlutterCallbackInformation;->callbackName:Ljava/lang/String;

    iget-object v0, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->callbackHandle:Lio/flutter/view/FlutterCallbackInformation;

    iget-object v6, v0, Lio/flutter/view/FlutterCallbackInformation;->callbackLibraryPath:Ljava/lang/String;

    iget-object v7, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartCallback;->androidAssetManager:Landroid/content/res/AssetManager;

    iget-wide v9, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->engineId:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v10}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;J)V

    .line 190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/flutter/util/TraceSection;->close()V

    .line 192
    .end local v2    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 180
    .restart local v2    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v0

    move-object v1, v0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method public executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;)V
    .locals 1
    .param p1, "dartEntrypoint"    # Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;

    .line 134
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/flutter/embedding/engine/dart/DartExecutor;->executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V

    .line 135
    return-void
.end method

.method public executeDartEntrypoint(Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;Ljava/util/List;)V
    .locals 11
    .param p1, "dartEntrypoint"    # Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 148
    .local p2, "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    const-string v1, "DartExecutor"

    if-eqz v0, :cond_0

    .line 149
    const-string v0, "Attempted to run a DartExecutor that is already running."

    invoke-static {v1, v0}, Lio/flutter/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void

    .line 153
    :cond_0
    const-string v0, "DartExecutor#executeDartEntrypoint"

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v2

    .line 154
    .local v2, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Executing Dart entrypoint: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v3, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v4, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->pathToBundle:Ljava/lang/String;

    iget-object v5, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointFunctionName:Ljava/lang/String;

    iget-object v6, p1, Lio/flutter/embedding/engine/dart/DartExecutor$DartEntrypoint;->dartEntrypointLibrary:Ljava/lang/String;

    iget-object v7, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->assetManager:Landroid/content/res/AssetManager;

    iget-wide v9, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->engineId:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v8, p2

    .end local p2    # "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v8, "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lio/flutter/embedding/engine/FlutterJNI;->runBundleAndSnapshotFromLibrary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/util/List;J)V

    .line 163
    const/4 p2, 0x1

    iput-boolean p2, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/flutter/util/TraceSection;->close()V

    .line 165
    .end local v2    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    return-void

    .line 153
    .restart local v2    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v0

    move-object p2, v0

    goto :goto_0

    .end local v8    # "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p2    # "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v8, p2

    move-object p2, v0

    .end local p2    # "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "dartEntrypointArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lio/flutter/util/TraceSection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p2
.end method

.method public getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;
    .locals 1

    .line 200
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-object v0
.end method

.method public getIsolateServiceId()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    return-object v0
.end method

.method public getPendingChannelResponseCount()I
    .locals 1

    .line 282
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->getPendingChannelResponseCount()I

    move-result v0

    return v0
.end method

.method public isExecutingDart()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isApplicationRunning:Z

    return v0
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 1
    .param p1, "options"    # Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 209
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v0

    return-object v0
.end method

.method public notifyLowMemoryWarning()V
    .locals 1

    .line 321
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/FlutterJNI;->notifyLowMemoryWarning()V

    .line 324
    :cond_0
    return-void
.end method

.method public onAttachedToJNI()V
    .locals 2

    .line 95
    const-string v0, "DartExecutor"

    const-string v1, "Attached to JNI. Registering the platform message handler for this Dart execution context."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->dartMessenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V

    .line 100
    return-void
.end method

.method public onDetachedFromJNI()V
    .locals 2

    .line 110
    const-string v0, "DartExecutor"

    const-string v1, "Detached from JNI. De-registering the platform message handler for this Dart execution context."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lio/flutter/embedding/engine/FlutterJNI;->setPlatformMessageHandler(Lio/flutter/embedding/engine/dart/PlatformMessageHandler;)V

    .line 115
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 217
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    .line 218
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "callback"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    .line 229
    return-void
.end method

.method public setIsolateServiceIdListener(Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;)V
    .locals 2
    .param p1, "listener"    # Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    .line 304
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    .line 305
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceIdListener:Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->isolateServiceId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/dart/DartExecutor$IsolateServiceIdListener;->onIsolateServiceIdAvailable(Ljava/lang/String;)V

    .line 308
    :cond_0
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 237
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    .line 238
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;
    .param p3, "taskQueue"    # Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    invoke-interface {v0, p1, p2, p3}, Lio/flutter/plugin/common/BinaryMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    .line 249
    return-void
.end method
