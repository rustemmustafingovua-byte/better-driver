.class public abstract Ld1/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lad/b2;

.field public static final b:Lx2/k;

.field public static final c:Ljava/lang/Object;

.field public static d:Ld1/m;

.field public static e:J

.field public static final f:Ld1/k;

.field public static final g:Ld1/c0;

.field public static h:Ljava/lang/Object;

.field public static i:Ljava/lang/Object;

.field public static final j:Ld1/b;

.field public static final k:Lz0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lad/b2;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, Lad/b2;-><init>(I)V

    sput-object v0, Ld1/p;->a:Lad/b2;

    new-instance v0, Lx2/k;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lx2/k;-><init>(I)V

    sput-object v0, Ld1/p;->b:Lx2/k;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ld1/p;->c:Ljava/lang/Object;

    sget-object v4, Ld1/m;->p:Ld1/m;

    sput-object v4, Ld1/p;->d:Ld1/m;

    const/4 v0, 0x1

    int-to-long v0, v0

    add-long v2, v0, v0

    sput-wide v2, Ld1/p;->e:J

    new-instance v2, Ld1/k;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x10

    new-array v5, v3, [J

    iput-object v5, v2, Ld1/k;->b:[J

    new-array v5, v3, [I

    iput-object v5, v2, Ld1/k;->c:[I

    new-array v5, v3, [I

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    if-ge v6, v3, :cond_0

    add-int/lit8 v8, v6, 0x1

    aput v8, v5, v6

    move v6, v8

    goto :goto_0

    :cond_0
    iput-object v5, v2, Ld1/k;->d:[I

    sput-object v2, Ld1/p;->f:Ld1/k;

    new-instance v2, Ld1/c0;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v2, v5, v6}, Ld1/c0;-><init>(IB)V

    new-array v5, v3, [I

    iput-object v5, v2, Ld1/c0;->c:Ljava/lang/Object;

    new-array v3, v3, [Lz0/l;

    iput-object v3, v2, Ld1/c0;->d:Ljava/lang/Object;

    sput-object v2, Ld1/p;->g:Ld1/c0;

    sget-object v2, Lu8/r;->l:Lu8/r;

    sput-object v2, Ld1/p;->h:Ljava/lang/Object;

    sput-object v2, Ld1/p;->i:Ljava/lang/Object;

    sget-wide v2, Ld1/p;->e:J

    add-long/2addr v0, v2

    sput-wide v0, Ld1/p;->e:J

    new-instance v1, Ld1/b;

    new-instance v6, Lad/b2;

    const/16 v0, 0x15

    invoke-direct {v6, v0}, Lad/b2;-><init>(I)V

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Ld1/c;-><init>(JLd1/m;Li9/c;Li9/c;)V

    sget-object v0, Ld1/p;->d:Ld1/m;

    iget-wide v2, v1, Ld1/g;->b:J

    invoke-virtual {v0, v2, v3}, Ld1/m;->e(J)Ld1/m;

    move-result-object v0

    sput-object v0, Ld1/p;->d:Ld1/m;

    sput-object v1, Ld1/p;->j:Ld1/b;

    new-instance v0, Lz0/a;

    invoke-direct {v0, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ld1/p;->k:Lz0/a;

    return-void
.end method

.method public static final a()V
    .locals 1

    sget-object v0, Ld1/p;->a:Lad/b2;

    invoke-static {v0}, Ld1/p;->e(Li9/c;)Ljava/lang/Object;

    return-void
.end method

.method public static final b(JLd1/c;Ld1/m;)Ljava/util/HashMap;
    .locals 22

    invoke-virtual/range {p2 .. p2}, Ld1/c;->x()Lk/n0;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/16 v17, 0x0

    goto/16 :goto_6

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ld1/g;->g()J

    move-result-wide v2

    invoke-virtual/range {p2 .. p2}, Ld1/g;->d()Ld1/m;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ld1/m;->e(J)Ld1/m;

    move-result-object v4

    move-object/from16 v5, p2

    iget-object v6, v5, Ld1/c;->j:Ld1/m;

    invoke-virtual {v4, v6}, Ld1/m;->d(Ld1/m;)Ld1/m;

    move-result-object v4

    iget-object v6, v0, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v0, v0, Lk/n0;->a:[J

    array-length v7, v0

    add-int/lit8 v7, v7, -0x2

    if-ltz v7, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_0
    aget-wide v11, v0, v9

    not-long v13, v11

    const/4 v15, 0x7

    shl-long/2addr v13, v15

    and-long/2addr v13, v11

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_a

    sub-int v13, v9, v7

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    const/16 v14, 0x8

    rsub-int/lit8 v13, v13, 0x8

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_8

    const-wide/16 v16, 0xff

    and-long v16, v11, v16

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_7

    shl-int/lit8 v16, v9, 0x3

    add-int v16, v16, v15

    aget-object v16, v6, v16

    const/16 v17, 0x0

    move-object/from16 v1, v16

    check-cast v1, Ld1/h0;

    invoke-interface {v1}, Ld1/h0;->a()Ld1/j0;

    move-result-object v8

    move-object/from16 v20, v0

    move/from16 v18, v14

    move/from16 v19, v15

    move-wide/from16 v14, p0

    move-object/from16 v0, p3

    invoke-static {v8, v14, v15, v0}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v8, v2, v3, v4}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object v0

    if-nez v0, :cond_3

    :goto_2
    goto :goto_3

    :cond_3
    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_6

    move-object/from16 v21, v4

    invoke-virtual/range {p2 .. p2}, Ld1/g;->d()Ld1/m;

    move-result-object v4

    invoke-static {v8, v2, v3, v4}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v1, v0, v5, v4}, Ld1/h0;->b(Ld1/j0;Ld1/j0;Ld1/j0;)Ld1/j0;

    move-result-object v0

    if-eqz v0, :cond_c

    if-nez v10, :cond_4

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    :cond_4
    move-object v1, v10

    invoke-interface {v10, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v1

    goto :goto_4

    :cond_5
    invoke-static {}, Ld1/p;->r()V

    throw v17

    :cond_6
    :goto_3
    move-object/from16 v21, v4

    goto :goto_4

    :cond_7
    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move/from16 v18, v14

    move/from16 v19, v15

    const/16 v17, 0x0

    move-wide/from16 v14, p0

    :goto_4
    shr-long v11, v11, v18

    add-int/lit8 v0, v19, 0x1

    move-object/from16 v5, p2

    move v15, v0

    move/from16 v14, v18

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    goto :goto_1

    :cond_8
    move-object/from16 v20, v0

    move-object/from16 v21, v4

    move v0, v14

    const/16 v17, 0x0

    move-wide/from16 v14, p0

    if-ne v13, v0, :cond_9

    goto :goto_5

    :cond_9
    return-object v10

    :cond_a
    move-wide/from16 v14, p0

    move-object/from16 v20, v0

    move-object/from16 v21, v4

    const/16 v17, 0x0

    :goto_5
    if-eq v9, v7, :cond_b

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p2

    move-object/from16 v0, v20

    move-object/from16 v4, v21

    goto/16 :goto_0

    :cond_b
    return-object v10

    :cond_c
    :goto_6
    return-object v17
.end method

.method public static final c(Ld1/g;)V
    .locals 3

    sget-object v0, Ld1/p;->d:Ld1/m;

    invoke-virtual {p0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ld1/m;->c(J)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Snapshot is not open: snapshotId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", disposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Ld1/g;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", applied="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v1, p0, Ld1/c;

    if-eqz v1, :cond_0

    check-cast p0, Ld1/c;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Ld1/c;->m:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_1

    :cond_1
    const-string p0, "read-only"

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", lowestPin="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v1, Ld1/p;->f:Ld1/k;

    iget v2, v1, Ld1/k;->a:I

    if-lez v2, :cond_2

    iget-object v1, v1, Ld1/k;->b:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    const-wide/16 v1, -0x1

    :goto_2
    monitor-exit p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    return-void
.end method

.method public static final d(Ld1/m;JJ)Ld1/m;
    .locals 2

    :goto_0
    invoke-static {p1, p2, p3, p4}, Lj9/n;->i(JJ)I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Ld1/m;->e(J)Ld1/m;

    move-result-object p0

    const/4 v0, 0x1

    int-to-long v0, v0

    add-long/2addr p1, v0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static final e(Li9/c;)Ljava/lang/Object;
    .locals 15

    sget-object v0, Ld1/p;->j:Ld1/b;

    sget-object v1, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Ld1/c;->h:Lk/n0;

    if-eqz v2, :cond_0

    sget-object v3, Ld1/p;->k:Lz0/a;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-static {v0, p0}, Ld1/p;->v(Ld1/b;Li9/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/4 v3, -0x1

    :try_start_1
    sget-object v4, Ld1/p;->h:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v5

    move v6, v1

    :goto_1
    if-ge v6, v5, :cond_1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Li9/e;

    new-instance v8, Lt0/d;

    invoke-direct {v8, v2}, Lt0/d;-><init>(Lk/n0;)V

    invoke-interface {v7, v8, v0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_1
    sget-object v0, Ld1/p;->k:Lz0/a;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    goto :goto_3

    :goto_2
    sget-object v0, Ld1/p;->k:Lz0/a;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    throw p0

    :cond_2
    :goto_3
    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    invoke-static {}, Ld1/p;->f()V

    if-eqz v2, :cond_6

    iget-object v3, v2, Lk/n0;->b:[Ljava/lang/Object;

    iget-object v2, v2, Lk/n0;->a:[J

    array-length v4, v2

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_6

    move v5, v1

    :goto_4
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    sub-int v8, v5, v4

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v1

    :goto_5
    if-ge v10, v8, :cond_4

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_3

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v3, v11

    check-cast v11, Ld1/h0;

    invoke-static {v11}, Ld1/p;->q(Ld1/h0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_3
    :goto_6
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_4
    if-ne v8, v9, :cond_6

    :cond_5
    if-eq v5, v4, :cond_6

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    monitor-exit v0

    return-object p0

    :goto_7
    monitor-exit v0

    throw p0

    :goto_8
    monitor-exit v1

    throw p0
.end method

.method public static final f()V
    .locals 7

    sget-object v0, Ld1/p;->g:Ld1/c0;

    iget v1, v0, Ld1/c0;->b:I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    const/4 v5, 0x0

    if-ge v3, v1, :cond_3

    iget-object v6, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v6, [Lz0/l;

    aget-object v6, v6, v3

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    :cond_0
    if-eqz v5, :cond_2

    check-cast v5, Ld1/h0;

    invoke-static {v5}, Ld1/p;->p(Ld1/h0;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v4, v3, :cond_1

    iget-object v5, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v5, [Lz0/l;

    aput-object v6, v5, v4

    iget-object v5, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, [I

    aget v6, v5, v3

    aput v6, v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_1
    if-ge v3, v1, :cond_4

    iget-object v6, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v6, [Lz0/l;

    aput-object v5, v6, v3

    iget-object v6, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v6, [I

    aput v2, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eq v4, v1, :cond_5

    iput v4, v0, Ld1/c0;->b:I

    :cond_5
    return-void
.end method

.method public static final g(Ld1/g;Li9/c;Z)Ld1/g;
    .locals 8

    instance-of v0, p0, Ld1/c;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ld1/n0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1, p2}, Ld1/n0;-><init>(Ld1/g;Li9/c;ZZ)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v2, Ld1/m0;

    if-eqz v0, :cond_2

    check-cast p0, Ld1/c;

    :goto_1
    move-object v3, p0

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Ld1/m0;-><init>(Ld1/c;Li9/c;Li9/c;ZZ)V

    return-object v2
.end method

.method public static final h(Ld1/j0;)Ld1/j0;
    .locals 4

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    invoke-virtual {v0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0}, Ld1/g;->d()Ld1/m;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v1

    invoke-virtual {v1}, Ld1/g;->g()J

    move-result-wide v2

    invoke-virtual {v1}, Ld1/g;->d()Ld1/m;

    move-result-object v1

    invoke-static {p0, v2, v3, v1}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ld1/p;->r()V

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static final i(Ld1/j0;Ld1/g;)Ld1/j0;
    .locals 3

    invoke-virtual {p1}, Ld1/g;->g()J

    move-result-wide v0

    invoke-virtual {p1}, Ld1/g;->d()Ld1/m;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {p1}, Ld1/g;->d()Ld1/m;

    move-result-object p1

    invoke-static {p0, v1, v2, p1}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Ld1/p;->r()V

    const/4 p0, 0x0

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    return-object v0
.end method

.method public static final j()Ld1/g;
    .locals 1

    sget-object v0, Ld1/p;->b:Lx2/k;

    invoke-virtual {v0}, Lx2/k;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ld1/g;

    if-nez v0, :cond_0

    sget-object v0, Ld1/p;->j:Ld1/b;

    :cond_0
    return-object v0
.end method

.method public static final k(Li9/c;Li9/c;Z)Li9/c;
    .locals 1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eq p0, p1, :cond_1

    new-instance p2, Ld1/n;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Ld1/n;-><init>(Li9/c;Li9/c;I)V

    return-object p2

    :cond_1
    if-nez p0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method public static final l(Li9/c;Li9/c;)Li9/c;
    .locals 2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eq p0, p1, :cond_0

    new-instance v0, Ld1/n;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ld1/n;-><init>(Li9/c;Li9/c;I)V

    return-object v0

    :cond_0
    if-nez p0, :cond_1

    return-object p1

    :cond_1
    return-object p0
.end method

.method public static final m(Ld1/j0;Ld1/h0;)Ld1/j0;
    .locals 10

    invoke-interface {p1}, Ld1/h0;->a()Ld1/j0;

    move-result-object v0

    sget-wide v1, Ld1/p;->e:J

    sget-object v3, Ld1/p;->f:Ld1/k;

    iget v4, v3, Ld1/k;->a:I

    if-lez v4, :cond_0

    iget-object v1, v3, Ld1/k;->b:[J

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    :cond_0
    const/4 v3, 0x1

    int-to-long v3, v3

    sub-long/2addr v1, v3

    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    if-eqz v0, :cond_5

    iget-wide v5, v0, Ld1/j0;->a:J

    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    goto :goto_1

    :cond_1
    cmp-long v7, v5, v7

    if-eqz v7, :cond_4

    invoke-static {v5, v6, v1, v2}, Lj9/n;->i(JJ)I

    move-result v7

    if-gtz v7, :cond_4

    sget-object v7, Ld1/m;->p:Ld1/m;

    invoke-virtual {v7, v5, v6}, Ld1/m;->c(J)Z

    move-result v5

    if-nez v5, :cond_4

    if-nez v4, :cond_2

    move-object v4, v0

    goto :goto_2

    :cond_2
    iget-wide v1, v0, Ld1/j0;->a:J

    iget-wide v5, v4, Ld1/j0;->a:J

    invoke-static {v1, v2, v5, v6}, Lj9/n;->i(JJ)I

    move-result v1

    if-gez v1, :cond_3

    :goto_1
    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, v4

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v0, v0, Ld1/j0;->b:Ld1/j0;

    goto :goto_0

    :cond_5
    :goto_3
    const-wide v0, 0x7fffffffffffffffL

    if-eqz v3, :cond_6

    iput-wide v0, v3, Ld1/j0;->a:J

    return-object v3

    :cond_6
    invoke-virtual {p0, v0, v1}, Ld1/j0;->b(J)Ld1/j0;

    move-result-object p0

    invoke-interface {p1}, Ld1/h0;->a()Ld1/j0;

    move-result-object v0

    iput-object v0, p0, Ld1/j0;->b:Ld1/j0;

    invoke-interface {p1, p0}, Ld1/h0;->d(Ld1/j0;)V

    return-object p0
.end method

.method public static final n(Ld1/g;Ld1/h0;)V
    .locals 1

    invoke-virtual {p0}, Ld1/g;->h()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ld1/g;->t(I)V

    invoke-virtual {p0}, Ld1/g;->i()Li9/c;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static final o(Ld1/j0;Ld1/i0;Ld1/g;Ld1/j0;)Ld1/j0;
    .locals 4

    invoke-virtual {p2}, Ld1/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ld1/g;->n(Ld1/h0;)V

    :cond_0
    invoke-virtual {p2}, Ld1/g;->g()J

    move-result-wide v0

    iget-wide v2, p3, Ld1/j0;->a:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_1

    return-object p3

    :cond_1
    sget-object v2, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0, p1}, Ld1/p;->m(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iput-wide v0, p0, Ld1/j0;->a:J

    iget-wide v0, p3, Ld1/j0;->a:J

    const/4 p3, 0x1

    int-to-long v2, p3

    cmp-long p3, v0, v2

    if-eqz p3, :cond_2

    invoke-virtual {p2, p1}, Ld1/g;->n(Ld1/h0;)V

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static final p(Ld1/h0;)Z
    .locals 15

    invoke-interface {p0}, Ld1/h0;->a()Ld1/j0;

    move-result-object v0

    sget-wide v1, Ld1/p;->e:J

    sget-object v3, Ld1/p;->f:Ld1/k;

    iget v4, v3, Ld1/k;->a:I

    const/4 v5, 0x0

    if-lez v4, :cond_0

    iget-object v1, v3, Ld1/k;->b:[J

    aget-wide v1, v1, v5

    :cond_0
    const/4 v3, 0x0

    move-object v4, v3

    move v6, v5

    :goto_0
    if-eqz v0, :cond_9

    iget-wide v7, v0, Ld1/j0;->a:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-eqz v11, :cond_8

    invoke-static {v7, v8, v1, v2}, Lj9/n;->i(JJ)I

    move-result v7

    if-gez v7, :cond_7

    if-nez v3, :cond_1

    add-int/lit8 v6, v6, 0x1

    move-object v3, v0

    goto :goto_4

    :cond_1
    iget-wide v7, v0, Ld1/j0;->a:J

    iget-wide v11, v3, Ld1/j0;->a:J

    invoke-static {v7, v8, v11, v12}, Lj9/n;->i(JJ)I

    move-result v7

    if-gez v7, :cond_2

    move-object v7, v3

    move-object v3, v0

    goto :goto_1

    :cond_2
    move-object v7, v0

    :goto_1
    if-nez v4, :cond_6

    invoke-interface {p0}, Ld1/h0;->a()Ld1/j0;

    move-result-object v4

    move-object v8, v4

    :goto_2
    if-eqz v4, :cond_5

    iget-wide v11, v4, Ld1/j0;->a:J

    invoke-static {v11, v12, v1, v2}, Lj9/n;->i(JJ)I

    move-result v11

    if-ltz v11, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v11, v8, Ld1/j0;->a:J

    iget-wide v13, v4, Ld1/j0;->a:J

    invoke-static {v11, v12, v13, v14}, Lj9/n;->i(JJ)I

    move-result v11

    if-gez v11, :cond_4

    move-object v8, v4

    :cond_4
    iget-object v4, v4, Ld1/j0;->b:Ld1/j0;

    goto :goto_2

    :cond_5
    move-object v4, v8

    :cond_6
    :goto_3
    iput-wide v9, v3, Ld1/j0;->a:J

    invoke-virtual {v3, v4}, Ld1/j0;->a(Ld1/j0;)V

    move-object v3, v7

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    :cond_8
    :goto_4
    iget-object v0, v0, Ld1/j0;->b:Ld1/j0;

    goto :goto_0

    :cond_9
    const/4 p0, 0x1

    if-le v6, p0, :cond_a

    return p0

    :cond_a
    return v5
.end method

.method public static final q(Ld1/h0;)V
    .locals 10

    invoke-static {p0}, Ld1/p;->p(Ld1/h0;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Ld1/p;->g:Ld1/c0;

    iget v1, v0, Ld1/c0;->b:I

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-lez v1, :cond_d

    iget v5, v0, Ld1/c0;->b:I

    add-int/lit8 v5, v5, -0x1

    move v6, v3

    :goto_0
    if-gt v6, v5, :cond_c

    add-int v7, v6, v5

    ushr-int/lit8 v7, v7, 0x1

    iget-object v8, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v8, [I

    aget v8, v8, v7

    if-ge v8, v2, :cond_0

    add-int/lit8 v6, v7, 0x1

    goto :goto_0

    :cond_0
    if-le v8, v2, :cond_1

    add-int/lit8 v5, v7, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v5, [Lz0/l;

    aget-object v5, v5, v7

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v6

    :goto_1
    if-ne p0, v5, :cond_3

    :goto_2
    move v4, v7

    goto :goto_8

    :cond_3
    add-int/lit8 v5, v7, -0x1

    :goto_3
    if-ge v4, v5, :cond_7

    iget-object v8, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v8, [I

    aget v8, v8, v5

    if-eq v8, v2, :cond_4

    goto :goto_5

    :cond_4
    iget-object v8, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v8, [Lz0/l;

    aget-object v8, v8, v5

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v8

    goto :goto_4

    :cond_5
    move-object v8, v6

    :goto_4
    if-ne v8, p0, :cond_6

    move v4, v5

    goto :goto_8

    :cond_6
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_7
    :goto_5
    add-int/lit8 v7, v7, 0x1

    iget v4, v0, Ld1/c0;->b:I

    :goto_6
    if-ge v7, v4, :cond_b

    iget-object v5, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, [I

    aget v5, v5, v7

    if-eq v5, v2, :cond_8

    add-int/lit8 v7, v7, 0x1

    neg-int v4, v7

    goto :goto_8

    :cond_8
    iget-object v5, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v5, [Lz0/l;

    aget-object v5, v5, v7

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    goto :goto_7

    :cond_9
    move-object v5, v6

    :goto_7
    if-ne v5, p0, :cond_a

    goto :goto_2

    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_b
    iget v4, v0, Ld1/c0;->b:I

    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    goto :goto_8

    :cond_c
    add-int/lit8 v6, v6, 0x1

    neg-int v4, v6

    :goto_8
    if-ltz v4, :cond_d

    goto :goto_a

    :cond_d
    add-int/lit8 v4, v4, 0x1

    neg-int v4, v4

    iget-object v5, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v5, [Lz0/l;

    array-length v6, v5

    if-ne v1, v6, :cond_e

    mul-int/lit8 v6, v6, 0x2

    new-array v7, v6, [Lz0/l;

    new-array v6, v6, [I

    add-int/lit8 v8, v4, 0x1

    sub-int v9, v1, v4

    invoke-static {v5, v4, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v5, [Lz0/l;

    invoke-static {v5, v3, v7, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, [I

    invoke-static {v5, v6, v8, v4, v1}, Lu8/l;->i0([I[IIII)V

    iget-object v1, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v5, 0x6

    invoke-static {v1, v6, v3, v4, v5}, Lu8/l;->l0([I[IIII)V

    iput-object v7, v0, Ld1/c0;->d:Ljava/lang/Object;

    iput-object v6, v0, Ld1/c0;->c:Ljava/lang/Object;

    goto :goto_9

    :cond_e
    add-int/lit8 v3, v4, 0x1

    sub-int v6, v1, v4

    invoke-static {v5, v4, v5, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v5, [I

    invoke-static {v5, v5, v3, v4, v1}, Lu8/l;->i0([I[IIII)V

    :goto_9
    iget-object v1, v0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v1, [Lz0/l;

    new-instance v3, Lz0/l;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    aput-object v3, v1, v4

    iget-object p0, v0, Ld1/c0;->c:Ljava/lang/Object;

    check-cast p0, [I

    aput v2, p0, v4

    iget p0, v0, Ld1/c0;->b:I

    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Ld1/c0;->b:I

    :cond_f
    :goto_a
    return-void
.end method

.method public static final r()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final s(Ld1/j0;JLd1/m;)Ld1/j0;
    .locals 6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_2

    iget-wide v2, p0, Ld1/j0;->a:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    invoke-static {v2, v3, p1, p2}, Lj9/n;->i(JJ)I

    move-result v4

    if-gtz v4, :cond_1

    invoke-virtual {p3, v2, v3}, Ld1/m;->c(J)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-wide v2, v1, Ld1/j0;->a:J

    iget-wide v4, p0, Ld1/j0;->a:J

    invoke-static {v2, v3, v4, v5}, Lj9/n;->i(JJ)I

    move-result v2

    if-gez v2, :cond_1

    :goto_1
    move-object v1, p0

    :cond_1
    iget-object p0, p0, Ld1/j0;->b:Ld1/j0;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    return-object v1

    :cond_3
    return-object v0
.end method

.method public static final t(Ld1/j0;Ld1/h0;)Ld1/j0;
    .locals 3

    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    invoke-virtual {v0}, Ld1/g;->e()Li9/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0}, Ld1/g;->d()Ld1/m;

    move-result-object v0

    invoke-static {p0, v1, v2, v0}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object p0

    if-nez p0, :cond_2

    sget-object p0, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ld1/p;->j()Ld1/g;

    move-result-object v0

    invoke-interface {p1}, Ld1/h0;->a()Ld1/j0;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type T of androidx.compose.runtime.snapshots.SnapshotKt.readable"

    invoke-static {p1, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ld1/g;->g()J

    move-result-wide v1

    invoke-virtual {v0}, Ld1/g;->d()Ld1/m;

    move-result-object v0

    invoke-static {p1, v1, v2, v0}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    monitor-exit p0

    return-object p1

    :cond_1
    :try_start_1
    invoke-static {}, Ld1/p;->r()V

    const/4 p1, 0x0

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_2
    return-object p0
.end method

.method public static final u(I)V
    .locals 10

    sget-object v0, Ld1/p;->f:Ld1/k;

    iget-object v1, v0, Ld1/k;->d:[I

    aget v1, v1, p0

    iget v2, v0, Ld1/k;->a:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ld1/k;->b(II)V

    iget v2, v0, Ld1/k;->a:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Ld1/k;->a:I

    iget-object v2, v0, Ld1/k;->b:[J

    aget-wide v3, v2, v1

    move v5, v1

    :goto_0
    if-lez v5, :cond_0

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, -0x1

    aget-wide v7, v2, v6

    invoke-static {v7, v8, v3, v4}, Lj9/n;->i(JJ)I

    move-result v7

    if-lez v7, :cond_0

    invoke-virtual {v0, v6, v5}, Ld1/k;->b(II)V

    move v5, v6

    goto :goto_0

    :cond_0
    iget-object v2, v0, Ld1/k;->b:[J

    iget v3, v0, Ld1/k;->a:I

    shr-int/lit8 v3, v3, 0x1

    :goto_1
    if-ge v1, v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v4, -0x1

    iget v6, v0, Ld1/k;->a:I

    if-ge v4, v6, :cond_1

    aget-wide v6, v2, v4

    aget-wide v8, v2, v5

    invoke-static {v6, v7, v8, v9}, Lj9/n;->i(JJ)I

    move-result v6

    if-gez v6, :cond_1

    aget-wide v5, v2, v4

    aget-wide v7, v2, v1

    invoke-static {v5, v6, v7, v8}, Lj9/n;->i(JJ)I

    move-result v5

    if-gez v5, :cond_2

    invoke-virtual {v0, v4, v1}, Ld1/k;->b(II)V

    move v1, v4

    goto :goto_1

    :cond_1
    aget-wide v6, v2, v5

    aget-wide v8, v2, v1

    invoke-static {v6, v7, v8, v9}, Lj9/n;->i(JJ)I

    move-result v4

    if-gez v4, :cond_2

    invoke-virtual {v0, v5, v1}, Ld1/k;->b(II)V

    move v1, v5

    goto :goto_1

    :cond_2
    iget-object v1, v0, Ld1/k;->d:[I

    iget v2, v0, Ld1/k;->e:I

    aput v2, v1, p0

    iput p0, v0, Ld1/k;->e:I

    return-void
.end method

.method public static final v(Ld1/b;Li9/c;)Ljava/lang/Object;
    .locals 6

    iget-wide v0, p0, Ld1/g;->b:J

    sget-object v2, Ld1/p;->d:Ld1/m;

    invoke-virtual {v2, v0, v1}, Ld1/m;->b(J)Ld1/m;

    move-result-object v2

    invoke-interface {p1, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-wide v2, Ld1/p;->e:J

    const/4 v4, 0x1

    int-to-long v4, v4

    add-long/2addr v4, v2

    sput-wide v4, Ld1/p;->e:J

    sget-object v4, Ld1/p;->d:Ld1/m;

    invoke-virtual {v4, v0, v1}, Ld1/m;->b(J)Ld1/m;

    move-result-object v0

    sput-object v0, Ld1/p;->d:Ld1/m;

    iput-wide v2, p0, Ld1/g;->b:J

    iput-object v0, p0, Ld1/g;->a:Ld1/m;

    const/4 v0, 0x0

    iput v0, p0, Ld1/c;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Ld1/c;->h:Lk/n0;

    invoke-virtual {p0}, Ld1/g;->o()V

    sget-object p0, Ld1/p;->d:Ld1/m;

    invoke-virtual {p0, v2, v3}, Ld1/m;->e(J)Ld1/m;

    move-result-object p0

    sput-object p0, Ld1/p;->d:Ld1/m;

    return-object p1
.end method

.method public static final w(Ld1/j0;Ld1/h0;Ld1/g;)Ld1/j0;
    .locals 7

    invoke-virtual {p2}, Ld1/g;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ld1/g;->n(Ld1/h0;)V

    :cond_0
    invoke-virtual {p2}, Ld1/g;->g()J

    move-result-wide v0

    invoke-virtual {p2}, Ld1/g;->d()Ld1/m;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    iget-wide v3, p0, Ld1/j0;->a:J

    invoke-virtual {p2}, Ld1/g;->g()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    return-object p0

    :cond_1
    sget-object v3, Ld1/p;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-interface {p1}, Ld1/h0;->a()Ld1/j0;

    move-result-object v4

    invoke-virtual {p2}, Ld1/g;->d()Ld1/m;

    move-result-object v5

    invoke-static {v4, v0, v1, v5}, Ld1/p;->s(Ld1/j0;JLd1/m;)Ld1/j0;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-wide v5, v4, Ld1/j0;->a:J

    cmp-long v0, v5, v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v4, p1}, Ld1/p;->m(Ld1/j0;Ld1/h0;)Ld1/j0;

    move-result-object v0

    invoke-virtual {v0, v4}, Ld1/j0;->a(Ld1/j0;)V

    invoke-virtual {p2}, Ld1/g;->g()J

    move-result-wide v1

    iput-wide v1, v0, Ld1/j0;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v0

    :goto_0
    monitor-exit v3

    iget-wide v0, p0, Ld1/j0;->a:J

    const/4 p0, 0x1

    int-to-long v2, p0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_3

    invoke-virtual {p2, p1}, Ld1/g;->n(Ld1/h0;)V

    :cond_3
    return-object v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-static {}, Ld1/p;->r()V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v3

    throw p0

    :cond_5
    invoke-static {}, Ld1/p;->r()V

    throw v2
.end method
