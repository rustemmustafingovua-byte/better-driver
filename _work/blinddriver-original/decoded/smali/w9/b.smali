.class public final Lw9/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu9/v1;


# instance fields
.field public l:Ljava/lang/Object;

.field public m:Lu9/g;

.field public final synthetic n:Lw9/e;


# direct methods
.method public constructor <init>(Lw9/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw9/b;->n:Lw9/e;

    sget-object p1, Lw9/g;->p:Lmb/s2;

    iput-object p1, p0, Lw9/b;->l:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lz9/r;I)V
    .locals 0

    iget-object p0, p0, Lw9/b;->m:Lu9/g;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Lu9/g;->a(Lz9/r;I)V

    :cond_0
    return-void
.end method

.method public final b(La9/c;)Ljava/lang/Object;
    .locals 13

    iget-object v0, p0, Lw9/b;->l:Ljava/lang/Object;

    sget-object v1, Lw9/g;->p:Lmb/s2;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lw9/g;->l:Lmb/s2;

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    sget-object v0, Lw9/e;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    iget-object v6, p0, Lw9/b;->n:Lw9/e;

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lw9/m;

    :goto_0
    invoke-virtual {v6}, Lw9/e;->w()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lw9/g;->l:Lmb/s2;

    iput-object v0, p0, Lw9/b;->l:Ljava/lang/Object;

    invoke-virtual {v6}, Lw9/e;->q()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_1
    sget v1, Lz9/s;->a:I

    throw v0

    :cond_2
    sget-object v1, Lw9/e;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    sget v1, Lw9/g;->b:I

    int-to-long v7, v1

    div-long v9, v3, v7

    rem-long v7, v3, v7

    long-to-int v8, v7

    iget-wide v11, v0, Lz9/r;->c:J

    cmp-long v1, v11, v9

    if-eqz v1, :cond_3

    invoke-virtual {v6, v9, v10, v0}, Lw9/e;->p(JLw9/m;)Lw9/m;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    move-object v1, v0

    :cond_4
    const/4 v11, 0x0

    move-object v7, v1

    move-wide v9, v3

    invoke-virtual/range {v6 .. v11}, Lw9/e;->H(Lw9/m;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v7, Lw9/g;->m:Lmb/s2;

    if-eq v0, v7, :cond_13

    sget-object v9, Lw9/g;->o:Lmb/s2;

    if-ne v0, v9, :cond_6

    invoke-virtual {v6}, Lw9/e;->t()J

    move-result-wide v7

    cmp-long v0, v3, v7

    if-gez v0, :cond_5

    invoke-virtual {v1}, Lz9/c;->a()V

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    sget-object v10, Lw9/g;->n:Lmb/s2;

    if-ne v0, v10, :cond_12

    iget-object v0, p0, Lw9/b;->n:Lw9/e;

    invoke-static {p1}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v2

    invoke-static {v2}, Lu9/v;->o(Ly8/c;)Lu9/g;

    move-result-object v10

    :try_start_0
    iput-object v10, p0, Lw9/b;->m:Lu9/g;

    move-object v5, p0

    move v2, v8

    invoke-virtual/range {v0 .. v5}, Lw9/e;->H(Lw9/m;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v7, :cond_7

    invoke-virtual {p0, v1, v2}, Lw9/b;->a(Lz9/r;I)V

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    :cond_7
    const/4 v7, 0x0

    if-ne v8, v9, :cond_11

    invoke-virtual {v0}, Lw9/e;->t()J

    move-result-wide v8

    cmp-long v2, v3, v8

    if-gez v2, :cond_8

    invoke-virtual {v1}, Lz9/c;->a()V

    :cond_8
    sget-object v1, Lw9/e;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lw9/m;

    :cond_9
    :goto_1
    invoke-virtual {v0}, Lw9/e;->w()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v0, p0, Lw9/b;->m:Lu9/g;

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v7, p0, Lw9/b;->m:Lu9/g;

    sget-object v1, Lw9/g;->l:Lmb/s2;

    iput-object v1, p0, Lw9/b;->l:Ljava/lang/Object;

    invoke-virtual {v6}, Lw9/e;->q()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu9/g;->resumeWith(Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    sget-object v2, Lw9/e;->n:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v3

    sget v2, Lw9/g;->b:I

    int-to-long v8, v2

    div-long v11, v3, v8

    rem-long v8, v3, v8

    long-to-int v2, v8

    iget-wide v8, v1, Lz9/r;->c:J

    cmp-long v8, v8, v11

    if-eqz v8, :cond_d

    invoke-virtual {v0, v11, v12, v1}, Lw9/e;->p(JLw9/m;)Lw9/m;

    move-result-object v8

    if-nez v8, :cond_c

    goto :goto_1

    :cond_c
    move-object v1, v8

    :cond_d
    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lw9/e;->H(Lw9/m;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lw9/g;->m:Lmb/s2;

    if-ne v8, v9, :cond_e

    invoke-virtual {p0, v1, v2}, Lw9/b;->a(Lz9/r;I)V

    goto :goto_3

    :cond_e
    sget-object v2, Lw9/g;->o:Lmb/s2;

    if-ne v8, v2, :cond_f

    invoke-virtual {v0}, Lw9/e;->t()J

    move-result-wide v8

    cmp-long v2, v3, v8

    if-gez v2, :cond_9

    invoke-virtual {v1}, Lz9/c;->a()V

    goto :goto_1

    :cond_f
    sget-object v0, Lw9/g;->n:Lmb/s2;

    if-eq v8, v0, :cond_10

    invoke-virtual {v1}, Lz9/c;->a()V

    iput-object v8, p0, Lw9/b;->l:Ljava/lang/Object;

    iput-object v7, p0, Lw9/b;->m:Lu9/g;

    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v10, v0, v7}, Lu9/g;->A(Ljava/lang/Object;Li9/f;)V

    goto :goto_3

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unexpected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    invoke-virtual {v1}, Lz9/c;->a()V

    iput-object v8, p0, Lw9/b;->l:Ljava/lang/Object;

    iput-object v7, p0, Lw9/b;->m:Lu9/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_3
    invoke-virtual {v10}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lz8/a;->l:Lz8/a;

    return-object v0

    :goto_4
    invoke-virtual {v10}, Lu9/g;->z()V

    throw v0

    :cond_12
    invoke-virtual {v1}, Lz9/c;->a()V

    iput-object v0, p0, Lw9/b;->l:Ljava/lang/Object;

    :goto_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lw9/b;->l:Ljava/lang/Object;

    sget-object v1, Lw9/g;->p:Lmb/s2;

    if-eq v0, v1, :cond_1

    iput-object v1, p0, Lw9/b;->l:Ljava/lang/Object;

    sget-object v1, Lw9/g;->l:Lmb/s2;

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lw9/b;->n:Lw9/e;

    invoke-virtual {p0}, Lw9/e;->r()Ljava/lang/Throwable;

    move-result-object p0

    sget v0, Lz9/s;->a:I

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "`hasNext()` has not been invoked"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
