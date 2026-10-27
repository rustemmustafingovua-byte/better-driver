.class public final Lio/sentry/android/core/ViewHierarchyEventProcessor;
.super Ljava/lang/Object;
.source "ViewHierarchyEventProcessor.java"

# interfaces
.implements Lio/sentry/internal/eventprocessor/SentryEventProcessor;


# static fields
.field private static final CAPTURE_TIMEOUT_MS:J = 0x3e8L

.field private static final DEBOUNCE_MAX_EXECUTIONS:I = 0x3

.field private static final DEBOUNCE_WAIT_TIME_MS:J = 0x7d0L


# instance fields
.field private final debouncer:Lio/sentry/android/core/internal/util/Debouncer;

.field private final options:Lio/sentry/android/core/SentryAndroidOptions;


# direct methods
.method public constructor <init>(Lio/sentry/android/core/SentryAndroidOptions;)V
    .locals 5
    .param p1, "options"    # Lio/sentry/android/core/SentryAndroidOptions;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const-string v0, "SentryAndroidOptions is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/core/SentryAndroidOptions;

    iput-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 54
    new-instance v0, Lio/sentry/android/core/internal/util/Debouncer;

    .line 56
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidCurrentDateProvider;->getInstance()Lio/sentry/transport/ICurrentDateProvider;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/android/core/internal/util/Debouncer;-><init>(Lio/sentry/transport/ICurrentDateProvider;JI)V

    iput-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    .line 60
    invoke-virtual {p1}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const-string v0, "ViewHierarchy"

    invoke-static {v0}, Lio/sentry/util/IntegrationUtils;->addIntegrationToSdkVersion(Ljava/lang/String;)V

    .line 63
    :cond_0
    return-void
.end method

.method private static addChildren(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parentNode"    # Lio/sentry/protocol/ViewHierarchyNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lio/sentry/protocol/ViewHierarchyNode;",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)V"
        }
    .end annotation

    .line 235
    .local p2, "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 241
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;

    .line 242
    .local v1, "exporter":Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;
    invoke-interface {v1, p1, p0}, Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;->export(Lio/sentry/protocol/ViewHierarchyNode;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 243
    return-void

    .line 245
    .end local v1    # "exporter":Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;
    :cond_1
    goto :goto_0

    .line 247
    :cond_2
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 248
    .local v0, "viewGroup":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 249
    .local v1, "childCount":I
    if-nez v1, :cond_3

    .line 250
    return-void

    .line 253
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 254
    .local v2, "childNodes":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/ViewHierarchyNode;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 255
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 256
    .local v4, "child":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 257
    invoke-static {v4}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->viewToNode(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;

    move-result-object v5

    .line 258
    .local v5, "childNode":Lio/sentry/protocol/ViewHierarchyNode;
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-static {v4, v5, p2}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->addChildren(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V

    .line 254
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childNode":Lio/sentry/protocol/ViewHierarchyNode;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 262
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p1, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setChildren(Ljava/util/List;)V

    .line 263
    return-void
.end method

.method static synthetic lambda$snapshotViewHierarchy$0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lio/sentry/ILogger;)V
    .locals 3
    .param p0, "viewHierarchy"    # Ljava/util/concurrent/atomic/AtomicReference;
    .param p1, "decorView"    # Landroid/view/View;
    .param p2, "exporters"    # Ljava/util/List;
    .param p3, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p4, "logger"    # Lio/sentry/ILogger;

    .line 197
    :try_start_0
    invoke-static {p1, p2}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 198
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    .line 200
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v2, "Failed to process view hierarchy."

    invoke-interface {p4, v1, v2, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public static snapshotViewHierarchy(Landroid/app/Activity;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "logger"    # Lio/sentry/ILogger;

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 161
    invoke-static {}, Lio/sentry/android/core/internal/util/AndroidThreadChecker;->getInstance()Lio/sentry/android/core/internal/util/AndroidThreadChecker;

    move-result-object v1

    .line 160
    invoke-static {p0, v0, v1, p1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public static snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;
    .param p3, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;",
            "Lio/sentry/util/thread/IThreadChecker;",
            "Lio/sentry/ILogger;",
            ")",
            "Lio/sentry/protocol/ViewHierarchy;"
        }
    .end annotation

    .line 171
    .local p1, "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 172
    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v3, "Missing activity for view hierarchy snapshot."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p3, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-object v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 177
    .local v2, "window":Landroid/view/Window;
    if-nez v2, :cond_1

    .line 178
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Missing window for view hierarchy snapshot."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p3, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    return-object v1

    .line 182
    :cond_1
    invoke-virtual {v2}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v7

    .line 183
    .local v7, "decorView":Landroid/view/View;
    if-nez v7, :cond_2

    .line 184
    sget-object v3, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const-string v4, "Missing decor view for view hierarchy snapshot."

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p3, v3, v4, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return-object v1

    .line 189
    :cond_2
    :try_start_0
    invoke-interface {p2}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_3

    .line 190
    :try_start_1
    invoke-static {v7, p1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 207
    :catchall_0
    move-exception v0

    move-object v8, p1

    move-object v10, p3

    goto :goto_0

    .line 192
    :cond_3
    :try_start_2
    new-instance v9, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 193
    .local v9, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v6, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 194
    .local v6, "viewHierarchy":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/protocol/ViewHierarchy;>;"
    new-instance v5, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v8, p1

    move-object v10, p3

    .end local p1    # "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    .end local p3    # "logger":Lio/sentry/ILogger;
    .local v8, "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    .local v10, "logger":Lio/sentry/ILogger;
    :try_start_3
    invoke-direct/range {v5 .. v10}, Lio/sentry/android/core/ViewHierarchyEventProcessor$$ExternalSyntheticLambda0;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Landroid/view/View;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;Lio/sentry/ILogger;)V

    invoke-virtual {p0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v9, v3, v4, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 204
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/sentry/protocol/ViewHierarchy;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object p1

    .line 209
    .end local v6    # "viewHierarchy":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lio/sentry/protocol/ViewHierarchy;>;"
    .end local v9    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    goto :goto_1

    .line 207
    :catchall_1
    move-exception v0

    goto :goto_0

    .end local v8    # "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    .end local v10    # "logger":Lio/sentry/ILogger;
    .restart local p1    # "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    .restart local p3    # "logger":Lio/sentry/ILogger;
    :catchall_2
    move-exception v0

    move-object v8, p1

    move-object v10, p3

    .line 208
    .end local p1    # "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    .end local p3    # "logger":Lio/sentry/ILogger;
    .local v0, "t":Ljava/lang/Throwable;
    .restart local v8    # "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    .restart local v10    # "logger":Lio/sentry/ILogger;
    :goto_0
    sget-object p1, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string p3, "Failed to process view hierarchy."

    invoke-interface {v10, p1, p3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    .end local v0    # "t":Ljava/lang/Throwable;
    :goto_1
    return-object v1
.end method

.method public static snapshotViewHierarchy(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchy;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0

    return-object v0
.end method

.method public static snapshotViewHierarchy(Landroid/view/View;Ljava/util/List;)Lio/sentry/protocol/ViewHierarchy;
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;",
            ">;)",
            "Lio/sentry/protocol/ViewHierarchy;"
        }
    .end annotation

    .line 221
    .local p1, "exporters":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/viewhierarchy/ViewHierarchyExporter;>;"
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 222
    .local v0, "windows":Ljava/util/List;, "Ljava/util/List<Lio/sentry/protocol/ViewHierarchyNode;>;"
    new-instance v1, Lio/sentry/protocol/ViewHierarchy;

    const-string v2, "android_view_system"

    invoke-direct {v1, v2, v0}, Lio/sentry/protocol/ViewHierarchy;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 224
    .local v1, "viewHierarchy":Lio/sentry/protocol/ViewHierarchy;
    invoke-static {p0}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->viewToNode(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;

    move-result-object v2

    .line 225
    .local v2, "node":Lio/sentry/protocol/ViewHierarchyNode;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {p0, v2, p1}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->addChildren(Landroid/view/View;Lio/sentry/protocol/ViewHierarchyNode;Ljava/util/List;)V

    .line 228
    return-object v1
.end method

.method public static snapshotViewHierarchyAsData(Landroid/app/Activity;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ISerializer;Lio/sentry/ILogger;)[B
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "threadChecker"    # Lio/sentry/util/thread/IThreadChecker;
    .param p2, "serializer"    # Lio/sentry/ISerializer;
    .param p3, "logger"    # Lio/sentry/ILogger;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    invoke-static {p0, v0, p1, p3}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v0

    .line 138
    .local v0, "viewHierarchy":Lio/sentry/protocol/ViewHierarchy;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 139
    sget-object v3, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v4, "Could not get ViewHierarchy."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3, v3, v4, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 140
    return-object v2

    .line 143
    :cond_0
    nop

    .line 144
    invoke-static {p2, p3, v0}, Lio/sentry/util/JsonSerializationUtils;->bytesFrom(Lio/sentry/ISerializer;Lio/sentry/ILogger;Lio/sentry/JsonSerializable;)[B

    move-result-object v3

    .line 145
    .local v3, "bytes":[B
    if-nez v3, :cond_1

    .line 146
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Could not serialize ViewHierarchy."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    return-object v2

    .line 149
    :cond_1
    array-length v4, v3

    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 150
    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Got empty bytes array after serializing ViewHierarchy."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p3, v4, v5, v1}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    return-object v2

    .line 154
    :cond_2
    return-object v3
.end method

.method private static viewToNode(Landroid/view/View;)Lio/sentry/protocol/ViewHierarchyNode;
    .locals 4
    .param p0, "view"    # Landroid/view/View;

    .line 267
    new-instance v0, Lio/sentry/protocol/ViewHierarchyNode;

    invoke-direct {v0}, Lio/sentry/protocol/ViewHierarchyNode;-><init>()V

    .line 269
    .local v0, "node":Lio/sentry/protocol/ViewHierarchyNode;
    invoke-static {p0}, Lio/sentry/android/core/internal/util/ClassUtil;->getClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "className":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lio/sentry/protocol/ViewHierarchyNode;->setType(Ljava/lang/String;)V

    .line 273
    :try_start_0
    invoke-static {p0}, Lio/sentry/android/core/internal/gestures/ViewUtils;->getResourceIdOrNull(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "identifier":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 275
    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setIdentifier(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    .end local v2    # "identifier":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 277
    :catchall_0
    move-exception v2

    .line 280
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setX(Ljava/lang/Double;)V

    .line 281
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setY(Ljava/lang/Double;)V

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setWidth(Ljava/lang/Double;)V

    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setHeight(Ljava/lang/Double;)V

    .line 284
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setAlpha(Ljava/lang/Double;)V

    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 294
    :sswitch_0
    const-string v2, "gone"

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setVisibility(Ljava/lang/String;)V

    .line 295
    goto :goto_1

    .line 291
    :sswitch_1
    const-string v2, "invisible"

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setVisibility(Ljava/lang/String;)V

    .line 292
    goto :goto_1

    .line 288
    :sswitch_2
    const-string v2, "visible"

    invoke-virtual {v0, v2}, Lio/sentry/protocol/ViewHierarchyNode;->setVisibility(Ljava/lang/String;)V

    .line 289
    nop

    .line 301
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getOrder()Ljava/lang/Long;
    .locals 2

    .line 306
    const-wide/16 v0, 0x2af8

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public process(Lio/sentry/SentryEvent;Lio/sentry/Hint;)Lio/sentry/SentryEvent;
    .locals 6
    .param p1, "event"    # Lio/sentry/SentryEvent;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 76
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->isErrored()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    return-object p1

    .line 80
    :cond_0
    iget-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->isAttachViewHierarchy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    invoke-virtual {v0}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->DEBUG:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "attachViewHierarchy is disabled."

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-object p1

    .line 85
    :cond_1
    invoke-static {p2}, Lio/sentry/util/HintUtils;->isFromHybridSdk(Lio/sentry/Hint;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86
    return-object p1

    .line 91
    :cond_2
    iget-object v0, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->debouncer:Lio/sentry/android/core/internal/util/Debouncer;

    invoke-virtual {v0}, Lio/sentry/android/core/internal/util/Debouncer;->checkForDebounce()Z

    move-result v0

    .line 92
    .local v0, "shouldDebounce":Z
    iget-object v1, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 93
    invoke-virtual {v1}, Lio/sentry/android/core/SentryAndroidOptions;->getBeforeViewHierarchyCaptureCallback()Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;

    move-result-object v1

    .line 94
    .local v1, "beforeCaptureCallback":Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;
    if-eqz v1, :cond_4

    .line 96
    :try_start_0
    invoke-interface {v1, p1, p2, v0}, Lio/sentry/android/core/SentryAndroidOptions$BeforeCaptureCallback;->execute(Lio/sentry/SentryEvent;Lio/sentry/Hint;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_3

    .line 97
    return-object p1

    .line 108
    :cond_3
    goto :goto_0

    .line 99
    :catchall_0
    move-exception v2

    .line 100
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lio/sentry/util/ExceptionUtils;->rethrowIfFatal(Ljava/lang/Throwable;)V

    .line 101
    iget-object v3, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 102
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 103
    const-string v5, "The beforeViewHierarchyCapture callback threw an exception. Skipping view hierarchy capture."

    invoke-interface {v3, v4, v5, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    return-object p1

    .line 109
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_4
    if-eqz v0, :cond_5

    .line 110
    return-object p1

    .line 113
    :cond_5
    :goto_0
    invoke-static {}, Lio/sentry/android/core/CurrentActivityHolder;->getInstance()Lio/sentry/android/core/CurrentActivityHolder;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/android/core/CurrentActivityHolder;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 114
    .local v2, "activity":Landroid/app/Activity;
    iget-object v3, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 117
    invoke-virtual {v3}, Lio/sentry/android/core/SentryAndroidOptions;->getViewHierarchyExporters()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 118
    invoke-virtual {v4}, Lio/sentry/android/core/SentryAndroidOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/android/core/ViewHierarchyEventProcessor;->options:Lio/sentry/android/core/SentryAndroidOptions;

    .line 119
    invoke-virtual {v5}, Lio/sentry/android/core/SentryAndroidOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v5

    .line 115
    invoke-static {v2, v3, v4, v5}, Lio/sentry/android/core/ViewHierarchyEventProcessor;->snapshotViewHierarchy(Landroid/app/Activity;Ljava/util/List;Lio/sentry/util/thread/IThreadChecker;Lio/sentry/ILogger;)Lio/sentry/protocol/ViewHierarchy;

    move-result-object v3

    .line 121
    .local v3, "viewHierarchy":Lio/sentry/protocol/ViewHierarchy;
    if-eqz v3, :cond_6

    .line 122
    invoke-static {v3}, Lio/sentry/Attachment;->fromViewHierarchy(Lio/sentry/protocol/ViewHierarchy;)Lio/sentry/Attachment;

    move-result-object v4

    invoke-virtual {p2, v4}, Lio/sentry/Hint;->setViewHierarchy(Lio/sentry/Attachment;)V

    .line 125
    :cond_6
    return-object p1
.end method

.method public process(Lio/sentry/protocol/SentryTransaction;Lio/sentry/Hint;)Lio/sentry/protocol/SentryTransaction;
    .locals 0
    .param p1, "transaction"    # Lio/sentry/protocol/SentryTransaction;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 71
    return-object p1
.end method
