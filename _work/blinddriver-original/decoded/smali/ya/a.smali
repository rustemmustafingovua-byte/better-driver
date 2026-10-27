.class public final Lya/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lbb/j;

.field public static final c:Ljava/util/List;

.field public static final d:Lya/a;


# instance fields
.field public final a:Landroidx/lifecycle/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/16 v2, 0x2a

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    new-instance v2, Lbb/j;

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const-string v1, "copyOf(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0}, Lbb/j;-><init>([B)V

    sput-object v2, Lya/a;->b:Lbb/j;

    const-string v0, "*"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lya/a;->c:Ljava/util/List;

    new-instance v0, Lya/a;

    new-instance v1, Landroidx/lifecycle/a1;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Landroidx/lifecycle/a1;-><init>(I)V

    invoke-direct {v0, v1}, Lya/a;-><init>(Landroidx/lifecycle/a1;)V

    sput-object v0, Lya/a;->d:Lya/a;

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/a1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lya/a;->a:Landroidx/lifecycle/a1;

    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/16 v3, 0x2e

    aput-char v3, v1, v2

    invoke-static {p0, v1}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    const-string v3, ""

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-gez v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p0, v2}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    invoke-static {p1}, Ljava/net/IDN;->toUnicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-static {v0}, Lya/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lu8/r;->l:Lu8/r;

    iget-object v2, p0, Lya/a;->a:Landroidx/lifecycle/a1;

    iget-object v3, v2, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_1

    iget-object v3, v2, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v5

    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroidx/lifecycle/a1;->C()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_1
    sget-object v7, Lva/c;->a:Lva/a;

    sget-object v7, Lva/c;->a:Lva/a;

    const-string v8, "Failed to read public suffix list"

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9, v6}, Lva/c;->c(Ljava/lang/String;ILjava/lang/Throwable;)V

    if-eqz v3, :cond_2

    goto :goto_1

    :catch_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    goto :goto_0

    :goto_2
    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    throw p0

    :cond_1
    :try_start_2
    iget-object v3, v2, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    :cond_2
    :goto_3
    iget-object v3, v2, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v3, Lbb/j;

    if-eqz v3, :cond_17

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v3, v2, [Lbb/j;

    move v6, v5

    :goto_4
    if-ge v6, v2, :cond_3

    sget-object v7, Lbb/j;->o:Lbb/j;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    move-result-object v7

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move v6, v5

    :goto_5
    const-string v7, "bytes"

    const/4 v8, 0x0

    if-ge v6, v2, :cond_6

    iget-object v9, p0, Lya/a;->a:Landroidx/lifecycle/a1;

    iget-object v9, v9, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v9, Lbb/j;

    if-eqz v9, :cond_5

    invoke-static {v9, v3, v6}, Lwa/e;->c(Lbb/j;[Lbb/j;I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    goto :goto_6

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_5
    invoke-static {v7}, Lj9/n;->m(Ljava/lang/String;)V

    throw v8

    :cond_6
    move-object v9, v8

    :goto_6
    if-le v2, v4, :cond_9

    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lbb/j;

    array-length v10, v6

    sub-int/2addr v10, v4

    move v11, v5

    :goto_7
    if-ge v11, v10, :cond_9

    sget-object v12, Lya/a;->b:Lbb/j;

    aput-object v12, v6, v11

    iget-object v12, p0, Lya/a;->a:Landroidx/lifecycle/a1;

    iget-object v12, v12, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v12, Lbb/j;

    if-eqz v12, :cond_8

    invoke-static {v12, v6, v11}, Lwa/e;->c(Lbb/j;[Lbb/j;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_7

    goto :goto_8

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_8
    invoke-static {v7}, Lj9/n;->m(Ljava/lang/String;)V

    throw v8

    :cond_9
    move-object v12, v8

    :goto_8
    if-eqz v12, :cond_c

    sub-int/2addr v2, v4

    move v6, v5

    :goto_9
    if-ge v6, v2, :cond_c

    iget-object v7, p0, Lya/a;->a:Landroidx/lifecycle/a1;

    iget-object v7, v7, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v7, Lbb/j;

    if-eqz v7, :cond_b

    invoke-static {v7, v3, v6}, Lwa/e;->c(Lbb/j;[Lbb/j;I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    goto :goto_a

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_b
    const-string p0, "exceptionBytes"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v8

    :cond_c
    move-object v7, v8

    :goto_a
    const/16 p0, 0x2e

    if-eqz v7, :cond_d

    const-string v1, "!"

    invoke-virtual {v1, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [C

    aput-char p0, v2, v5

    invoke-static {v1, v2}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object p0

    goto :goto_c

    :cond_d
    if-nez v9, :cond_e

    if-nez v12, :cond_e

    sget-object p0, Lya/a;->c:Ljava/util/List;

    goto :goto_c

    :cond_e
    if-eqz v9, :cond_f

    new-array v2, v4, [C

    aput-char p0, v2, v5

    invoke-static {v9, v2}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v2

    goto :goto_b

    :cond_f
    move-object v2, v1

    :goto_b
    if-eqz v12, :cond_10

    new-array v1, v4, [C

    aput-char p0, v1, v5

    invoke-static {v12, v1}, Lr9/k;->q0(Ljava/lang/String;[C)Ljava/util/List;

    move-result-object v1

    :cond_10
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-le p0, v3, :cond_11

    move-object p0, v2

    goto :goto_c

    :cond_11
    move-object p0, v1

    :goto_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x21

    if-ne v1, v2, :cond_12

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_12

    return-object v8

    :cond_12
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_13

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :goto_d
    sub-int/2addr v0, p0

    goto :goto_e

    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/2addr p0, v4

    goto :goto_d

    :goto_e
    invoke-static {p1}, Lya/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lf9/l;

    const/4 v1, 0x6

    invoke-direct {p1, v1, p0}, Lf9/l;-><init>(ILjava/lang/Object;)V

    if-ltz v0, :cond_16

    if-nez v0, :cond_14

    goto :goto_f

    :cond_14
    instance-of p0, p1, Lq9/d;

    if-eqz p0, :cond_15

    check-cast p1, Lq9/d;

    invoke-interface {p1, v0}, Lq9/d;->a(I)Lq9/h;

    move-result-object p1

    goto :goto_f

    :cond_15
    new-instance p0, Lq9/c;

    invoke-direct {p0, p1, v0}, Lq9/c;-><init>(Lq9/h;I)V

    move-object p1, p0

    :goto_f
    const-string p0, "."

    invoke-static {p1, p0}, Lq9/j;->D(Lq9/h;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_16
    const-string p0, "Requested element count "

    const-string p1, " is less than zero."

    invoke-static {v0, p0, p1}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Unable to load "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " resource."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
