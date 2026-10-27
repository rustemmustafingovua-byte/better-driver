.class public final Lg5/b;
.super Lk4/p;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public constructor <init>(Landroidx/work/impl/WorkDatabase;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg5/b;->d:I

    const-string v0, "database"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1}, Lk4/p;-><init>(Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/work/impl/WorkDatabase;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg5/b;->d:I

    invoke-direct {p0, p1}, Lk4/p;-><init>(Landroidx/work/impl/WorkDatabase;)V

    return-void
.end method


# virtual methods
.method public final e()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lg5/b;->d:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_0
    const-string p0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`period_count`,`generation`,`next_schedule_time_override`,`next_schedule_time_override_generation`,`stop_reason`,`trace_tag`,`required_network_type`,`required_network_request`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object p0

    :pswitch_1
    const-string p0, "INSERT OR REPLACE INTO `WorkProgress` (`work_spec_id`,`progress`) VALUES (?,?)"

    return-object p0

    :pswitch_2
    const-string p0, "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)"

    return-object p0

    :pswitch_3
    const-string p0, "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`generation`,`system_id`) VALUES (?,?,?)"

    return-object p0

    :pswitch_4
    const-string p0, "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)"

    return-object p0

    :pswitch_5
    const-string p0, "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final g(Lr4/i;Ljava/lang/Object;)V
    .locals 11

    iget p0, p0, Lg5/b;->d:I

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch p0, :pswitch_data_0

    check-cast p2, Lg5/r;

    iget-object p0, p2, Lg5/r;->a:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget-object p0, p2, Lg5/r;->b:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lq4/c;->h(ILjava/lang/String;)V

    return-void

    :pswitch_0
    check-cast p2, Lg5/o;

    iget-object p0, p2, Lg5/o;->a:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget p0, p2, Lg5/o;->b:I

    invoke-static {p0}, Lr5/h1;->G(I)I

    move-result p0

    int-to-long v3, p0

    invoke-interface {p1, v1, v3, v4}, Lq4/c;->p(IJ)V

    iget-object p0, p2, Lg5/o;->c:Ljava/lang/String;

    invoke-interface {p1, v0, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget-object p0, p2, Lg5/o;->d:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-interface {p1, v3, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget-object p0, p2, Lg5/o;->e:Lx4/h;

    sget-object v4, Lx4/h;->b:Lx4/h;

    invoke-static {p0}, Lg6/c1;->E(Lx4/h;)[B

    move-result-object p0

    const/4 v4, 0x5

    invoke-interface {p1, v4, p0}, Lq4/c;->r(I[B)V

    iget-object p0, p2, Lg5/o;->f:Lx4/h;

    invoke-static {p0}, Lg6/c1;->E(Lx4/h;)[B

    move-result-object p0

    const/4 v5, 0x6

    invoke-interface {p1, v5, p0}, Lq4/c;->r(I[B)V

    iget-wide v6, p2, Lg5/o;->g:J

    const/4 p0, 0x7

    invoke-interface {p1, p0, v6, v7}, Lq4/c;->p(IJ)V

    iget-wide v6, p2, Lg5/o;->h:J

    const/16 p0, 0x8

    invoke-interface {p1, p0, v6, v7}, Lq4/c;->p(IJ)V

    iget-wide v6, p2, Lg5/o;->i:J

    const/16 p0, 0x9

    invoke-interface {p1, p0, v6, v7}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->k:I

    int-to-long v6, v6

    const/16 v8, 0xa

    invoke-interface {p1, v8, v6, v7}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->l:I

    const-string v7, "backoffPolicy"

    invoke-static {v6, v7}, La6/q;->r(ILjava/lang/String;)V

    invoke-static {v6}, Landroidx/fragment/app/t1;->d(I)I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    if-ne v6, v2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    move v6, v7

    :goto_0
    int-to-long v8, v6

    const/16 v6, 0xb

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget-wide v8, p2, Lg5/o;->m:J

    const/16 v6, 0xc

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget-wide v8, p2, Lg5/o;->n:J

    const/16 v6, 0xd

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget-wide v8, p2, Lg5/o;->o:J

    const/16 v6, 0xe

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget-wide v8, p2, Lg5/o;->p:J

    const/16 v6, 0xf

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget-boolean v6, p2, Lg5/o;->q:Z

    int-to-long v8, v6

    const/16 v6, 0x10

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->r:I

    const-string v8, "policy"

    invoke-static {v6, v8}, La6/q;->r(ILjava/lang/String;)V

    invoke-static {v6}, Landroidx/fragment/app/t1;->d(I)I

    move-result v6

    if-eqz v6, :cond_3

    if-ne v6, v2, :cond_2

    move v6, v2

    goto :goto_1

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    move v6, v7

    :goto_1
    int-to-long v8, v6

    const/16 v6, 0x11

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->s:I

    int-to-long v8, v6

    const/16 v6, 0x12

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->t:I

    int-to-long v8, v6

    const/16 v6, 0x13

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    const/16 v6, 0x14

    iget-wide v8, p2, Lg5/o;->u:J

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->v:I

    int-to-long v8, v6

    const/16 v6, 0x15

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget v6, p2, Lg5/o;->w:I

    int-to-long v8, v6

    const/16 v6, 0x16

    invoke-interface {p1, v6, v8, v9}, Lq4/c;->p(IJ)V

    iget-object v6, p2, Lg5/o;->x:Ljava/lang/String;

    const/16 v8, 0x17

    if-nez v6, :cond_4

    invoke-interface {p1, v8}, Lq4/c;->D(I)V

    goto :goto_2

    :cond_4
    invoke-interface {p1, v8, v6}, Lq4/c;->h(ILjava/lang/String;)V

    :goto_2
    iget-object p2, p2, Lg5/o;->j:Lx4/d;

    iget v6, p2, Lx4/d;->a:I

    const-string v8, "networkType"

    invoke-static {v6, v8}, La6/q;->r(ILjava/lang/String;)V

    invoke-static {v6}, Landroidx/fragment/app/t1;->d(I)I

    move-result v8

    if-eqz v8, :cond_9

    if-eq v8, v2, :cond_8

    if-eq v8, v1, :cond_7

    if-eq v8, v0, :cond_a

    if-eq v8, v3, :cond_6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_5

    if-ne v6, v5, :cond_5

    move v0, v4

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Could not convert "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lr0/i;->q(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to int"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v7

    :cond_a
    :goto_3
    const/16 v1, 0x18

    int-to-long v2, v0

    invoke-interface {p1, v1, v2, v3}, Lq4/c;->p(IJ)V

    iget-object v0, p2, Lx4/d;->b:Lh5/e;

    const-string v1, "requestCompat"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-object v0, v0, Lh5/e;->a:Ljava/lang/Object;

    check-cast v0, Landroid/net/NetworkRequest;

    const/16 v2, 0x1d

    if-nez v0, :cond_b

    new-array p0, v7, [B

    goto/16 :goto_a

    :cond_b
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    new-instance v4, Ljava/io/ObjectOutputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const/16 v5, 0x1f

    if-lt v1, v5, :cond_c

    :try_start_1
    invoke-static {v0}, Lb5/c;->z(Landroid/net/NetworkRequest;)[I

    move-result-object p0

    const-string v1, "request.transportTypes"

    invoke-static {p0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    new-array v1, p0, [I

    fill-array-data v1, :array_0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v8, v7

    :goto_4
    if-ge v8, p0, :cond_e

    aget v9, v1, v8

    invoke-virtual {v0, v9}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_e
    invoke-static {v6}, Lu8/m;->A0(Ljava/util/List;)[I

    move-result-object p0

    :goto_5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v5, :cond_f

    invoke-static {v0}, Lb5/c;->C(Landroid/net/NetworkRequest;)[I

    move-result-object v0

    const-string v1, "request.capabilities"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v7

    :goto_6
    if-ge v6, v2, :cond_11

    aget v8, v1, v6

    invoke-virtual {v0, v8}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_11
    invoke-static {v5}, Lu8/m;->A0(Ljava/util/List;)[I

    move-result-object v0

    :goto_7
    array-length v1, p0

    invoke-virtual {v4, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    array-length v1, p0

    move v5, v7

    :goto_8
    if-ge v5, v1, :cond_12

    aget v6, p0, v5

    invoke-virtual {v4, v6}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_f

    :cond_12
    array-length p0, v0

    invoke-virtual {v4, p0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    array-length p0, v0

    move v1, v7

    :goto_9
    if-ge v1, p0, :cond_13

    aget v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/io/ObjectOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_13
    :try_start_2
    invoke-virtual {v4}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string v0, "outputStream.toByteArray()"

    invoke-static {p0, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    const/16 v0, 0x19

    invoke-interface {p1, v0, p0}, Lq4/c;->r(I[B)V

    iget-boolean p0, p2, Lx4/d;->c:Z

    const/16 v0, 0x1a

    int-to-long v3, p0

    invoke-interface {p1, v0, v3, v4}, Lq4/c;->p(IJ)V

    iget-boolean p0, p2, Lx4/d;->d:Z

    const/16 v0, 0x1b

    int-to-long v3, p0

    invoke-interface {p1, v0, v3, v4}, Lq4/c;->p(IJ)V

    iget-boolean p0, p2, Lx4/d;->e:Z

    const/16 v0, 0x1c

    int-to-long v3, p0

    invoke-interface {p1, v0, v3, v4}, Lq4/c;->p(IJ)V

    iget-boolean p0, p2, Lx4/d;->f:Z

    int-to-long v0, p0

    invoke-interface {p1, v2, v0, v1}, Lq4/c;->p(IJ)V

    const/16 p0, 0x1e

    iget-wide v0, p2, Lx4/d;->g:J

    invoke-interface {p1, p0, v0, v1}, Lq4/c;->p(IJ)V

    const/16 p0, 0x1f

    iget-wide v0, p2, Lx4/d;->h:J

    invoke-interface {p1, p0, v0, v1}, Lq4/c;->p(IJ)V

    iget-object p0, p2, Lx4/d;->i:Ljava/util/Set;

    const-string p2, "triggers"

    invoke-static {p0, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_14

    new-array p0, v7, [B

    goto :goto_c

    :cond_14
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_3
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx4/c;

    iget-object v2, v1, Lx4/c;->a:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-boolean v1, v1, Lx4/c;->b:Z

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeBoolean(Z)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_b

    :catchall_1
    move-exception p0

    goto :goto_d

    :cond_15
    :try_start_5
    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-interface {p2}, Ljava/io/Closeable;->close()V

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const-string p2, "outputStream.toByteArray()"

    invoke-static {p0, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    const/16 p2, 0x20

    invoke-interface {p1, p2, p0}, Lq4/c;->r(I[B)V

    return-void

    :catchall_2
    move-exception p0

    goto :goto_e

    :goto_d
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_7
    invoke-static {v0, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_e
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception p1

    invoke-static {p2, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :catchall_5
    move-exception p0

    goto :goto_10

    :goto_f
    :try_start_9
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :catchall_6
    move-exception p1

    :try_start_a
    invoke-static {v4, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :goto_10
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catchall_7
    move-exception p1

    invoke-static {v3, p0}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :pswitch_2
    check-cast p2, Lg5/k;

    iget-object p0, p2, Lg5/k;->a:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget-object p0, p2, Lg5/k;->b:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lq4/c;->h(ILjava/lang/String;)V

    return-void

    :pswitch_3
    check-cast p2, Lg5/g;

    iget-object p0, p2, Lg5/g;->a:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget p0, p2, Lg5/g;->b:I

    int-to-long v2, p0

    invoke-interface {p1, v1, v2, v3}, Lq4/c;->p(IJ)V

    iget p0, p2, Lg5/g;->c:I

    int-to-long v1, p0

    invoke-interface {p1, v0, v1, v2}, Lq4/c;->p(IJ)V

    return-void

    :pswitch_4
    check-cast p2, Lg5/d;

    iget-object p0, p2, Lg5/d;->a:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget-object p0, p2, Lg5/d;->b:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Lq4/c;->p(IJ)V

    return-void

    :pswitch_5
    check-cast p2, Lg5/a;

    iget-object p0, p2, Lg5/a;->a:Ljava/lang/String;

    invoke-interface {p1, v2, p0}, Lq4/c;->h(ILjava/lang/String;)V

    iget-object p0, p2, Lg5/a;->b:Ljava/lang/String;

    invoke-interface {p1, v1, p0}, Lq4/c;->h(ILjava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x2
        0x0
        0x3
        0x6
        0x9
        0x8
        0x4
        0x1
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x11
        0x5
        0x2
        0xa
        0x1d
        0x13
        0x3
        0x20
        0x7
        0x4
        0xc
        0x17
        0x0
        0x21
        0x14
        0xb
        0xd
        0x12
        0x15
        0xf
        0x23
        0x22
        0x8
        0x1
        0x19
        0xe
        0x10
        0x6
        0x9
    .end array-data
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lk4/p;->a()Lr4/i;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0, p1}, Lg5/b;->g(Lr4/i;Ljava/lang/Object;)V

    iget-object p1, v0, Lr4/i;->m:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lk4/p;->f(Lr4/i;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v0}, Lk4/p;->f(Lr4/i;)V

    throw p1
.end method
