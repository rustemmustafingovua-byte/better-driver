.class Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;
.super Ljava/lang/Object;
.source "DartExecutor.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/embedding/engine/dart/DartExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultBinaryMessenger"
.end annotation


# instance fields
.field private final messenger:Lio/flutter/embedding/engine/dart/DartMessenger;


# direct methods
.method private constructor <init>(Lio/flutter/embedding/engine/dart/DartMessenger;)V
    .locals 0
    .param p1, "messenger"    # Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    .line 441
    return-void
.end method

.method synthetic constructor <init>(Lio/flutter/embedding/engine/dart/DartMessenger;Lio/flutter/embedding/engine/dart/DartExecutor$1;)V
    .locals 0
    .param p1, "x0"    # Lio/flutter/embedding/engine/dart/DartMessenger;
    .param p2, "x1"    # Lio/flutter/embedding/engine/dart/DartExecutor$1;

    .line 436
    invoke-direct {p0, p1}, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger;)V

    return-void
.end method


# virtual methods
.method public disableBufferingIncomingMessages()V
    .locals 1

    .line 509
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->disableBufferingIncomingMessages()V

    .line 510
    return-void
.end method

.method public enableBufferingIncomingMessages()V
    .locals 1

    .line 504
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages()V

    .line 505
    return-void
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 1
    .param p1, "options"    # Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;

    .line 444
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0, p1}, Lio/flutter/embedding/engine/dart/DartMessenger;->makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v0

    return-object v0
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;

    .line 457
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lio/flutter/embedding/engine/dart/DartMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    .line 458
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "callback"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    .line 475
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/dart/DartMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    .line 476
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    .line 490
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0, p1, p2}, Lio/flutter/embedding/engine/dart/DartMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V

    .line 491
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;
    .param p3, "taskQueue"    # Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    .line 499
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartExecutor$DefaultBinaryMessenger;->messenger:Lio/flutter/embedding/engine/dart/DartMessenger;

    invoke-virtual {v0, p1, p2, p3}, Lio/flutter/embedding/engine/dart/DartMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    .line 500
    return-void
.end method
