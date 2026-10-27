.class public final Lf7/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu7/b;


# instance fields
.field public final l:Lf7/d;

.field public final m:I

.field public final n:Lf7/b;

.field public final o:J

.field public final p:J


# direct methods
.method public constructor <init>(Lf7/d;ILf7/b;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/u;->l:Lf7/d;

    iput p2, p0, Lf7/u;->m:I

    iput-object p3, p0, Lf7/u;->n:Lf7/b;

    iput-wide p4, p0, Lf7/u;->o:J

    iput-wide p6, p0, Lf7/u;->p:J

    return-void
.end method

.method public static a(Lf7/o;Lcom/google/android/gms/common/internal/a;I)Lg7/d;
    .locals 4

    iget-object p1, p1, Lcom/google/android/gms/common/internal/a;->u:Lg7/y;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lg7/y;->o:Lg7/d;

    :goto_0
    if-eqz p1, :cond_6

    iget-boolean v1, p1, Lg7/d;->m:Z

    if-eqz v1, :cond_6

    iget-object v1, p1, Lg7/d;->o:[I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    iget-object v1, p1, Lg7/d;->q:[I

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_4

    aget v3, v1, v2

    if-ne v3, p2, :cond_2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_6

    aget v3, v1, v2

    if-ne v3, p2, :cond_5

    :cond_4
    :goto_3
    iget p0, p0, Lf7/o;->n:I

    iget p2, p1, Lg7/d;->p:I

    if-ge p0, p2, :cond_6

    return-object p1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_4
    return-object v0
.end method


# virtual methods
.method public final b(Lu7/i;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lf7/u;->l:Lf7/d;

    invoke-virtual {v2}, Lf7/d;->a()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-static {}, Lg7/h;->b()Lg7/h;

    move-result-object v2

    iget-object v2, v2, Lg7/h;->a:Ljava/lang/Object;

    check-cast v2, Lg7/i;

    if-eqz v2, :cond_1

    iget-boolean v3, v2, Lg7/i;->m:Z

    if-eqz v3, :cond_b

    :cond_1
    iget-object v3, v0, Lf7/u;->l:Lf7/d;

    iget-object v4, v0, Lf7/u;->n:Lf7/b;

    iget-object v3, v3, Lf7/d;->j:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf7/o;

    if-eqz v3, :cond_b

    iget-object v4, v3, Lf7/o;->d:Le7/c;

    instance-of v5, v4, Lcom/google/android/gms/common/internal/a;

    if-eqz v5, :cond_b

    check-cast v4, Lcom/google/android/gms/common/internal/a;

    iget-wide v5, v0, Lf7/u;->o:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-lez v5, :cond_2

    move v5, v6

    goto :goto_0

    :cond_2
    move v5, v9

    :goto_0
    iget v10, v4, Lcom/google/android/gms/common/internal/a;->p:I

    const/16 v11, 0x64

    if-eqz v2, :cond_5

    iget-boolean v12, v2, Lg7/i;->n:Z

    and-int/2addr v5, v12

    iget v12, v2, Lg7/i;->o:I

    iget v13, v2, Lg7/i;->p:I

    iget v2, v2, Lg7/i;->l:I

    iget-object v14, v4, Lcom/google/android/gms/common/internal/a;->u:Lg7/y;

    if-eqz v14, :cond_4

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/a;->d()Z

    move-result v14

    if-nez v14, :cond_4

    iget v5, v0, Lf7/u;->m:I

    invoke-static {v3, v4, v5}, Lf7/u;->a(Lf7/o;Lcom/google/android/gms/common/internal/a;I)Lg7/d;

    move-result-object v3

    if-eqz v3, :cond_b

    iget-boolean v4, v3, Lg7/d;->n:Z

    if-eqz v4, :cond_3

    iget-wide v4, v0, Lf7/u;->o:J

    cmp-long v4, v4, v7

    if-lez v4, :cond_3

    goto :goto_1

    :cond_3
    move v6, v9

    :goto_1
    iget v13, v3, Lg7/d;->p:I

    move v5, v6

    :cond_4
    move v3, v12

    move v4, v13

    goto :goto_2

    :cond_5
    const/16 v12, 0x1388

    move v2, v9

    move v4, v11

    move v3, v12

    :goto_2
    iget-object v6, v0, Lf7/u;->l:Lf7/d;

    invoke-virtual {v1}, Lu7/i;->b()Z

    move-result v12

    const/4 v13, -0x1

    if-eqz v12, :cond_6

    move v12, v9

    goto :goto_5

    :cond_6
    iget-boolean v9, v1, Lu7/i;->d:Z

    if-eqz v9, :cond_7

    move v12, v11

    :goto_3
    move v9, v13

    goto :goto_5

    :cond_7
    iget-object v9, v1, Lu7/i;->a:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v1, v1, Lu7/i;->f:Ljava/lang/Exception;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    instance-of v9, v1, Le7/d;

    if-eqz v9, :cond_9

    check-cast v1, Le7/d;

    iget-object v1, v1, Le7/d;->l:Lcom/google/android/gms/common/api/Status;

    iget v9, v1, Lcom/google/android/gms/common/api/Status;->l:I

    iget-object v1, v1, Lcom/google/android/gms/common/api/Status;->o:Ld7/a;

    if-nez v1, :cond_8

    :goto_4
    move v12, v9

    goto :goto_3

    :cond_8
    iget v1, v1, Ld7/a;->m:I

    move v12, v9

    move v9, v1

    goto :goto_5

    :cond_9
    const/16 v9, 0x65

    goto :goto_4

    :goto_5
    if-eqz v5, :cond_a

    iget-wide v7, v0, Lf7/u;->o:J

    iget-wide v13, v0, Lf7/u;->p:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    sub-long v13, v17, v13

    long-to-int v13, v13

    move-wide/from16 v16, v15

    move-wide v14, v7

    :goto_6
    move/from16 v21, v13

    goto :goto_7

    :cond_a
    move-wide v14, v7

    move-wide/from16 v16, v14

    goto :goto_6

    :goto_7
    iget v11, v0, Lf7/u;->m:I

    move/from16 v20, v10

    new-instance v10, Lg7/g;

    const/16 v18, 0x0

    const/16 v19, 0x0

    move v13, v9

    invoke-direct/range {v10 .. v21}, Lg7/g;-><init>(IIIJJLjava/lang/String;Ljava/lang/String;II)V

    move-object v14, v10

    int-to-long v0, v3

    new-instance v13, Lf7/v;

    move-wide/from16 v16, v0

    move v15, v2

    move/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lf7/v;-><init>(Lg7/g;IJI)V

    iget-object v0, v6, Lf7/d;->m:Ln7/f;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_b
    :goto_8
    return-void
.end method
