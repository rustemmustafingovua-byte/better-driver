.class public final Lf7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field public static final o:Lcom/google/android/gms/common/api/Status;

.field public static final p:Lcom/google/android/gms/common/api/Status;

.field public static final q:Ljava/lang/Object;

.field public static r:Lf7/d;


# instance fields
.field public a:J

.field public b:Z

.field public c:Lg7/j;

.field public d:Li7/c;

.field public final e:Landroid/content/Context;

.field public final f:Ld7/d;

.field public final g:Lg5/c;

.field public final h:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final j:Ljava/util/concurrent/ConcurrentHashMap;

.field public final k:Lk/f;

.field public final l:Lk/f;

.field public final m:Ln7/f;

.field public volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    sput-object v0, Lf7/d;->o:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    sput-object v0, Lf7/d;->p:Lcom/google/android/gms/common/api/Status;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lf7/d;->q:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 6

    sget-object v0, Ld7/d;->c:Ld7/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lf7/d;->a:J

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf7/d;->b:Z

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lf7/d;->h:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, p0, Lf7/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v4, 0x5

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v2, v4, v5, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v2, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lk/f;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lk/f;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lf7/d;->k:Lk/f;

    new-instance v2, Lk/f;

    invoke-direct {v2, v4}, Lk/f;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lf7/d;->l:Lk/f;

    iput-boolean v3, p0, Lf7/d;->n:Z

    iput-object p1, p0, Lf7/d;->e:Landroid/content/Context;

    new-instance v2, Ln7/f;

    invoke-direct {v2, p2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    iput-object v2, p0, Lf7/d;->m:Ln7/f;

    iput-object v0, p0, Lf7/d;->f:Ld7/d;

    new-instance p2, Lg5/c;

    const/4 v0, 0x6

    invoke-direct {p2, v0}, Lg5/c;-><init>(I)V

    iput-object p2, p0, Lf7/d;->g:Lg5/c;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    sget-object p2, La/a;->e:Ljava/lang/Boolean;

    if-nez p2, :cond_0

    const-string p2, "android.hardware.type.automotive"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sput-object p1, La/a;->e:Ljava/lang/Boolean;

    :cond_0
    sget-object p1, La/a;->e:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v1, p0, Lf7/d;->n:Z

    :cond_1
    const/4 p0, 0x6

    invoke-virtual {v2, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static c(Lf7/b;Ld7/a;)Lcom/google/android/gms/common/api/Status;
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    iget-object p0, p0, Lf7/b;->b:Lk0/l;

    iget-object p0, p0, Lk0/l;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "API: "

    const-string v3, " is not available on this device. Connection failed with: "

    invoke-static {v2, p0, v3, v1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x11

    iget-object v2, p1, Ld7/a;->n:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lf7/d;
    .locals 5

    sget-object v0, Lf7/d;->q:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lf7/d;->r:Lf7/d;

    if-nez v1, :cond_1

    sget-object v1, Lg7/c0;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lg7/c0;->i:Landroid/os/HandlerThread;

    if-eqz v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "GoogleApiHandler"

    const/16 v4, 0x9

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lg7/c0;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    sget-object v2, Lg7/c0;->i:Landroid/os/HandlerThread;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lf7/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object v3, Ld7/d;->b:Ljava/lang/Object;

    invoke-direct {v2, p0, v1}, Lf7/d;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    sput-object v2, Lf7/d;->r:Lf7/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lf7/d;->r:Lf7/d;

    monitor-exit v0

    return-object p0

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method


# virtual methods
.method public final a()Z
    .locals 2

    iget-boolean v0, p0, Lf7/d;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg7/h;->b()Lg7/h;

    move-result-object v0

    iget-object v0, v0, Lg7/h;->a:Ljava/lang/Object;

    check-cast v0, Lg7/i;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg7/i;->m:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object p0, p0, Lf7/d;->g:Lg5/c;

    iget-object p0, p0, Lg5/c;->m:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseIntArray;

    const v0, 0xc1fa340

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    if-eq p0, v1, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final b(Ld7/a;I)Z
    .locals 6

    iget-object v0, p0, Lf7/d;->f:Ld7/d;

    iget-object p0, p0, Lf7/d;->e:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Ll7/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Ll7/a;->a:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    sget-object v5, Ll7/a;->b:Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_6

    :cond_1
    :goto_0
    :try_start_1
    sput-object v4, Ll7/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager;->isInstantApp()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    sput-object v5, Ll7/a;->b:Ljava/lang/Boolean;

    sput-object v2, Ll7/a;->a:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    move v2, v3

    :goto_1
    const/4 v1, 0x0

    if-eqz v2, :cond_2

    goto :goto_5

    :cond_2
    iget v2, p1, Ld7/a;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v5, p1, Ld7/a;->n:Landroid/app/PendingIntent;

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v1

    :goto_2
    if-eqz v5, :cond_4

    iget-object v2, p1, Ld7/a;->n:Landroid/app/PendingIntent;

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2, p0, v4}, Ld7/e;->a(ILandroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v4, 0xc000000

    invoke-static {p0, v1, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    :goto_3
    move-object v2, v4

    :goto_4
    if-eqz v2, :cond_6

    iget p1, p1, Ld7/a;->m:I

    sget v4, Lcom/google/android/gms/common/api/GoogleApiActivity;->m:I

    const-class v4, Lcom/google/android/gms/common/api/GoogleApiActivity;

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "pending_intent"

    invoke-virtual {v5, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "failing_client_id"

    invoke-virtual {v5, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "notify_manager"

    invoke-virtual {v5, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    sget p2, Ln7/e;->a:I

    const/high16 v2, 0x8000000

    or-int/2addr p2, v2

    invoke-static {p0, v1, v5, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {v0, p0, p1, p2}, Ld7/d;->f(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return v3

    :cond_6
    :goto_5
    return v1

    :goto_6
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final d(Le7/f;)Lf7/o;
    .locals 3

    iget-object v0, p1, Le7/f;->e:Lf7/b;

    iget-object v1, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf7/o;

    if-nez v2, :cond_0

    new-instance v2, Lf7/o;

    invoke-direct {v2, p0, p1}, Lf7/o;-><init>(Lf7/d;Le7/f;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, v2, Lf7/o;->d:Le7/c;

    invoke-interface {p1}, Le7/c;->m()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lf7/d;->l:Lk/f;

    invoke-virtual {p0, v0}, Lk/f;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v2}, Lf7/o;->m()V

    return-object v2
.end method

.method public final e(Lu7/d;ILe7/f;)V
    .locals 8

    if-eqz p2, :cond_6

    iget-object v3, p3, Le7/f;->e:Lf7/b;

    invoke-virtual {p0}, Lf7/d;->a()Z

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg7/h;->b()Lg7/h;

    move-result-object p3

    iget-object p3, p3, Lg7/h;->a:Ljava/lang/Object;

    check-cast p3, Lg7/i;

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    iget-boolean v1, p3, Lg7/i;->m:Z

    if-eqz v1, :cond_2

    iget-boolean p3, p3, Lg7/i;->n:Z

    iget-object v1, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf7/o;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lf7/o;->d:Le7/c;

    instance-of v4, v2, Lcom/google/android/gms/common/internal/a;

    if-eqz v4, :cond_2

    check-cast v2, Lcom/google/android/gms/common/internal/a;

    iget-object v4, v2, Lcom/google/android/gms/common/internal/a;->u:Lg7/y;

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/a;->d()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1, v2, p2}, Lf7/u;->a(Lf7/o;Lcom/google/android/gms/common/internal/a;I)Lg7/d;

    move-result-object p3

    if-eqz p3, :cond_2

    iget v2, v1, Lf7/o;->n:I

    add-int/2addr v2, v0

    iput v2, v1, Lf7/o;->n:I

    iget-boolean v0, p3, Lg7/d;->n:Z

    goto :goto_1

    :cond_1
    move v0, p3

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p2, 0x0

    move-object v1, p0

    goto :goto_3

    :cond_3
    :goto_1
    new-instance p3, Lf7/u;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_2

    :cond_4
    move-wide v4, v1

    :goto_2
    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    :cond_5
    move-object v0, p3

    move-wide v6, v1

    move-object v1, p0

    move v2, p2

    invoke-direct/range {v0 .. v7}, Lf7/u;-><init>(Lf7/d;ILf7/b;JJ)V

    move-object p2, v0

    :goto_3
    if-eqz p2, :cond_6

    iget-object p0, p1, Lu7/d;->a:Lu7/i;

    iget-object p1, v1, Lf7/d;->m:Ln7/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lf7/l;

    const/4 v0, 0x0

    invoke-direct {p3, v0, p1}, Lf7/l;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lu7/g;

    invoke-direct {p1, p3, p2}, Lu7/g;-><init>(Ljava/util/concurrent/Executor;Lu7/b;)V

    iget-object p2, p0, Lu7/i;->b:Lad/a2;

    invoke-virtual {p2, p1}, Lad/a2;->p(Lu7/h;)V

    invoke-virtual {p0}, Lu7/i;->f()V

    :cond_6
    return-void
.end method

.method public final g(Ld7/a;I)V
    .locals 2

    invoke-virtual {p0, p1, p2}, Lf7/d;->b(Ld7/a;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x0

    iget-object p0, p0, Lf7/d;->m:Ln7/f;

    invoke-virtual {p0, v0, p2, v1, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 12

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x12

    const/4 v2, 0x2

    const-wide/32 v3, 0x493e0

    const/16 v5, 0x11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unknown message id: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GoogleApiManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :pswitch_0
    iput-boolean v6, p0, Lf7/d;->b:Z

    return v8

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf7/v;

    iget-wide v3, p1, Lf7/v;->c:J

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-nez v0, :cond_1

    new-instance v0, Lg7/j;

    iget v3, p1, Lf7/v;->b:I

    iget-object p1, p1, Lf7/v;->a:Lg7/g;

    filled-new-array {p1}, [Lg7/g;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lg7/j;-><init>(ILjava/util/List;)V

    iget-object p1, p0, Lf7/d;->d:Li7/c;

    if-nez p1, :cond_0

    iget-object p1, p0, Lf7/d;->e:Landroid/content/Context;

    sget-object v3, Lg7/k;->b:Lg7/k;

    new-instance v4, Li7/c;

    sget-object v5, Li7/c;->i:Lk0/l;

    sget-object v7, Le7/e;->b:Le7/e;

    invoke-direct {v4, p1, v5, v3, v7}, Le7/f;-><init>(Landroid/content/Context;Lk0/l;Le7/b;Le7/e;)V

    iput-object v4, p0, Lf7/d;->d:Li7/c;

    :cond_0
    iget-object p0, p0, Lf7/d;->d:Li7/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lg5/s;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    sget-object v3, Ln7/d;->a:Ld7/c;

    filled-new-array {v3}, [Ld7/c;

    move-result-object v3

    iput-object v3, p1, Lg5/s;->m:Ljava/lang/Object;

    new-instance v4, Lb0/l1;

    invoke-direct {v4, v1, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    iput-object v4, p1, Lg5/s;->l:Ljava/lang/Object;

    new-instance v0, Lf2/t1;

    invoke-direct {v0, p1, v3, v6, v6}, Lf2/t1;-><init>(Lg5/s;[Ld7/c;ZI)V

    invoke-virtual {p0, v2, v0}, Le7/f;->d(ILf2/t1;)Lu7/i;

    return v8

    :cond_1
    iget-object v0, p0, Lf7/d;->c:Lg7/j;

    if-eqz v0, :cond_8

    iget-object v3, v0, Lg7/j;->m:Ljava/util/List;

    iget v0, v0, Lg7/j;->l:I

    iget v4, p1, Lf7/v;->b:I

    if-ne v0, v4, :cond_4

    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p1, Lf7/v;->d:I

    if-lt v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf7/d;->c:Lg7/j;

    iget-object v1, p1, Lf7/v;->a:Lg7/g;

    iget-object v2, v0, Lg7/j;->m:Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg7/j;->m:Ljava/util/List;

    :cond_3
    iget-object v0, v0, Lg7/j;->m:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lf7/d;->m:Ln7/f;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lf7/d;->c:Lg7/j;

    if-eqz v0, :cond_8

    iget v3, v0, Lg7/j;->l:I

    if-gtz v3, :cond_5

    invoke-virtual {p0}, Lf7/d;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lf7/d;->d:Li7/c;

    if-nez v3, :cond_6

    iget-object v3, p0, Lf7/d;->e:Landroid/content/Context;

    sget-object v4, Lg7/k;->b:Lg7/k;

    new-instance v9, Li7/c;

    sget-object v10, Li7/c;->i:Lk0/l;

    sget-object v11, Le7/e;->b:Le7/e;

    invoke-direct {v9, v3, v10, v4, v11}, Le7/f;-><init>(Landroid/content/Context;Lk0/l;Le7/b;Le7/e;)V

    iput-object v9, p0, Lf7/d;->d:Li7/c;

    :cond_6
    iget-object v3, p0, Lf7/d;->d:Li7/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg5/s;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    sget-object v9, Ln7/d;->a:Ld7/c;

    filled-new-array {v9}, [Ld7/c;

    move-result-object v9

    iput-object v9, v4, Lg5/s;->m:Ljava/lang/Object;

    new-instance v10, Lb0/l1;

    invoke-direct {v10, v1, v0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    iput-object v10, v4, Lg5/s;->l:Ljava/lang/Object;

    new-instance v0, Lf2/t1;

    invoke-direct {v0, v4, v9, v6, v6}, Lf2/t1;-><init>(Lg5/s;[Ld7/c;ZI)V

    invoke-virtual {v3, v2, v0}, Le7/f;->d(ILf2/t1;)Lu7/i;

    :cond_7
    iput-object v7, p0, Lf7/d;->c:Lg7/j;

    :cond_8
    :goto_1
    iget-object v0, p0, Lf7/d;->c:Lg7/j;

    if-nez v0, :cond_21

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p1, Lf7/v;->a:Lg7/g;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lg7/j;

    iget v2, p1, Lf7/v;->b:I

    invoke-direct {v1, v2, v0}, Lg7/j;-><init>(ILjava/util/List;)V

    iput-object v1, p0, Lf7/d;->c:Lg7/j;

    iget-object p0, p0, Lf7/d;->m:Ln7/f;

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-wide v1, p1, Lf7/v;->c:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v8

    :pswitch_2
    iget-object p1, p0, Lf7/d;->c:Lg7/j;

    if-eqz p1, :cond_21

    iget v0, p1, Lg7/j;->l:I

    if-gtz v0, :cond_9

    invoke-virtual {p0}, Lf7/d;->a()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_9
    iget-object v0, p0, Lf7/d;->d:Li7/c;

    if-nez v0, :cond_a

    iget-object v0, p0, Lf7/d;->e:Landroid/content/Context;

    sget-object v3, Lg7/k;->b:Lg7/k;

    new-instance v4, Li7/c;

    sget-object v5, Li7/c;->i:Lk0/l;

    sget-object v9, Le7/e;->b:Le7/e;

    invoke-direct {v4, v0, v5, v3, v9}, Le7/f;-><init>(Landroid/content/Context;Lk0/l;Le7/b;Le7/e;)V

    iput-object v4, p0, Lf7/d;->d:Li7/c;

    :cond_a
    iget-object v0, p0, Lf7/d;->d:Li7/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lg5/s;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    sget-object v4, Ln7/d;->a:Ld7/c;

    filled-new-array {v4}, [Ld7/c;

    move-result-object v4

    iput-object v4, v3, Lg5/s;->m:Ljava/lang/Object;

    new-instance v5, Lb0/l1;

    invoke-direct {v5, v1, p1}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    iput-object v5, v3, Lg5/s;->l:Ljava/lang/Object;

    new-instance p1, Lf2/t1;

    invoke-direct {p1, v3, v4, v6, v6}, Lf2/t1;-><init>(Lg5/s;[Ld7/c;ZI)V

    invoke-virtual {v0, v2, p1}, Le7/f;->d(ILf2/t1;)Lu7/i;

    :cond_b
    iput-object v7, p0, Lf7/d;->c:Lg7/j;

    return v8

    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf7/p;

    iget-object v0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lf7/p;->a:Lf7/b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lf7/p;->a:Lf7/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    iget-object v0, p0, Lf7/o;->l:Ljava/util/ArrayList;

    iget-object v1, p0, Lf7/o;->o:Lf7/d;

    iget-object v2, p0, Lf7/o;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, v1, Lf7/d;->m:Ln7/f;

    const/16 v3, 0xf

    invoke-virtual {v0, v3, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, v1, Lf7/d;->m:Ln7/f;

    const/16 v1, 0x10

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p1, p1, Lf7/p;->b:Ld7/c;

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf7/t;

    if-eqz v3, :cond_c

    invoke-virtual {v3, p0}, Lf7/t;->b(Lf7/o;)[Ld7/c;

    move-result-object v4

    if-eqz v4, :cond_c

    array-length v5, v4

    move v7, v6

    :goto_3
    if-ge v7, v5, :cond_c

    aget-object v9, v4, v7

    invoke-static {v9, p1}, Lg7/s;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    if-ltz v7, :cond_c

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    :goto_4
    if-ge v6, p0, :cond_21

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf7/t;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    new-instance v3, Le7/k;

    invoke-direct {v3, p1}, Le7/k;-><init>(Ld7/c;)V

    invoke-virtual {v1, v3}, Lf7/t;->d(Ljava/lang/Exception;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf7/p;

    iget-object v0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lf7/p;->a:Lf7/b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v0, p1, Lf7/p;->a:Lf7/b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    iget-object v0, p0, Lf7/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_e

    :cond_f
    iget-boolean p1, p0, Lf7/o;->k:Z

    if-nez p1, :cond_21

    iget-object p1, p0, Lf7/o;->d:Le7/c;

    invoke-interface {p1}, Le7/c;->i()Z

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Lf7/o;->m()V

    return v8

    :cond_10
    invoke-virtual {p0}, Lf7/o;->g()V

    return v8

    :pswitch_5
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lm/a;->h(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_6
    iget-object v0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    invoke-static {p1}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-object p1, p0, Lf7/o;->d:Le7/c;

    invoke-interface {p1}, Le7/c;->i()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lf7/o;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lf7/o;->f:Lg5/c;

    iget-object v1, v0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v0, v0, Lg5/c;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_5

    :cond_11
    const-string p0, "Timing out service connection."

    invoke-interface {p1, p0}, Le7/c;->c(Ljava/lang/String;)V

    return v8

    :cond_12
    :goto_5
    invoke-virtual {p0}, Lf7/o;->j()V

    :cond_13
    return v8

    :pswitch_7
    iget-object v0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, p1, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lf7/o;->k:Z

    if-eqz v0, :cond_21

    iget-object v2, p0, Lf7/o;->e:Lf7/b;

    iget-object v3, p0, Lf7/o;->o:Lf7/d;

    iget-object v3, v3, Lf7/d;->m:Ln7/f;

    if-eqz v0, :cond_14

    const/16 v0, 0xb

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v0, 0x9

    invoke-virtual {v3, v0, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iput-boolean v6, p0, Lf7/o;->k:Z

    :cond_14
    iget-object v0, p1, Lf7/d;->f:Ld7/d;

    iget-object p1, p1, Lf7/d;->e:Landroid/content/Context;

    sget v2, Ld7/e;->a:I

    invoke-virtual {v0, p1, v2}, Ld7/e;->b(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v1, :cond_15

    const-string p1, "Connection timed out waiting for Google Play services update to complete."

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x15

    invoke-direct {v0, v1, p1, v7, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    goto :goto_6

    :cond_15
    const-string p1, "API failed to connect while resuming due to an unknown error."

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x16

    invoke-direct {v0, v1, p1, v7, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    :goto_6
    invoke-virtual {p0, v0}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    iget-object p0, p0, Lf7/o;->d:Le7/c;

    const-string p1, "Timing out connection while resuming."

    invoke-interface {p0, p1}, Le7/c;->c(Ljava/lang/String;)V

    return v8

    :pswitch_8
    iget-object p1, p0, Lf7/d;->l:Lk/f;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lk/a;

    invoke-direct {v0, p1}, Lk/a;-><init>(Lk/f;)V

    :cond_16
    :goto_7
    invoke-virtual {v0}, Lk/a;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Lk/a;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf7/b;

    iget-object v1, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf7/o;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lf7/o;->q()V

    goto :goto_7

    :cond_17
    iget-object p0, p0, Lf7/d;->l:Lk/f;

    invoke-virtual {p0}, Lk/f;->clear()V

    return v8

    :pswitch_9
    iget-object v0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object p0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf7/o;

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    invoke-static {p1}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-boolean p1, p0, Lf7/o;->k:Z

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Lf7/o;->m()V

    return v8

    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Le7/f;

    invoke-virtual {p0, p1}, Lf7/d;->d(Le7/f;)Lf7/o;

    return v8

    :pswitch_b
    iget-object p1, p0, Lf7/d;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_21

    iget-object p1, p0, Lf7/d;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    sget-object v0, Lf7/c;->p:Lf7/c;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, v0, Lf7/c;->o:Z

    if-nez v1, :cond_18

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iput-boolean v8, v0, Lf7/c;->o:Z

    goto :goto_8

    :catchall_0
    move-exception p0

    goto :goto_9

    :cond_18
    :goto_8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance p1, Lf7/m;

    invoke-direct {p1, p0}, Lf7/m;-><init>(Lf7/d;)V

    monitor-enter v0

    :try_start_1
    iget-object v1, v0, Lf7/c;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, v0, Lf7/c;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v0, v0, Lf7/c;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_19

    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {v1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_19

    iget v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_19

    invoke-virtual {p1, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_21

    iput-wide v3, p0, Lf7/d;->a:J

    return v8

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :goto_9
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ld7/a;

    iget-object v1, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf7/o;

    iget v3, v2, Lf7/o;->i:I

    if-ne v3, v0, :cond_1a

    goto :goto_a

    :cond_1b
    move-object v2, v7

    :goto_a
    if-eqz v2, :cond_1d

    iget v0, p1, Ld7/a;->m:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1c

    iget-object p0, p0, Lf7/d;->f:Ld7/d;

    new-instance v1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p0, Ld7/f;->c:I

    invoke-static {v0}, Ld7/a;->a(I)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Ld7/a;->o:Ljava/lang/String;

    const-string v0, "Error resolution was canceled by the user, original error message: "

    const-string v3, ": "

    invoke-static {v0, p0, v3, p1}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v5, p0, v7, v7}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    invoke-virtual {v2, v1}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    return v8

    :cond_1c
    iget-object p0, v2, Lf7/o;->e:Lf7/b;

    invoke-static {p0, p1}, Lf7/d;->c(Lf7/b;Ld7/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p0

    invoke-virtual {v2, p0}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    return v8

    :cond_1d
    const-string p0, "Could not find API instance "

    const-string p1, " while trying to fail enqueued calls."

    invoke-static {v0, p0, p1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v0, "GoogleApiManager"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v8

    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lf7/w;

    iget-object v0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lf7/w;->c:Le7/f;

    iget-object v1, v1, Le7/f;->e:Lf7/b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf7/o;

    if-nez v0, :cond_1e

    iget-object v0, p1, Lf7/w;->c:Le7/f;

    invoke-virtual {p0, v0}, Lf7/d;->d(Le7/f;)Lf7/o;

    move-result-object v0

    :cond_1e
    iget-object v1, v0, Lf7/o;->d:Le7/c;

    invoke-interface {v1}, Le7/c;->m()Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object p0, p0, Lf7/d;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p0

    iget v1, p1, Lf7/w;->b:I

    if-eq p0, v1, :cond_1f

    iget-object p0, p1, Lf7/w;->a:Lf7/t;

    sget-object p1, Lf7/d;->o:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lf7/t;->c(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0}, Lf7/o;->q()V

    return v8

    :cond_1f
    iget-object p0, p1, Lf7/w;->a:Lf7/t;

    invoke-virtual {v0, p0}, Lf7/o;->n(Lf7/t;)V

    return v8

    :pswitch_e
    iget-object p0, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf7/o;

    iget-object v0, p1, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    iput-object v7, p1, Lf7/o;->m:Ld7/a;

    invoke-virtual {p1}, Lf7/o;->m()V

    goto :goto_b

    :pswitch_f
    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p0}, Lm/a;->h(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p0

    throw p0

    :pswitch_10
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v8, p1, :cond_20

    goto :goto_c

    :cond_20
    const-wide/16 v3, 0x2710

    :goto_c
    iput-wide v3, p0, Lf7/d;->a:J

    iget-object p1, p0, Lf7/d;->m:Ln7/f;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf7/b;

    iget-object v2, p0, Lf7/d;->m:Ln7/f;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lf7/d;->a:J

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_d

    :cond_21
    :goto_e
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_d
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
