.class public final Lba/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field public static final synthetic t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile indexInArray:I

.field public final l:Lba/m;

.field public final m:Lj9/y;

.field public n:Lba/b;

.field private volatile nextParkedWorker:Ljava/lang/Object;

.field public o:J

.field public p:J

.field public q:I

.field public r:Z

.field public final synthetic s:Lba/c;

.field private volatile synthetic workerCtl$volatile:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lba/a;

    const-string v1, "workerCtl$volatile"

    invoke-static {v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lba/a;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lba/c;I)V
    .locals 2

    iput-object p1, p0, Lba/a;->s:Lba/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-class p1, Lba/c;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    new-instance p1, Lba/m;

    invoke-direct {p1}, Lba/m;-><init>()V

    iput-object p1, p0, Lba/a;->l:Lba/m;

    new-instance p1, Lj9/y;

    invoke-direct {p1}, Lj9/y;-><init>()V

    iput-object p1, p0, Lba/a;->m:Lj9/y;

    sget-object p1, Lba/b;->o:Lba/b;

    iput-object p1, p0, Lba/a;->n:Lba/b;

    sget-object p1, Lba/c;->v:Lmb/s2;

    iput-object p1, p0, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-int p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2a

    :goto_0
    iput p1, p0, Lba/a;->q:I

    invoke-virtual {p0, p2}, Lba/a;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lba/i;
    .locals 11

    iget-object v0, p0, Lba/a;->n:Lba/b;

    sget-object v1, Lba/b;->l:Lba/b;

    iget-object v3, p0, Lba/a;->s:Lba/c;

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lba/a;->l:Lba/m;

    if-ne v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-object v0, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide v1, 0x7ffffc0000000000L

    and-long/2addr v1, v4

    const/16 v6, 0x2a

    shr-long/2addr v1, v6

    long-to-int v1, v1

    if-nez v1, :cond_b

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    sget-object p1, Lba/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v1, v0, Lba/i;->m:Z

    if-ne v1, v9, :cond_5

    :cond_3
    invoke-virtual {p1, v10, v0, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v8, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v0, :cond_3

    goto :goto_0

    :cond_5
    :goto_1
    sget-object p1, Lba/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {p1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    sget-object v0, Lba/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    :cond_6
    if-eq p1, v0, :cond_8

    sget-object v1, Lba/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-nez v1, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v10, v0, v9}, Lba/m;->c(IZ)Lba/i;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v8, v1

    :cond_8
    :goto_2
    if-nez v8, :cond_a

    iget-object p1, v3, Lba/c;->q:Lba/f;

    invoke-virtual {p1}, Lz9/k;->d()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/i;

    if-nez p1, :cond_9

    invoke-virtual {p0, v9}, Lba/a;->i(I)Lba/i;

    move-result-object p0

    return-object p0

    :cond_9
    return-object p1

    :cond_a
    return-object v8

    :cond_b
    const-wide v1, 0x40000000000L

    sub-long v6, v4, v1

    sget-object v2, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual/range {v2 .. v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lba/b;->l:Lba/b;

    iput-object v0, p0, Lba/a;->n:Lba/b;

    :goto_3
    if-eqz p1, :cond_10

    iget p1, v3, Lba/c;->l:I

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lba/a;->d(I)I

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_4
    if-eqz v9, :cond_d

    invoke-virtual {p0}, Lba/a;->e()Lba/i;

    move-result-object p1

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lba/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p1, v10, v8}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lba/i;

    if-nez p1, :cond_e

    invoke-virtual {v10}, Lba/m;->b()Lba/i;

    move-result-object p1

    :cond_e
    if-eqz p1, :cond_f

    return-object p1

    :cond_f
    if-nez v9, :cond_11

    invoke-virtual {p0}, Lba/a;->e()Lba/i;

    move-result-object p1

    if-eqz p1, :cond_11

    return-object p1

    :cond_10
    invoke-virtual {p0}, Lba/a;->e()Lba/i;

    move-result-object p1

    if-eqz p1, :cond_11

    return-object p1

    :cond_11
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lba/a;->i(I)Lba/i;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget p0, p0, Lba/a;->indexInArray:I

    return p0
.end method

.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(I)I
    .locals 2

    iget v0, p0, Lba/a;->q:I

    shl-int/lit8 v1, v0, 0xd

    xor-int/2addr v0, v1

    shr-int/lit8 v1, v0, 0x11

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x5

    xor-int/2addr v0, v1

    iput v0, p0, Lba/a;->q:I

    add-int/lit8 p0, p1, -0x1

    and-int v1, p0, p1

    if-nez v1, :cond_0

    and-int/2addr p0, v0

    return p0

    :cond_0
    const p0, 0x7fffffff

    and-int/2addr p0, v0

    rem-int/2addr p0, p1

    return p0
.end method

.method public final e()Lba/i;
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lba/a;->d(I)I

    move-result v0

    iget-object p0, p0, Lba/a;->s:Lba/c;

    if-nez v0, :cond_1

    iget-object v0, p0, Lba/c;->p:Lba/f;

    invoke-virtual {v0}, Lz9/k;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lba/c;->q:Lba/f;

    invoke-virtual {p0}, Lz9/k;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lba/i;

    return-object p0

    :cond_1
    iget-object v0, p0, Lba/c;->q:Lba/f;

    invoke-virtual {v0}, Lz9/k;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lba/i;

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    iget-object p0, p0, Lba/c;->p:Lba/f;

    invoke-virtual {p0}, Lz9/k;->d()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lba/i;

    return-object p0
.end method

.method public final f(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lba/a;->s:Lba/c;

    iget-object v1, v1, Lba/c;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v1, "TERMINATED"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    iput p1, p0, Lba/a;->indexInArray:I

    return-void
.end method

.method public final g(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    return-void
.end method

.method public final h(Lba/b;)Z
    .locals 6

    iget-object v0, p0, Lba/a;->n:Lba/b;

    sget-object v1, Lba/b;->l:Lba/b;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    sget-object v2, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-wide v3, 0x40000000000L

    iget-object v5, p0, Lba/a;->s:Lba/c;

    invoke-virtual {v2, v5, v3, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    :cond_1
    if-eq v0, p1, :cond_2

    iput-object p1, p0, Lba/a;->n:Lba/b;

    :cond_2
    return v1
.end method

.method public final i(I)Lba/i;
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    iget-object v3, v0, Lba/a;->s:Lba/c;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v4

    const-wide/32 v6, 0x1fffff

    and-long/2addr v4, v6

    long-to-int v2, v4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ge v2, v5, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v0, v2}, Lba/a;->d(I)I

    move-result v6

    const/4 v10, 0x0

    const-wide v11, 0x7fffffffffffffffL

    :goto_0
    if-ge v10, v2, :cond_11

    const/4 v15, 0x1

    add-int/2addr v6, v15

    if-le v6, v2, :cond_1

    move v6, v15

    :cond_1
    iget-object v5, v3, Lba/c;->r:Lz9/p;

    invoke-virtual {v5, v6}, Lz9/p;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lba/a;

    if-eqz v5, :cond_f

    if-eq v5, v0, :cond_f

    iget-object v5, v5, Lba/a;->l:Lba/m;

    const/4 v7, 0x3

    if-ne v1, v7, :cond_2

    invoke-virtual {v5}, Lba/m;->b()Lba/i;

    move-result-object v7

    const-wide v16, 0x7fffffffffffffffL

    const-wide/16 v18, 0x0

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Lba/m;->d:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7

    const-wide v16, 0x7fffffffffffffffL

    sget-object v8, Lba/m;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v8, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v8

    if-ne v1, v15, :cond_3

    move v9, v15

    goto :goto_1

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-eq v7, v8, :cond_5

    const-wide/16 v18, 0x0

    if-eqz v9, :cond_4

    sget-object v13, Lba/m;->e:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v13

    if-nez v13, :cond_4

    :goto_2
    move-object v7, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v13, v7, 0x1

    invoke-virtual {v5, v7, v9}, Lba/m;->c(IZ)Lba/i;

    move-result-object v7

    if-nez v7, :cond_6

    move v7, v13

    goto :goto_1

    :cond_5
    const-wide/16 v18, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    iget-object v13, v0, Lba/a;->m:Lj9/y;

    if-eqz v7, :cond_7

    iput-object v7, v13, Lj9/y;->m:Ljava/lang/Object;

    move-object v5, v4

    const-wide/16 v7, -0x1

    const-wide/16 v20, -0x1

    goto :goto_7

    :cond_7
    :goto_4
    sget-object v7, Lba/m;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lba/i;

    if-nez v14, :cond_8

    const-wide/16 v20, -0x1

    goto :goto_6

    :cond_8
    const-wide/16 v20, -0x1

    iget-boolean v8, v14, Lba/i;->m:Z

    if-eqz v8, :cond_9

    move v8, v15

    goto :goto_5

    :cond_9
    const/4 v8, 0x2

    :goto_5
    and-int/2addr v8, v1

    if-nez v8, :cond_a

    :goto_6
    const-wide/16 v7, -0x2

    move-object v5, v4

    goto :goto_7

    :cond_a
    sget-object v8, Lba/k;->f:Lba/g;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    move-object/from16 v23, v5

    iget-wide v4, v14, Lba/i;->l:J

    sub-long/2addr v8, v4

    sget-wide v4, Lba/k;->b:J

    cmp-long v24, v8, v4

    if-gez v24, :cond_b

    sub-long v7, v4, v8

    const/4 v5, 0x0

    goto :goto_7

    :cond_b
    move-object/from16 v4, v23

    :cond_c
    const/4 v5, 0x0

    invoke-virtual {v7, v4, v14, v5}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    iput-object v14, v13, Lj9/y;->m:Ljava/lang/Object;

    move-wide/from16 v7, v20

    :goto_7
    cmp-long v4, v7, v20

    if-nez v4, :cond_d

    iget-object v0, v13, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lba/i;

    iput-object v5, v13, Lj9/y;->m:Ljava/lang/Object;

    return-object v0

    :cond_d
    cmp-long v4, v7, v18

    if-lez v4, :cond_10

    invoke-static {v11, v12, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    goto :goto_8

    :cond_e
    invoke-virtual {v7, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v14, :cond_c

    move-object v5, v4

    const/4 v4, 0x0

    goto :goto_4

    :cond_f
    const-wide v16, 0x7fffffffffffffffL

    :cond_10
    :goto_8
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    goto/16 :goto_0

    :cond_11
    const-wide v16, 0x7fffffffffffffffL

    const-wide/16 v18, 0x0

    cmp-long v1, v11, v16

    if-eqz v1, :cond_12

    goto :goto_9

    :cond_12
    move-wide/from16 v11, v18

    :goto_9
    iput-wide v11, v0, Lba/a;->p:J

    const/16 v22, 0x0

    return-object v22
.end method

.method public final run()V
    .locals 23

    move-object/from16 v1, p0

    const/4 v2, 0x0

    :cond_0
    :goto_0
    move v0, v2

    :cond_1
    :goto_1
    iget-object v3, v1, Lba/a;->s:Lba/c;

    sget-object v4, Lba/c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    goto/16 :goto_a

    :cond_2
    iget-object v3, v1, Lba/a;->n:Lba/b;

    sget-object v5, Lba/b;->p:Lba/b;

    if-eq v3, v5, :cond_17

    iget-boolean v3, v1, Lba/a;->r:Z

    invoke-virtual {v1, v3}, Lba/a;->a(Z)Lba/i;

    move-result-object v3

    const-wide/32 v6, -0x200000

    const-wide/16 v8, 0x0

    if-eqz v3, :cond_8

    iput-wide v8, v1, Lba/a;->p:J

    iget-object v4, v1, Lba/a;->s:Lba/c;

    iput-wide v8, v1, Lba/a;->o:J

    iget-object v0, v1, Lba/a;->n:Lba/b;

    sget-object v8, Lba/b;->n:Lba/b;

    if-ne v0, v8, :cond_3

    sget-object v0, Lba/b;->m:Lba/b;

    iput-object v0, v1, Lba/a;->n:Lba/b;

    :cond_3
    iget-boolean v0, v3, Lba/i;->m:Z

    if-eqz v0, :cond_7

    sget-object v0, Lba/b;->m:Lba/b;

    invoke-virtual {v1, v0}, Lba/a;->h(Lba/b;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Lba/c;->m()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    sget-object v0, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lba/c;->k(J)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lba/c;->m()Z

    :cond_6
    :goto_2
    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v8

    invoke-interface {v8, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :goto_3
    sget-object v0, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v0, v4, v6, v7}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    iget-object v0, v1, Lba/a;->n:Lba/b;

    if-eq v0, v5, :cond_0

    sget-object v0, Lba/b;->o:Lba/b;

    iput-object v0, v1, Lba/a;->n:Lba/b;

    goto :goto_0

    :cond_7
    :try_start_1
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_8
    iput-boolean v2, v1, Lba/a;->r:Z

    iget-wide v10, v1, Lba/a;->p:J

    cmp-long v3, v10, v8

    if-eqz v3, :cond_a

    if-nez v0, :cond_9

    move v0, v4

    goto/16 :goto_1

    :cond_9
    sget-object v0, Lba/b;->n:Lba/b;

    invoke-virtual {v1, v0}, Lba/a;->h(Lba/b;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v3, v1, Lba/a;->p:J

    invoke-static {v3, v4}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    iput-wide v8, v1, Lba/a;->p:J

    goto/16 :goto_0

    :cond_a
    iget-object v3, v1, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v5, Lba/c;->v:Lmb/s2;

    if-eq v3, v5, :cond_14

    sget-object v3, Lba/a;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v5, -0x1

    invoke-virtual {v3, v1, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    :cond_b
    :goto_4
    iget-object v3, v1, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v6, Lba/c;->v:Lmb/s2;

    if-eq v3, v6, :cond_1

    sget-object v3, Lba/a;->t:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v5, :cond_1

    iget-object v6, v1, Lba/a;->s:Lba/c;

    sget-object v7, Lba/c;->u:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v6

    if-ne v6, v4, :cond_c

    goto/16 :goto_1

    :cond_c
    iget-object v6, v1, Lba/a;->n:Lba/b;

    sget-object v12, Lba/b;->p:Lba/b;

    if-ne v6, v12, :cond_d

    goto/16 :goto_1

    :cond_d
    sget-object v6, Lba/b;->n:Lba/b;

    invoke-virtual {v1, v6}, Lba/a;->h(Lba/b;)Z

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    iget-wide v13, v1, Lba/a;->o:J

    cmp-long v6, v13, v8

    if-nez v6, :cond_e

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    iget-object v6, v1, Lba/a;->s:Lba/c;

    const-wide/32 v15, 0x1fffff

    iget-wide v10, v6, Lba/c;->n:J

    add-long/2addr v13, v10

    iput-wide v13, v1, Lba/a;->o:J

    goto :goto_5

    :cond_e
    const-wide/32 v15, 0x1fffff

    :goto_5
    iget-object v6, v1, Lba/a;->s:Lba/c;

    iget-wide v10, v6, Lba/c;->n:J

    invoke-static {v10, v11}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(J)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    iget-wide v13, v1, Lba/a;->o:J

    sub-long/2addr v10, v13

    cmp-long v6, v10, v8

    if-ltz v6, :cond_b

    iput-wide v8, v1, Lba/a;->o:J

    iget-object v6, v1, Lba/a;->s:Lba/c;

    iget-object v10, v6, Lba/c;->r:Lz9/p;

    monitor-enter v10

    :try_start_2
    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v7, v4, :cond_f

    move v7, v4

    goto :goto_6

    :cond_f
    move v7, v2

    :goto_6
    if-eqz v7, :cond_10

    monitor-exit v10

    goto :goto_4

    :cond_10
    :try_start_3
    sget-object v7, Lba/c;->t:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v13

    and-long/2addr v13, v15

    long-to-int v11, v13

    iget v13, v6, Lba/c;->l:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-gt v11, v13, :cond_11

    monitor-exit v10

    goto :goto_4

    :cond_11
    :try_start_4
    invoke-virtual {v3, v1, v5, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v3, :cond_12

    monitor-exit v10

    goto :goto_4

    :cond_12
    :try_start_5
    iget v3, v1, Lba/a;->indexInArray:I

    invoke-virtual {v1, v2}, Lba/a;->f(I)V

    invoke-virtual {v6, v1, v3, v2}, Lba/c;->e(Lba/a;II)V

    invoke-virtual {v7, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndDecrement(Ljava/lang/Object;)J

    move-result-wide v13

    and-long/2addr v13, v15

    long-to-int v7, v13

    if-eq v7, v3, :cond_13

    iget-object v11, v6, Lba/c;->r:Lz9/p;

    invoke-virtual {v11, v7}, Lz9/p;->b(I)Ljava/lang/Object;

    move-result-object v11

    invoke-static {v11}, Lj9/n;->d(Ljava/lang/Object;)V

    check-cast v11, Lba/a;

    iget-object v13, v6, Lba/c;->r:Lz9/p;

    invoke-virtual {v13, v3, v11}, Lz9/p;->c(ILba/a;)V

    invoke-virtual {v11, v3}, Lba/a;->f(I)V

    invoke-virtual {v6, v11, v7, v3}, Lba/c;->e(Lba/a;II)V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :cond_13
    :goto_7
    iget-object v3, v6, Lba/c;->r:Lz9/p;

    const/4 v6, 0x0

    invoke-virtual {v3, v7, v6}, Lz9/p;->c(ILba/a;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit v10

    iput-object v12, v1, Lba/a;->n:Lba/b;

    goto/16 :goto_4

    :goto_8
    monitor-exit v10

    throw v0

    :cond_14
    const-wide/32 v15, 0x1fffff

    iget-object v3, v1, Lba/a;->s:Lba/c;

    iget-object v4, v1, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    if-eq v4, v5, :cond_15

    goto/16 :goto_1

    :cond_15
    sget-object v4, Lba/c;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    :goto_9
    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v19

    and-long v8, v19, v15

    long-to-int v5, v8

    const-wide/32 v8, 0x200000

    add-long v8, v19, v8

    and-long/2addr v8, v6

    iget v10, v1, Lba/a;->indexInArray:I

    iget-object v11, v3, Lba/c;->r:Lz9/p;

    invoke-virtual {v11, v5}, Lz9/p;->b(I)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v1, Lba/a;->nextParkedWorker:Ljava/lang/Object;

    sget-object v17, Lba/c;->s:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    int-to-long v10, v10

    or-long v21, v8, v10

    move-object/from16 v18, v3

    invoke-virtual/range {v17 .. v22}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v3

    if-eqz v3, :cond_16

    goto/16 :goto_1

    :cond_16
    move-object/from16 v3, v18

    goto :goto_9

    :cond_17
    :goto_a
    sget-object v0, Lba/b;->p:Lba/b;

    invoke-virtual {v1, v0}, Lba/a;->h(Lba/b;)Z

    return-void
.end method
