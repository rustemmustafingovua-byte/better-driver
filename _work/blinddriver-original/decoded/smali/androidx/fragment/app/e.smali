.class public final synthetic Landroidx/fragment/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Landroidx/fragment/app/e;->l:I

    iput-object p1, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lg3/i;Li9/a;)V
    .locals 1

    .line 2
    const/16 v0, 0x14

    iput v0, p0, Landroidx/fragment/app/e;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast p3, Lj9/o;

    iput-object p3, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget v0, p0, Landroidx/fragment/app/e;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lg5/c;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Ly4/k;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lx4/j;

    iget-object v0, v0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v0, Ly4/e;

    invoke-virtual {v0, v1, p0}, Ly4/e;->g(Ly4/k;Lx4/j;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Ly4/e;

    iget-object v3, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v3, Lg3/l;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ly4/c0;

    :try_start_0
    iget-object v3, v3, Lg3/l;->m:Lg3/k;

    invoke-virtual {v3}, Lg3/h;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v3, v0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v4, p0, Ly4/c0;->a:Lg5/o;

    invoke-static {v4}, Lr5/u0;->m(Lg5/o;)Lg5/j;

    move-result-object v4

    iget-object v5, v4, Lg5/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ly4/e;->c(Ljava/lang/String;)Ly4/c0;

    move-result-object v6

    if-ne v6, p0, :cond_0

    invoke-virtual {v0, v5}, Ly4/e;->b(Ljava/lang/String;)Ly4/c0;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-static {}, Lx4/t;->d()Lx4/t;

    move-result-object p0

    sget-object v6, Ly4/e;->l:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-class v8, Ly4/e;

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " executed; reschedule = "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v6, v5}, Lx4/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, v0, Ly4/e;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v1, v1, 0x1

    check-cast v5, Ly4/b;

    invoke-interface {v5, v4, v2}, Ly4/b;->e(Lg5/j;Z)V

    goto :goto_1

    :cond_1
    monitor-exit v3

    return-void

    :goto_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lg3/i;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lj9/o;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    :try_start_2
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Lg3/i;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {v1, p0}, Lg3/i;->b(Ljava/lang/Throwable;)V

    :goto_3
    return-void

    :pswitch_2
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lg3/i;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lh5/m;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_4

    :cond_3
    :try_start_3
    invoke-virtual {p0}, Lh5/m;->invoke()Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-virtual {v1, p0}, Lg3/i;->a(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p0

    invoke-virtual {v1, p0}, Lg3/i;->b(Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :pswitch_3
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Ll7/b;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, La/a;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/ThreadPoolExecutor;

    :try_start_4
    iget-object v0, v0, Ll7/b;->a:Landroid/content/Context;

    invoke-static {v0}, Ly4/s;->j(Landroid/content/Context;)Lx3/p;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v2, v0, Lx3/p;->a:Lx3/g;

    check-cast v2, Lx3/o;

    iget-object v3, v2, Lx3/o;->d:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iput-object p0, v2, Lx3/o;->f:Ljava/util/concurrent/ThreadPoolExecutor;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    iget-object v0, v0, Lx3/p;->a:Lx3/g;

    new-instance v2, Lx3/j;

    invoke-direct {v2, v1, p0}, Lx3/j;-><init>(La/a;Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-interface {v0, v2}, Lx3/g;->a(La/a;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    goto :goto_5

    :catchall_4
    move-exception v0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw v0

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "EmojiCompat font provider not available on this device."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_5
    invoke-virtual {v1, v0}, La/a;->s(Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_6
    return-void

    :pswitch_4
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, [B

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->a(Lorg/maplibre/android/offline/OfflineRegion;[BLorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineRegion$invalidate$1;->a(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;Ljava/lang/String;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegionStatus;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->b(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineRegion$getStatus$1;->a(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionStatusCallback;Ljava/lang/String;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineRegion$delete$1;->b(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;Ljava/lang/String;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, [Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$mergeOfflineDatabaseFiles$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;Ljava/lang/String;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;Ljava/lang/String;)V

    return-void

    :pswitch_c
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, [Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$listOfflineRegions$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$ListOfflineRegionsCallback;[Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$getOfflineRegion$1;->c(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;Ljava/lang/String;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$getOfflineRegion$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void

    :pswitch_f
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegion;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$createOfflineRegion$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;Lorg/maplibre/android/offline/OfflineRegion;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lorg/maplibre/android/offline/OfflineManager$createOfflineRegion$1;->a(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$CreateOfflineRegionCallback;Ljava/lang/String;)V

    return-void

    :pswitch_11
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/work/impl/WorkDatabase;

    iget-object v3, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ly4/q;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    invoke-static {v2, v4}, Lk4/n;->b(ILjava/lang/String;)Lk4/n;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lk4/n;->h(ILjava/lang/String;)V

    iget-object v0, v0, Lg5/q;->a:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->b()V

    invoke-virtual {v0, v4}, Landroidx/work/impl/WorkDatabase;->m(Lq4/d;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception p0

    goto :goto_9

    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lk4/n;->c()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_8
    if-ge v1, v0, :cond_6

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    check-cast v3, Ljava/lang/String;

    invoke-static {p0, v3}, Ll9/a;->b(Ly4/q;Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    return-void

    :goto_9
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lk4/n;->c()V

    throw p0

    :pswitch_12
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lg0/g;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lg0/d;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Lg0/e;

    iget-object v3, v0, Lg0/g;->a:Landroid/view/View;

    new-instance v4, Lg0/n;

    invoke-direct {v4, v1}, Lg0/n;-><init>(Lg0/d;)V

    invoke-virtual {v3, v4, v2}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v1

    iget-object v0, v0, Lg0/g;->h:Landroid/view/ActionMode;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lg0/e;->close()V

    :cond_7
    return-void

    :pswitch_13
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/storage/BaseGraph;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Lcom/graphhopper/storage/CHConfig;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/graphhopper/routing/ch/CHPreparationHandler;->b(Lcom/graphhopper/storage/BaseGraph;Lcom/graphhopper/storage/CHConfig;Ljava/util/Map;)V

    return-void

    :pswitch_14
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Landroidx/fragment/app/s1;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Landroidx/fragment/app/s1;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/r;

    iget-object v0, v0, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-object v1, v1, Landroidx/fragment/app/s1;->c:Landroidx/fragment/app/l0;

    iget-boolean p0, p0, Landroidx/fragment/app/r;->o:Z

    sget-object v2, Landroidx/fragment/app/g1;->a:Landroidx/fragment/app/l1;

    const-string v2, "inFragment"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "outFragment"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_8

    invoke-virtual {v1}, Landroidx/fragment/app/l0;->getEnterTransitionCallback()Li3/h;

    goto :goto_a

    :cond_8
    invoke-virtual {v0}, Landroidx/fragment/app/l0;->getEnterTransitionCallback()Li3/h;

    :goto_a
    return-void

    :pswitch_15
    iget-object v0, p0, Landroidx/fragment/app/e;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroidx/fragment/app/e;->n:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    iget-object p0, p0, Landroidx/fragment/app/e;->o:Ljava/lang/Object;

    check-cast p0, Landroidx/fragment/app/g;

    const-string v2, "$container"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/fragment/app/g;->c:Landroidx/fragment/app/h;

    iget-object v0, v0, Landroidx/fragment/app/m;->a:Landroidx/fragment/app/s1;

    invoke-virtual {v0, p0}, Landroidx/fragment/app/s1;->c(Landroidx/fragment/app/r1;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
