.class Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "AndroidConnectionStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->ensureNetworkCallbackRegistered()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;


# direct methods
.method constructor <init>(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)V
    .locals 0
    .param p1, "this$0"    # Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 209
    iput-object p1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method

.method private clearCacheAndNotifyObservers()V
    .locals 7

    .line 253
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$100(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$400(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 256
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$502(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/NetworkCapabilities;)Landroid/net/NetworkCapabilities;

    .line 257
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v2, v3}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$002(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/Network;)Landroid/net/Network;

    .line 258
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v3}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$700(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/time/MonotonicTicker;

    move-result-object v3

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x2

    invoke-static {v3, v5, v6, v4}, Lio/sentry/time/Deadline;->after(Lio/sentry/time/MonotonicTicker;JLjava/util/concurrent/TimeUnit;)Lio/sentry/time/Deadline;

    move-result-object v3

    invoke-static {v2, v3}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$602(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Lio/sentry/time/Deadline;)Lio/sentry/time/Deadline;

    .line 260
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$800(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/SentryOptions;

    move-result-object v2

    .line 261
    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v2

    sget-object v3, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const-string v4, "Cache cleared - network lost/unavailable"

    new-array v1, v1, [Ljava/lang/Object;

    .line 262
    invoke-interface {v2, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 267
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$900(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    .line 268
    .local v2, "observer":Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
    sget-object v3, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->DISCONNECTED:Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    invoke-interface {v2, v3}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    .end local v2    # "observer":Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
    goto :goto_0

    .line 270
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 271
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 255
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method private hasSignificantCapabilityChanges(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 7
    .param p1, "old"    # Landroid/net/NetworkCapabilities;
    .param p2, "new_"    # Landroid/net/NetworkCapabilities;

    .line 341
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$1200()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 342
    .local v4, "capability":I
    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    invoke-virtual {p2, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    .line 344
    const/4 v0, 0x1

    return v0

    .line 341
    .end local v4    # "capability":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 348
    :cond_1
    return v2
.end method

.method private hasSignificantTransportChanges(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z
    .locals 7
    .param p1, "old"    # Landroid/net/NetworkCapabilities;
    .param p2, "new_"    # Landroid/net/NetworkCapabilities;

    .line 355
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$1300()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 356
    .local v4, "transport":I
    invoke-virtual {p1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    invoke-virtual {p2, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v6

    if-eq v5, v6, :cond_0

    .line 357
    const/4 v0, 0x1

    return v0

    .line 355
    .end local v4    # "transport":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_1
    return v2
.end method

.method private isSignificantChange(Landroid/net/NetworkCapabilities;)Z
    .locals 5
    .param p1, "newCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 312
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$500(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 315
    .local v0, "oldCapabilities":Landroid/net/NetworkCapabilities;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez p1, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-eq v3, v4, :cond_2

    .line 316
    return v2

    .line 320
    :cond_2
    if-nez v0, :cond_3

    if-nez p1, :cond_3

    .line 321
    return v1

    .line 325
    :cond_3
    invoke-direct {p0, v0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->hasSignificantCapabilityChanges(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 326
    return v2

    .line 330
    :cond_4
    invoke-direct {p0, v0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->hasSignificantTransportChanges(Landroid/net/NetworkCapabilities;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 331
    return v2

    .line 334
    :cond_5
    return v1
.end method

.method private updateCacheAndNotifyObservers(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 5
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 291
    invoke-direct {p0, p2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->isSignificantChange(Landroid/net/NetworkCapabilities;)Z

    move-result v0

    .line 294
    .local v0, "shouldUpdate":Z
    if-eqz v0, :cond_2

    .line 295
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v1, p2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$1000(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/NetworkCapabilities;)V

    .line 297
    iget-object v1, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$1100(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v1

    .line 298
    .local v1, "status":Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    iget-object v2, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$400(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v2

    .line 300
    .local v2, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v3, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v3}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$900(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;

    .line 301
    .local v4, "observer":Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
    invoke-interface {v4, v1}, Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;->onConnectionStatusChanged(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    .end local v4    # "observer":Lio/sentry/IConnectionStatusProvider$IConnectionStatusObserver;
    goto :goto_0

    .line 303
    :cond_0
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_2

    .line 298
    :catchall_0
    move-exception v3

    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v3

    .line 305
    .end local v1    # "status":Lio/sentry/IConnectionStatusProvider$ConnectionStatus;
    .end local v2    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 212
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0, p1}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$002(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;Landroid/net/Network;)Landroid/net/Network;

    .line 217
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$100(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 218
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$200()Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 219
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 220
    .local v2, "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    .end local v2    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_0

    .line 222
    :cond_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    goto :goto_2

    .line 218
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v1

    .line 224
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    :goto_2
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 276
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$000(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 277
    return-void

    .line 279
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->updateCacheAndNotifyObservers(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 281
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$200()Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 282
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 283
    .local v2, "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v2, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .end local v2    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_0

    .line 285
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 286
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 281
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
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

.method public onLost(Landroid/net/Network;)V
    .locals 3
    .param p1, "network"    # Landroid/net/Network;

    .line 240
    iget-object v0, p0, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->this$0:Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;

    invoke-static {v0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$000(Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;)Landroid/net/Network;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->clearCacheAndNotifyObservers()V

    .line 245
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$200()Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 246
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 247
    .local v2, "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    .end local v2    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_0

    .line 249
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 250
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 245
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
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

.method public onUnavailable()V
    .locals 3

    .line 229
    invoke-direct {p0}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider$1;->clearCacheAndNotifyObservers()V

    .line 231
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$200()Lio/sentry/util/AutoClosableReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 232
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidConnectionStatusProvider;->access$300()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager$NetworkCallback;

    .line 233
    .local v2, "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager$NetworkCallback;->onUnavailable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    .end local v2    # "cb":Landroid/net/ConnectivityManager$NetworkCallback;
    goto :goto_0

    .line 235
    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 236
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 231
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method
