.class public Lca/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field public static final synthetic f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;


# instance fields
.field private volatile synthetic _availablePermits$volatile:I

.field public final a:Lb0/x2;

.field private volatile synthetic deqIdx$volatile:J

.field private volatile synthetic enqIdx$volatile:J

.field private volatile synthetic head$volatile:Ljava/lang/Object;

.field private volatile synthetic tail$volatile:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "head$volatile"

    const-class v1, Lca/g;

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lca/g;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "deqIdx$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lca/g;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "tail$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lca/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "enqIdx$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v0

    sput-object v0, Lca/g;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    const-string v0, "_availablePermits$volatile"

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lca/g;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lca/i;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-wide/16 v3, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lca/i;-><init>(JLca/i;I)V

    iput-object v0, p0, Lca/g;->head$volatile:Ljava/lang/Object;

    iput-object v0, p0, Lca/g;->tail$volatile:Ljava/lang/Object;

    const/4 v0, 0x1

    iput v0, p0, Lca/g;->_availablePermits$volatile:I

    new-instance v0, Lb0/x2;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lca/g;->a:Lb0/x2;

    return-void
.end method


# virtual methods
.method public final a(Lca/b;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lca/b;->l:Lu9/g;

    iget-object v3, v1, Lca/b;->m:Lca/c;

    :cond_0
    :goto_0
    sget-object v4, Lca/g;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndDecrement(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    sget-object v5, Lt8/z;->a:Lt8/z;

    const/4 v6, 0x0

    if-lez v4, :cond_1

    sget-object v0, Lca/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lb0/a;

    const/4 v4, 0x4

    invoke-direct {v0, v4, v3, v1}, Lb0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget v1, v2, Lu9/c0;->n:I

    new-instance v3, Lb0/x2;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5, v1, v3}, Lu9/g;->B(Ljava/lang/Object;ILi9/f;)V

    return-void

    :cond_1
    sget-object v4, Lca/g;->d:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lca/i;

    sget-object v8, Lca/g;->e:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v8, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v8

    sget-object v10, Lca/e;->s:Lca/e;

    sget v11, Lca/h;->f:I

    int-to-long v11, v11

    div-long v11, v8, v11

    :goto_1
    invoke-static {v7, v11, v12, v10}, Lz9/b;->b(Lz9/r;JLi9/e;)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13}, Lz9/b;->e(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    invoke-static {v13}, Lz9/b;->c(Ljava/lang/Object;)Lz9/r;

    move-result-object v14

    :goto_2
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lz9/r;

    move-object/from16 v16, v7

    iget-wide v6, v15, Lz9/r;->c:J

    move-wide/from16 v17, v6

    iget-wide v6, v14, Lz9/r;->c:J

    cmp-long v6, v17, v6

    if-ltz v6, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v14}, Lz9/r;->i()Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v0, v15, v14}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v15}, Lz9/r;->e()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v15}, Lz9/c;->d()V

    goto :goto_3

    :cond_4
    invoke-virtual {v4, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, v15, :cond_3

    invoke-virtual {v14}, Lz9/r;->e()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v14}, Lz9/c;->d()V

    :cond_5
    move-object/from16 v7, v16

    const/4 v6, 0x0

    goto :goto_2

    :cond_6
    :goto_3
    invoke-static {v13}, Lz9/b;->c(Ljava/lang/Object;)Lz9/r;

    move-result-object v4

    check-cast v4, Lca/i;

    iget-object v6, v4, Lca/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    sget v7, Lca/h;->f:I

    int-to-long v10, v7

    rem-long/2addr v8, v10

    long-to-int v7, v8

    :cond_7
    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1, v4, v7}, Lu9/v1;->a(Lz9/r;I)V

    return-void

    :cond_8
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    sget-object v8, Lca/h;->b:Lmb/s2;

    sget-object v9, Lca/h;->c:Lmb/s2;

    :cond_9
    invoke-virtual {v6, v7, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v0, Lca/c;->g:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v10, 0x0

    invoke-virtual {v0, v3, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lb0/a;

    const/4 v4, 0x4

    invoke-direct {v0, v4, v3, v1}, Lb0/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget v1, v2, Lu9/c0;->n:I

    new-instance v3, Lb0/x2;

    const/16 v4, 0x13

    invoke-direct {v3, v4, v0}, Lb0/x2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v2, v5, v1, v3}, Lu9/g;->B(Ljava/lang/Object;ILi9/f;)V

    return-void

    :cond_a
    const/4 v10, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v8, :cond_9

    goto/16 :goto_0
.end method

.method public final b()V
    .locals 15

    :cond_0
    sget-object v0, Lca/g;->f:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndIncrement(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_10

    if-ltz v1, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lca/g;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lca/i;

    sget-object v3, Lca/g;->c:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    sget v5, Lca/h;->f:I

    int-to-long v5, v5

    div-long v5, v3, v5

    sget-object v7, Lca/f;->s:Lca/f;

    :goto_0
    invoke-static {v1, v5, v6, v7}, Lz9/b;->b(Lz9/r;JLi9/e;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Lz9/b;->e(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-static {v8}, Lz9/b;->c(Ljava/lang/Object;)Lz9/r;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lz9/r;

    iget-wide v11, v10, Lz9/r;->c:J

    iget-wide v13, v9, Lz9/r;->c:J

    cmp-long v11, v11, v13

    if-ltz v11, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Lz9/r;->i()Z

    move-result v11

    if-nez v11, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v0, p0, v10, v9}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10}, Lz9/r;->e()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Lz9/c;->d()V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-eq v11, v10, :cond_4

    invoke-virtual {v9}, Lz9/r;->e()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v9}, Lz9/c;->d()V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-static {v8}, Lz9/b;->c(Ljava/lang/Object;)Lz9/r;

    move-result-object v0

    check-cast v0, Lca/i;

    iget-object v1, v0, Lca/i;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-virtual {v0}, Lz9/c;->a()V

    iget-wide v7, v0, Lz9/r;->c:J

    cmp-long v0, v7, v5

    const/4 v5, 0x0

    if-lez v0, :cond_8

    :cond_7
    :goto_3
    move v2, v5

    goto :goto_6

    :cond_8
    sget v0, Lca/h;->f:I

    int-to-long v6, v0

    rem-long/2addr v3, v6

    long-to-int v0, v3

    sget-object v3, Lca/h;->b:Lmb/s2;

    invoke-virtual {v1, v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_d

    sget v3, Lca/h;->a:I

    move v4, v5

    :goto_4
    if-ge v4, v3, :cond_a

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lca/h;->c:Lmb/s2;

    if-ne v6, v7, :cond_9

    goto :goto_6

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    sget-object v4, Lca/h;->b:Lmb/s2;

    sget-object v6, Lca/h;->d:Lmb/s2;

    :cond_b
    invoke-virtual {v1, v0, v4, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v5, v2

    goto :goto_5

    :cond_c
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_b

    :goto_5
    xor-int/2addr v2, v5

    goto :goto_6

    :cond_d
    sget-object v0, Lca/h;->e:Lmb/s2;

    if-ne v3, v0, :cond_e

    goto :goto_3

    :cond_e
    instance-of v0, v3, Lu9/f;

    if-eqz v0, :cond_f

    check-cast v3, Lu9/f;

    sget-object v0, Lt8/z;->a:Lt8/z;

    iget-object v1, p0, Lca/g;->a:Lb0/x2;

    invoke-interface {v3, v0, v1}, Lu9/f;->i(Ljava/lang/Object;Li9/f;)Lmb/s2;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v3, v0}, Lu9/f;->o(Ljava/lang/Object;)V

    :goto_6
    if-eqz v2, :cond_0

    :goto_7
    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    if-le v1, v2, :cond_11

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_8

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The number of released permits cannot be greater than 1"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
