.class final Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;
.super Ljava/lang/Object;
.source "FlutterRenderer.java"

# interfaces
.implements Lio/flutter/view/TextureRegistry$ImageTextureEntry;
.implements Lio/flutter/view/TextureRegistry$ImageConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/renderer/FlutterRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ImageTextureRegistryEntry"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageTextureRegistryEntry"


# instance fields
.field private final id:J

.field private ignoringFence:Z

.field private image:Landroid/media/Image;

.field private released:Z

.field final synthetic this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V
    .locals 1
    .param p1, "this$0"    # Lio/flutter/embedding/engine/renderer/FlutterRenderer;
    .param p2, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1025
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    .line 1026
    iput-wide p2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    .line 1027
    return-void
.end method

.method private maybeWaitOnFence(Landroid/media/Image;)V
    .locals 2
    .param p1, "image"    # Landroid/media/Image;

    .line 1078
    if-nez p1, :cond_0

    .line 1079
    return-void

    .line 1081
    :cond_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    if-eqz v0, :cond_1

    .line 1082
    return-void

    .line 1084
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_2

    .line 1086
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->waitOnFence(Landroid/media/Image;)V

    .line 1087
    return-void

    .line 1090
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->ignoringFence:Z

    .line 1091
    const-string v0, "ImageTextureRegistryEntry"

    const-string v1, "ImageTextureEntry can\'t wait on the fence on Android < 33"

    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method private waitOnFence(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 1069
    :try_start_0
    invoke-virtual {p1}, Landroid/media/Image;->getFence()Landroid/hardware/SyncFence;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1070
    .local v0, "fence":Landroid/hardware/SyncFence;
    :try_start_1
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->awaitForever()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1071
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1073
    .end local v0    # "fence":Landroid/hardware/SyncFence;
    :cond_0
    goto :goto_1

    .line 1069
    .restart local v0    # "fence":Landroid/hardware/SyncFence;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Landroid/hardware/SyncFence;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "image":Landroid/media/Image;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1071
    .end local v0    # "fence":Landroid/hardware/SyncFence;
    .restart local p1    # "image":Landroid/media/Image;
    :catch_0
    move-exception v0

    .line 1074
    :goto_1
    return-void
.end method


# virtual methods
.method public acquireLatestImage()Landroid/media/Image;
    .locals 2

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 1100
    .local v0, "r":Landroid/media/Image;
    const/4 v1, 0x0

    iput-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 1101
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1102
    invoke-direct {p0, v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->maybeWaitOnFence(Landroid/media/Image;)V

    .line 1103
    return-object v0

    .line 1101
    .end local v0    # "r":Landroid/media/Image;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1109
    :try_start_0
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1110
    return-void

    .line 1112
    :cond_0
    :try_start_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 1114
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1115
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 1117
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    .line 1118
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {v0}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$300(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;

    iget-wide v2, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    iget-object v4, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-static {v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$200(Lio/flutter/embedding/engine/renderer/FlutterRenderer;)Lio/flutter/embedding/engine/FlutterJNI;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lio/flutter/embedding/engine/renderer/FlutterRenderer$TextureFinalizerRunnable;-><init>(JLio/flutter/embedding/engine/FlutterJNI;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1120
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1121
    nop

    .line 1122
    return-void

    .line 1120
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1121
    throw v0
.end method

.method public id()J
    .locals 2

    .line 1031
    iget-wide v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    return-wide v0
.end method

.method public pushImage(Landroid/media/Image;)V
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    .line 1049
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    if-eqz v0, :cond_0

    .line 1050
    return-void

    .line 1053
    :cond_0
    monitor-enter p0

    .line 1054
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 1055
    .local v0, "toClose":Landroid/media/Image;
    iput-object p1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 1056
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1058
    if-eqz v0, :cond_1

    .line 1059
    const-string v1, "ImageTextureRegistryEntry"

    const-string v2, "Dropping PlatformView Frame"

    invoke-static {v1, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1062
    :cond_1
    if-eqz p1, :cond_2

    .line 1063
    iget-object v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    invoke-virtual {v1}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->scheduleEngineFrame()V

    .line 1065
    :cond_2
    return-void

    .line 1056
    .end local v0    # "toClose":Landroid/media/Image;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 3

    .line 1036
    iget-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    if-eqz v0, :cond_0

    .line 1037
    return-void

    .line 1039
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->released:Z

    .line 1040
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    if-eqz v0, :cond_1

    .line 1041
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    invoke-virtual {v0}, Landroid/media/Image;->close()V

    .line 1042
    const/4 v0, 0x0

    iput-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->image:Landroid/media/Image;

    .line 1044
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->this$0:Lio/flutter/embedding/engine/renderer/FlutterRenderer;

    iget-wide v1, p0, Lio/flutter/embedding/engine/renderer/FlutterRenderer$ImageTextureRegistryEntry;->id:J

    invoke-static {v0, v1, v2}, Lio/flutter/embedding/engine/renderer/FlutterRenderer;->access$100(Lio/flutter/embedding/engine/renderer/FlutterRenderer;J)V

    .line 1045
    return-void
.end method
