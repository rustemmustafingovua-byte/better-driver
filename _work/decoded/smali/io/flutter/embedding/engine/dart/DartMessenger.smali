.class Lio/flutter/embedding/engine/dart/DartMessenger;
.super Ljava/lang/Object;
.source "DartMessenger.java"

# interfaces
.implements Lio/flutter/plugin/common/BinaryMessenger;
.implements Lio/flutter/embedding/engine/dart/PlatformMessageHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;,
        Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;,
        Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;,
        Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueToken;,
        Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;,
        Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;,
        Lio/flutter/embedding/engine/dart/DartMessenger$Reply;,
        Lio/flutter/embedding/engine/dart/DartMessenger$SerialTaskQueue;,
        Lio/flutter/embedding/engine/dart/DartMessenger$ConcurrentTaskQueue;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DartMessenger"


# instance fields
.field private bufferedMessages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private createdTaskQueues:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;",
            "Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final enableBufferingIncomingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

.field private final handlersLock:Ljava/lang/Object;

.field private final messageHandlers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;",
            ">;"
        }
    .end annotation
.end field

.field private nextReplyId:I

.field private final pendingReplies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;",
            ">;"
        }
    .end annotation
.end field

.field private final platformTaskQueue:Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

.field private taskQueueFactory:Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;


# direct methods
.method constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;)V
    .locals 1
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;

    .line 72
    new-instance v0, Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;

    invoke-direct {v0}, Lio/flutter/embedding/engine/dart/DartMessenger$DefaultTaskQueueFactory;-><init>()V

    invoke-direct {p0, p1, v0}, Lio/flutter/embedding/engine/dart/DartMessenger;-><init>(Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;)V

    .line 73
    return-void
.end method

.method constructor <init>(Lio/flutter/embedding/engine/FlutterJNI;Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;)V
    .locals 2
    .param p1, "flutterJNI"    # Lio/flutter/embedding/engine/FlutterJNI;
    .param p2, "taskQueueFactory"    # Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->messageHandlers:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->handlersLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->pendingReplies:Ljava/util/Map;

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->nextReplyId:I

    .line 58
    new-instance v0, Lio/flutter/embedding/engine/dart/PlatformTaskQueue;

    invoke-direct {v0}, Lio/flutter/embedding/engine/dart/PlatformTaskQueue;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->platformTaskQueue:Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

    .line 60
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->createdTaskQueues:Ljava/util/WeakHashMap;

    .line 67
    iput-object p1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    .line 68
    iput-object p2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->taskQueueFactory:Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;

    .line 69
    return-void
.end method

.method private dispatchMessageToQueue(Ljava/lang/String;Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;IJ)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handlerInfo"    # Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    .param p3, "message"    # Ljava/nio/ByteBuffer;
    .param p4, "replyId"    # I
    .param p5, "messageData"    # J

    .line 306
    if-eqz p2, :cond_0

    iget-object v0, p2, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;->taskQueue:Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v8, v0

    .line 307
    .local v8, "taskQueue":Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformChannel ScheduleHandler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p4}, Lio/flutter/util/TraceSection;->beginAsyncSection(Ljava/lang/String;I)V

    .line 308
    new-instance v0, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move v3, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lio/flutter/embedding/engine/dart/DartMessenger$$ExternalSyntheticLambda0;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger;Ljava/lang/String;ILio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;J)V

    .line 325
    .local v0, "myRunnable":Ljava/lang/Runnable;
    if-nez v8, :cond_1

    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->platformTaskQueue:Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

    goto :goto_1

    :cond_1
    move-object v2, v8

    .line 326
    .local v2, "nonnullTaskQueue":Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    :goto_1
    invoke-interface {v2, v0}, Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;->dispatch(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method private static handleError(Ljava/lang/Error;)V
    .locals 2
    .param p0, "err"    # Ljava/lang/Error;

    .line 405
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 406
    .local v0, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 409
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 410
    return-void

    .line 407
    :cond_0
    throw p0
.end method

.method private invokeHandler(Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;I)V
    .locals 4
    .param p1, "handlerInfo"    # Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "replyId"    # I

    .line 283
    const-string v0, "DartMessenger"

    if-eqz p1, :cond_0

    .line 285
    :try_start_0
    const-string v1, "Deferring to registered handler to process message."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget-object v1, p1, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;->handler:Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    new-instance v2, Lio/flutter/embedding/engine/dart/DartMessenger$Reply;

    iget-object v3, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-direct {v2, v3, p3}, Lio/flutter/embedding/engine/dart/DartMessenger$Reply;-><init>(Lio/flutter/embedding/engine/FlutterJNI;I)V

    invoke-interface {v1, p2, v2}, Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;->onMessage(Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 290
    :catch_0
    move-exception v0

    .line 291
    .local v0, "err":Ljava/lang/Error;
    invoke-static {v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->handleError(Ljava/lang/Error;)V

    .end local v0    # "err":Ljava/lang/Error;
    goto :goto_0

    .line 287
    :catch_1
    move-exception v1

    .line 288
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Uncaught exception in binary message listener"

    invoke-static {v0, v2, v1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 289
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    .line 292
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 294
    :cond_0
    const-string v1, "No registered handler for message. Responding to Dart with empty reply message."

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p3}, Lio/flutter/embedding/engine/FlutterJNI;->invokePlatformMessageEmptyResponseCallback(I)V

    .line 297
    :goto_1
    return-void
.end method


# virtual methods
.method public disableBufferingIncomingMessages()V
    .locals 13

    .line 241
    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->handlersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 243
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    .line 244
    .local v0, "pendingMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    .line 245
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 247
    .local v2, "channel":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;

    .line 248
    .local v4, "info":Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;
    nop

    .line 249
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Ljava/lang/String;

    iget-object v9, v4, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->message:Ljava/nio/ByteBuffer;

    iget v10, v4, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->replyId:I

    iget-wide v11, v4, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->messageData:J

    .line 248
    const/4 v8, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lio/flutter/embedding/engine/dart/DartMessenger;->dispatchMessageToQueue(Ljava/lang/String;Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;IJ)V

    .line 250
    .end local v4    # "info":Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;
    goto :goto_1

    .line 251
    .end local v2    # "channel":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;>;"
    :cond_0
    goto :goto_0

    .line 252
    :cond_1
    return-void

    .line 245
    .end local v0    # "pendingMessages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;>;"
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public enableBufferingIncomingMessages()V
    .locals 2

    .line 235
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 236
    return-void
.end method

.method public getPendingChannelResponseCount()I
    .locals 1

    .line 397
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->pendingReplies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public handleMessageFromDart(Ljava/lang/String;Ljava/nio/ByteBuffer;IJ)V
    .locals 9
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "replyId"    # I
    .param p4, "messageData"    # J

    .line 333
    const-string v0, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message from Dart over channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->handlersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 340
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    move-object v4, v0

    .line 341
    .local v4, "handlerInfo":Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->enableBufferingIncomingMessages:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 342
    .local v0, "messageDeferred":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 351
    :try_start_1
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 352
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    :cond_1
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 355
    .local v2, "buffer":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;"
    new-instance v3, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;

    invoke-direct {v3, p2, p3, p4, p5}, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 357
    .end local v0    # "messageDeferred":Z
    .end local v2    # "buffer":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;"
    .end local v4    # "handlerInfo":Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    :catchall_0
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    goto :goto_3

    .restart local v0    # "messageDeferred":Z
    .restart local v4    # "handlerInfo":Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    :cond_2
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 358
    if-nez v0, :cond_3

    .line 359
    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "replyId":I
    .end local p4    # "messageData":J
    .local v3, "channel":Ljava/lang/String;
    .local v5, "message":Ljava/nio/ByteBuffer;
    .local v6, "replyId":I
    .local v7, "messageData":J
    invoke-direct/range {v2 .. v8}, Lio/flutter/embedding/engine/dart/DartMessenger;->dispatchMessageToQueue(Ljava/lang/String;Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;IJ)V

    goto :goto_2

    .line 358
    .end local v3    # "channel":Ljava/lang/String;
    .end local v5    # "message":Ljava/nio/ByteBuffer;
    .end local v6    # "replyId":I
    .end local v7    # "messageData":J
    .restart local p1    # "channel":Ljava/lang/String;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "replyId":I
    .restart local p4    # "messageData":J
    :cond_3
    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .line 361
    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "replyId":I
    .end local p4    # "messageData":J
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v5    # "message":Ljava/nio/ByteBuffer;
    .restart local v6    # "replyId":I
    .restart local v7    # "messageData":J
    :goto_2
    return-void

    .line 357
    .end local v0    # "messageDeferred":Z
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "handlerInfo":Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    .end local v5    # "message":Ljava/nio/ByteBuffer;
    .end local v6    # "replyId":I
    .end local v7    # "messageData":J
    .restart local p1    # "channel":Ljava/lang/String;
    .restart local p2    # "message":Ljava/nio/ByteBuffer;
    .restart local p3    # "replyId":I
    .restart local p4    # "messageData":J
    :catchall_1
    move-exception v0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move-wide v7, p4

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "message":Ljava/nio/ByteBuffer;
    .end local p3    # "replyId":I
    .end local p4    # "messageData":J
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v5    # "message":Ljava/nio/ByteBuffer;
    .restart local v6    # "replyId":I
    .restart local v7    # "messageData":J
    :goto_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_3
.end method

.method public handlePlatformMessageResponse(ILjava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "replyId"    # I
    .param p2, "reply"    # Ljava/nio/ByteBuffer;

    .line 365
    const-string v0, "Received message reply from Dart."

    const-string v1, "DartMessenger"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->pendingReplies:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    .line 367
    .local v0, "callback":Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;
    if-eqz v0, :cond_1

    .line 369
    :try_start_0
    const-string v2, "Invoking registered callback for reply from Dart."

    invoke-static {v1, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    invoke-interface {v0, p2}, Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;->reply(Ljava/nio/ByteBuffer;)V

    .line 371
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 374
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 378
    :catch_0
    move-exception v1

    .line 379
    .local v1, "err":Ljava/lang/Error;
    invoke-static {v1}, Lio/flutter/embedding/engine/dart/DartMessenger;->handleError(Ljava/lang/Error;)V

    goto :goto_1

    .line 376
    .end local v1    # "err":Ljava/lang/Error;
    :catch_1
    move-exception v2

    .line 377
    .local v2, "ex":Ljava/lang/Exception;
    const-string v3, "Uncaught exception in binary message reply handler"

    invoke-static {v1, v3, v2}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 380
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 382
    :cond_1
    :goto_1
    return-void
.end method

.method synthetic lambda$dispatchMessageToQueue$0$io-flutter-embedding-engine-dart-DartMessenger(Ljava/lang/String;ILio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;J)V
    .locals 3
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "replyId"    # I
    .param p3, "handlerInfo"    # Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    .param p4, "message"    # Ljava/nio/ByteBuffer;
    .param p5, "messageData"    # J

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlatformChannel ScheduleHandler on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lio/flutter/util/TraceSection;->endAsyncSection(Ljava/lang/String;I)V

    .line 311
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartMessenger#handleMessageFromDart on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 312
    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 313
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_1
    invoke-direct {p0, p3, p4, p2}, Lio/flutter/embedding/engine/dart/DartMessenger;->invokeHandler(Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;I)V

    .line 314
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 317
    const/4 v1, 0x0

    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 321
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_1
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v0, p5, p6}, Lio/flutter/embedding/engine/FlutterJNI;->cleanupMessageData(J)V

    .line 322
    nop

    .line 323
    return-void

    .line 311
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "channel":Ljava/lang/String;
    .end local p2    # "replyId":I
    .end local p3    # "handlerInfo":Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    .end local p4    # "message":Ljava/nio/ByteBuffer;
    .end local p5    # "messageData":J
    :cond_2
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 321
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    .restart local p1    # "channel":Ljava/lang/String;
    .restart local p2    # "replyId":I
    .restart local p3    # "handlerInfo":Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;
    .restart local p4    # "message":Ljava/nio/ByteBuffer;
    .restart local p5    # "messageData":J
    :catchall_2
    move-exception v0

    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v1, p5, p6}, Lio/flutter/embedding/engine/FlutterJNI;->cleanupMessageData(J)V

    .line 322
    throw v0
.end method

.method public makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;
    .locals 3
    .param p1, "options"    # Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;

    .line 185
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->taskQueueFactory:Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;

    invoke-interface {v0, p1}, Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueFactory;->makeBackgroundTaskQueue(Lio/flutter/plugin/common/BinaryMessenger$TaskQueueOptions;)Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

    move-result-object v0

    .line 186
    .local v0, "taskQueue":Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    new-instance v1, Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueToken;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueToken;-><init>(Lio/flutter/embedding/engine/dart/DartMessenger$1;)V

    .line 187
    .local v1, "token":Lio/flutter/embedding/engine/dart/DartMessenger$TaskQueueToken;
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->createdTaskQueues:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    return-object v1
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending message over channel \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DartMessenger"

    invoke-static {v1, v0}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V

    .line 259
    return-void
.end method

.method public send(Ljava/lang/String;Ljava/nio/ByteBuffer;Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;)V
    .locals 4
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/nio/ByteBuffer;
    .param p3, "callback"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryReply;

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DartMessenger#send on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/flutter/util/TraceSection;->scoped(Ljava/lang/String;)Lio/flutter/util/TraceSection;

    move-result-object v0

    .line 267
    .local v0, "e":Lio/flutter/util/TraceSection;
    :try_start_0
    const-string v1, "DartMessenger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending message with callback over channel \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->nextReplyId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->nextReplyId:I

    .line 269
    .local v1, "replyId":I
    if-eqz p3, :cond_0

    .line 270
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->pendingReplies:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    :cond_0
    if-nez p2, :cond_1

    .line 273
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {v2, p1, v1}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchEmptyPlatformMessage(Ljava/lang/String;I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->flutterJNI:Lio/flutter/embedding/engine/FlutterJNI;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v2, p1, p2, v3, v1}, Lio/flutter/embedding/engine/FlutterJNI;->dispatchPlatformMessage(Ljava/lang/String;Ljava/nio/ByteBuffer;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 277
    .end local v1    # "replyId":I
    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V

    .line 278
    .end local v0    # "e":Lio/flutter/util/TraceSection;
    :cond_2
    return-void

    .line 266
    .restart local v0    # "e":Lio/flutter/util/TraceSection;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-virtual {v0}, Lio/flutter/util/TraceSection;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;)V
    .locals 1
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;

    .line 194
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lio/flutter/embedding/engine/dart/DartMessenger;->setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    .line 195
    return-void
.end method

.method public setMessageHandler(Ljava/lang/String;Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V
    .locals 12
    .param p1, "channel"    # Ljava/lang/String;
    .param p2, "handler"    # Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;
    .param p3, "taskQueue"    # Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    .line 202
    if-nez p2, :cond_0

    .line 203
    const-string v0, "DartMessenger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing handler for channel \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->handlersLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_0
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->messageHandlers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 209
    :cond_0
    const/4 v0, 0x0

    .line 210
    .local v0, "dartMessengerTaskQueue":Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    if-eqz p3, :cond_2

    .line 211
    iget-object v1, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->createdTaskQueues:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;

    .line 212
    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 213
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unrecognized TaskQueue, use BinaryMessenger to create your TaskQueue (ex makeBackgroundTaskQueue)."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 210
    :cond_2
    move-object v1, v0

    .line 217
    .end local v0    # "dartMessengerTaskQueue":Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    .local v1, "dartMessengerTaskQueue":Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;
    :goto_0
    const-string v0, "DartMessenger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting handler for channel \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lio/flutter/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->handlersLock:Ljava/lang/Object;

    monitor-enter v2

    .line 221
    :try_start_1
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->messageHandlers:Ljava/util/Map;

    new-instance v3, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    invoke-direct {v3, p2, v1}, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;-><init>(Lio/flutter/plugin/common/BinaryMessenger$BinaryMessageHandler;Lio/flutter/embedding/engine/dart/DartMessenger$DartMessengerTaskQueue;)V

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v0, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->bufferedMessages:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 223
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;"
    if-nez v0, :cond_3

    .line 224
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 226
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;"
    :catchall_1
    move-exception v0

    move-object v6, p1

    goto :goto_2

    .restart local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;"
    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 227
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;

    .line 228
    .local v3, "info":Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;
    iget-object v4, p0, Lio/flutter/embedding/engine/dart/DartMessenger;->messageHandlers:Ljava/util/Map;

    .line 229
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;

    iget-object v8, v3, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->message:Ljava/nio/ByteBuffer;

    iget v9, v3, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->replyId:I

    iget-wide v10, v3, Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;->messageData:J

    .line 228
    move-object v5, p0

    move-object v6, p1

    .end local p1    # "channel":Ljava/lang/String;
    .local v6, "channel":Ljava/lang/String;
    invoke-direct/range {v5 .. v11}, Lio/flutter/embedding/engine/dart/DartMessenger;->dispatchMessageToQueue(Ljava/lang/String;Lio/flutter/embedding/engine/dart/DartMessenger$HandlerInfo;Ljava/nio/ByteBuffer;IJ)V

    .line 230
    .end local v3    # "info":Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;
    goto :goto_1

    .line 231
    .end local v6    # "channel":Ljava/lang/String;
    .restart local p1    # "channel":Ljava/lang/String;
    :cond_4
    return-void

    .line 226
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lio/flutter/embedding/engine/dart/DartMessenger$BufferedMessageInfo;>;"
    :catchall_2
    move-exception v0

    move-object v6, p1

    .end local p1    # "channel":Ljava/lang/String;
    .restart local v6    # "channel":Ljava/lang/String;
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_2
.end method
