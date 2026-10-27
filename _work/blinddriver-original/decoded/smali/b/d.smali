.class public final synthetic Lb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb/d;->l:I

    iput-object p2, p0, Lb/d;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb/d;->n:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lb/d;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lz4/d;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Ly4/k;

    iget-object v0, v0, Lz4/d;->b:Lg5/c;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lg5/c;->k(Ly4/k;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Ly4/e;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lg5/j;

    iget-object v1, v0, Ly4/e;->k:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Ly4/e;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ly4/b;

    invoke-interface {v5, p0, v3}, Ly4/b;->e(Lg5/j;Z)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lu9/g;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lv9/d;

    sget-object v1, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p0, v1}, Lu9/g;->C(Lu9/p;Ljava/lang/Object;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/snapshotter/MapSnapshotter;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->a(Lorg/maplibre/android/snapshotter/MapSnapshotter;Ljava/lang/String;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/snapshotter/MapSnapshotter;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/snapshotter/MapSnapshot;

    invoke-static {v0, p0}, Lorg/maplibre/android/snapshotter/MapSnapshotter;->b(Lorg/maplibre/android/snapshotter/MapSnapshotter;Lorg/maplibre/android/snapshotter/MapSnapshot;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineRegion$updateMetadata$1;->b(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionUpdateMetadataCallback;Ljava/lang/String;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegionStatus;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->c(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionStatus;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegionError;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineRegion$setObserver$1;->b(Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionObserver;Lorg/maplibre/android/offline/OfflineRegionError;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineRegion$invalidate$1;->b(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionInvalidateCallback;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineRegion;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineRegion$delete$1;->a(Lorg/maplibre/android/offline/OfflineRegion;Lorg/maplibre/android/offline/OfflineRegion$OfflineRegionDeleteCallback;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager$getOfflineRegion$1;->b(Lorg/maplibre/android/offline/OfflineManager;Lorg/maplibre/android/offline/OfflineManager$GetOfflineRegionCallback;)V

    return-void

    :pswitch_a
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/maplibre/android/offline/OfflineManager;->b(Lorg/maplibre/android/offline/OfflineManager$MergeOfflineRegionsCallback;Ljava/lang/String;)V

    return-void

    :pswitch_b
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lh5/h;

    const-string v1, "$command"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p0}, Lh5/h;->a()V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lh5/h;->a()V

    throw v0

    :pswitch_c
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Ly4/q;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "id.toString()"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p0}, Ll9/a;->b(Ly4/q;Ljava/lang/String;)V

    return-void

    :pswitch_d
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lh1/d;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Landroid/util/LongSparseArray;

    invoke-static {v0, p0}, Lc6/o;->N(Lh1/d;Landroid/util/LongSparseArray;)V

    return-void

    :pswitch_e
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Le5/f;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ld5/b;

    iget-object v2, p0, Le5/f;->e:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ld5/b;->a(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    return-void

    :pswitch_f
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Ldadb/forwarding/TcpForwarder;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Ljava/net/Socket;

    invoke-static {v0, p0}, Ldadb/forwarding/TcpForwarder;->b(Ldadb/forwarding/TcpForwarder;Ljava/net/Socket;)V

    return-void

    :pswitch_10
    iget-object v0, p0, Lb/d;->m:Ljava/lang/Object;

    check-cast v0, Lb/o;

    iget-object p0, p0, Lb/d;->n:Ljava/lang/Object;

    check-cast p0, Lb/h0;

    iget-object v1, v0, Li3/a;->l:Landroidx/lifecycle/x;

    new-instance v2, Lb/f;

    invoke-direct {v2, p0, v0}, Lb/f;-><init>(Lb/h0;Lb/o;)V

    invoke-virtual {v1, v2}, Landroidx/lifecycle/x;->a(Landroidx/lifecycle/u;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
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
