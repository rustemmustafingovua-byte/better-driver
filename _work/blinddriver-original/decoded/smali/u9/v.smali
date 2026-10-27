.class public abstract Lu9/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lmb/s2;

.field public static final b:Lmb/s2;

.field public static final c:Lmb/s2;

.field public static final d:Lmb/s2;

.field public static final e:Lmb/s2;

.field public static final f:Lmb/s2;

.field public static final g:Lmb/s2;

.field public static final h:Lmb/s2;

.field public static final i:Lu9/i0;

.field public static final j:Lu9/i0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lmb/s2;

    const-string v1, "RESUME_TOKEN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->a:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "REMOVED_TASK"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->b:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "CLOSED_EMPTY"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->c:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->d:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->e:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->f:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->g:Lmb/s2;

    new-instance v0, Lmb/s2;

    const-string v1, "SEALED"

    invoke-direct {v0, v1, v2}, Lmb/s2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu9/v;->h:Lmb/s2;

    new-instance v0, Lu9/i0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu9/i0;-><init>(Z)V

    sput-object v0, Lu9/v;->i:Lu9/i0;

    new-instance v0, Lu9/i0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu9/i0;-><init>(Z)V

    sput-object v0, Lu9/v;->j:Lu9/i0;

    return-void
.end method

.method public static final A(JLi9/e;La9/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p3, Lu9/r1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lu9/r1;

    iget v1, v0, Lu9/r1;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lu9/r1;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lu9/r1;

    invoke-direct {v0, p3}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p3, v0, Lu9/r1;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lu9/r1;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lu9/r1;->l:Lj9/y;

    :try_start_0
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Lu9/p1; {:try_start_0 .. :try_end_0} :catch_0

    return-object p3

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v4, 0x0

    cmp-long p3, p0, v4

    if-gtz p3, :cond_3

    goto :goto_4

    :cond_3
    new-instance p3, Lj9/y;

    invoke-direct {p3}, Lj9/y;-><init>()V

    :try_start_1
    iput-object p3, v0, Lu9/r1;->l:Lj9/y;

    iput v3, v0, Lu9/r1;->n:I

    new-instance v2, Lu9/q1;

    invoke-direct {v2, p0, p1, v0}, Lu9/q1;-><init>(JLu9/r1;)V

    iput-object v2, p3, Lj9/y;->m:Ljava/lang/Object;
    :try_end_1
    .catch Lu9/p1; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    iget-object p0, v2, Lz9/q;->o:Ly8/c;

    invoke-interface {p0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    invoke-static {p0}, Lu9/v;->l(Ly8/h;)Lu9/y;

    move-result-object p0

    iget-wide v4, v2, Lu9/q1;->p:J

    iget-object p1, v2, Lu9/a;->n:Ly8/h;

    invoke-interface {p0, v4, v5, v2, p1}, Lu9/y;->C(JLu9/q1;Ly8/h;)Lu9/g0;

    move-result-object p0

    new-instance p1, Lu9/h0;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lu9/h0;-><init>(ILjava/lang/Object;)V

    invoke-static {v2, v3, p1}, Lu9/v;->q(Lu9/v0;ZLu9/y0;)Lu9/g0;

    const/4 p0, 0x0

    invoke-static {v2, p0, v2, p2}, Lg5/f;->N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Lu9/p1; {:try_start_2 .. :try_end_2} :catch_1

    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    return-object p0

    :goto_1
    move-object p1, p0

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_1

    :goto_2
    move-object p0, p3

    goto :goto_3

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_3
    iget-object p2, p1, Lu9/p1;->l:Lu9/v0;

    iget-object p0, p0, Lj9/y;->m:Ljava/lang/Object;

    if-ne p2, p0, :cond_5

    :goto_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    throw p1
.end method

.method public static final a(Ly8/h;)Lz9/d;
    .locals 2

    new-instance v0, Lz9/d;

    sget-object v1, Lu9/q;->m:Lu9/q;

    invoke-interface {p0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lu9/v;->b()Lu9/x0;

    move-result-object v1

    invoke-interface {p0, v1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    :goto_0
    invoke-direct {v0, p0}, Lz9/d;-><init>(Ly8/h;)V

    return-object v0
.end method

.method public static b()Lu9/x0;
    .locals 2

    new-instance v0, Lu9/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu9/x0;-><init>(Lu9/v0;)V

    return-object v0
.end method

.method public static c()Lu9/l1;
    .locals 2

    new-instance v0, Lu9/l1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu9/x0;-><init>(Lu9/v0;)V

    return-object v0
.end method

.method public static final d(La9/c;)V
    .locals 4

    instance-of v0, p0, Lu9/z;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lu9/z;

    iget v1, v0, Lu9/z;->m:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lu9/z;->m:I

    goto :goto_0

    :cond_0
    new-instance v0, Lu9/z;

    invoke-direct {v0, p0}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object p0, v0, Lu9/z;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lu9/z;->m:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, La/a;->E(Ljava/lang/Object;)V

    iput v3, v0, Lu9/z;->m:I

    new-instance p0, Lu9/g;

    invoke-static {v0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object v0

    invoke-direct {p0, v3, v0}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {p0}, Lu9/g;->r()V

    invoke-virtual {p0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-void

    :cond_3
    :goto_1
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public static final e(Lu9/t;Lf1/s;)V
    .locals 2

    invoke-interface {p0}, Lu9/t;->C()Ly8/h;

    move-result-object v0

    sget-object v1, Lu9/q;->m:Lu9/q;

    invoke-interface {v0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Lu9/v0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope cannot be cancelled because it does not have a job: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final f(Ly8/h;Ljava/util/concurrent/CancellationException;)V
    .locals 1

    sget-object v0, Lu9/q;->m:Lu9/q;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lu9/v0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lu9/v0;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    return-void
.end method

.method public static final g(Li9/e;Ly8/c;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lz9/q;

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lz9/q;-><init>(Ly8/c;Ly8/h;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v0, p0}, Lg5/f;->N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public static final h(JLy8/c;)Ljava/lang/Object;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lu9/g;

    invoke-static {p2}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {v0, v1, p2}, Lu9/g;-><init>(ILy8/c;)V

    invoke-virtual {v0}, Lu9/g;->r()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long p2, p0, v1

    if-gez p2, :cond_1

    iget-object p2, v0, Lu9/g;->p:Ly8/h;

    invoke-static {p2}, Lu9/v;->l(Ly8/h;)Lu9/y;

    move-result-object p2

    invoke-interface {p2, p0, p1, v0}, Lu9/y;->J(JLu9/g;)V

    :cond_1
    invoke-virtual {v0}, Lu9/g;->q()Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_2

    return-object p0

    :cond_2
    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final i(Ly8/h;)V
    .locals 1

    sget-object v0, Lu9/q;->m:Lu9/q;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lu9/v0;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lu9/v0;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lu9/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static final j(Ly8/h;Ly8/h;Z)Ly8/h;
    .locals 3

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v0, Lsc/u0;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    invoke-interface {p0, v0, p2}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v1, Lsc/u0;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lsc/u0;-><init>(I)V

    invoke-interface {p1, v1, p2}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lsc/u0;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Lsc/u0;-><init>(I)V

    sget-object v1, Ly8/i;->l:Ly8/i;

    invoke-interface {p0, v0, v1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly8/h;

    if-eqz p2, :cond_1

    check-cast p1, Ly8/h;

    new-instance p2, Lsc/u0;

    const/16 v0, 0xc

    invoke-direct {p2, v0}, Lsc/u0;-><init>(I)V

    invoke-interface {p1, p2, v1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    check-cast p1, Ly8/h;

    invoke-interface {p0, p1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Ljava/util/concurrent/Executor;)Lu9/p;
    .locals 1

    new-instance v0, Lu9/q0;

    invoke-direct {v0, p0}, Lu9/q0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method public static final l(Ly8/h;)Lu9/y;
    .locals 1

    sget-object v0, Ly8/d;->l:Ly8/d;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    instance-of v0, p0, Lu9/y;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/y;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Lu9/x;->a:Lu9/y;

    :cond_1
    return-object p0
.end method

.method public static final m(Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final n(Ly8/h;)Lu9/v0;
    .locals 3

    sget-object v0, Lu9/q;->m:Lu9/q;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Lu9/v0;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current context doesn\'t contain Job in it: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final o(Ly8/c;)Lu9/g;
    .locals 6

    instance-of v0, p0, Lz9/g;

    if-nez v0, :cond_0

    new-instance v0, Lu9/g;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lu9/g;-><init>(ILy8/c;)V

    return-object v0

    :cond_0
    move-object v0, p0

    check-cast v0, Lz9/g;

    sget-object v1, Lz9/b;->c:Lmb/s2;

    sget-object v2, Lz9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_1
    :goto_0
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v3, v4

    goto :goto_1

    :cond_2
    instance-of v5, v3, Lu9/g;

    if-eqz v5, :cond_8

    :cond_3
    invoke-virtual {v2, v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    check-cast v3, Lu9/g;

    :goto_1
    if-eqz v3, :cond_6

    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu9/m;

    if-eqz v2, :cond_4

    check-cast v1, Lu9/m;

    iget-object v1, v1, Lu9/m;->d:Ljava/lang/Object;

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lu9/g;->m()V

    goto :goto_2

    :cond_4
    sget-object v1, Lu9/g;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const v2, 0x1fffffff

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    sget-object v1, Lu9/b;->a:Lu9/b;

    invoke-virtual {v0, v3, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    return-object v4

    :cond_6
    :goto_3
    new-instance v0, Lu9/g;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lu9/g;-><init>(ILy8/c;)V

    return-object v0

    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eq v5, v3, :cond_3

    goto :goto_0

    :cond_8
    if-eq v3, v1, :cond_1

    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Inconsistent state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final p(Ljava/lang/Throwable;Ly8/h;)V
    .locals 3

    instance-of v0, p0, Lu9/a0;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/a0;

    iget-object p0, p0, Lu9/a0;->l:Ljava/lang/Throwable;

    :cond_0
    :try_start_0
    sget-object v0, Lu9/q;->l:Lu9/q;

    invoke-interface {p1, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Lu9/r;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lu9/r;->w(Ljava/lang/Throwable;Ly8/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lz9/b;->d(Ljava/lang/Throwable;Ly8/h;)V

    return-void

    :goto_0
    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception while trying to handle coroutine exception"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1, p0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    move-object p0, v1

    :goto_1
    invoke-static {p0, p1}, Lz9/b;->d(Ljava/lang/Throwable;Ly8/h;)V

    return-void
.end method

.method public static final q(Lu9/v0;ZLu9/y0;)Lu9/g0;
    .locals 10

    instance-of v0, p0, Lu9/c1;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/c1;

    invoke-virtual {p0, p1, p2}, Lu9/c1;->M(ZLu9/y0;)Lu9/g0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lu9/y0;->k()Z

    move-result v0

    new-instance v1, Lb0/k2;

    const/4 v8, 0x0

    const/16 v9, 0x9

    const/4 v2, 0x1

    const-class v4, Lu9/y0;

    const-string v5, "invoke"

    const-string v6, "invoke(Ljava/lang/Throwable;)V"

    const/4 v7, 0x0

    move-object v3, p2

    invoke-direct/range {v1 .. v9}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-interface {p0, v0, p1, v1}, Lu9/v0;->K(ZZLb0/k2;)Lu9/g0;

    move-result-object p0

    return-object p0
.end method

.method public static final r(Lu9/t;)Z
    .locals 1

    invoke-interface {p0}, Lu9/t;->C()Ly8/h;

    move-result-object p0

    sget-object v0, Lu9/q;->m:Lu9/q;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lu9/v0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lu9/v0;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final s(Ly8/h;)Z
    .locals 1

    sget-object v0, Lu9/q;->m:Lu9/q;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p0

    check-cast p0, Lu9/v0;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lu9/v0;->b()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Ly8/i;->l:Ly8/i;

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    sget-object p2, Lu9/u;->l:Lu9/u;

    :cond_1
    invoke-interface {p0}, Lu9/t;->C()Ly8/h;

    move-result-object p0

    const/4 p4, 0x1

    invoke-static {p0, p1, p4}, Lu9/v;->j(Ly8/h;Ly8/h;Z)Ly8/h;

    move-result-object p0

    sget-object p1, Lu9/e0;->a:Lba/e;

    if-eq p0, p1, :cond_2

    sget-object v0, Ly8/d;->l:Ly8/d;

    invoke-interface {p0, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p0, p1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    :cond_2
    sget-object p1, Lu9/u;->m:Lu9/u;

    if-ne p2, p1, :cond_3

    new-instance p1, Lu9/d1;

    invoke-direct {p1, p0, p3}, Lu9/d1;-><init>(Ly8/h;Li9/e;)V

    goto :goto_0

    :cond_3
    new-instance p1, Lu9/j1;

    invoke-direct {p1, p0, p4}, Lu9/a;-><init>(Ly8/h;Z)V

    :goto_0
    invoke-virtual {p1, p2, p1, p3}, Lu9/a;->e0(Lu9/u;Lu9/a;Li9/e;)V

    return-object p1
.end method

.method public static final u(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lu9/n;

    if-eqz v0, :cond_0

    check-cast p0, Lu9/n;

    iget-object p0, p0, Lu9/n;->a:Ljava/lang/Throwable;

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final v(Lu9/g;Ly8/c;Z)V
    .locals 2

    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu9/g;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lu9/g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_6

    const-string p2, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>"

    invoke-static {p1, p2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz9/g;

    iget-object p2, p1, Lz9/g;->p:La9/c;

    iget-object p1, p1, Lz9/g;->r:Ljava/lang/Object;

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    invoke-static {v0, p1}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lz9/b;->d:Lmb/s2;

    if-eq p1, v1, :cond_1

    invoke-static {p2, v0, p1}, Lu9/v;->y(Ly8/c;Ly8/h;Ljava/lang/Object;)Lu9/t1;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_0
    invoke-interface {p2, p0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lu9/t1;->g0()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    :goto_2
    invoke-static {v0, p1}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lu9/t1;->g0()Z

    move-result p2

    if-eqz p2, :cond_5

    :cond_4
    invoke-static {v0, p1}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    :cond_5
    throw p0

    :cond_6
    invoke-interface {p1, p0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public static final w(Ly8/c;)Ljava/lang/String;
    .locals 3

    instance-of v0, p0, Lz9/g;

    if-eqz v0, :cond_0

    check-cast p0, Lz9/g;

    invoke-virtual {p0}, Lz9/g;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x40

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lu9/v;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lu9/v;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public static final x(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lu9/t0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lu9/t0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Lu9/t0;->a:Lu9/s0;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public static final y(Ly8/c;Ly8/h;Ljava/lang/Object;)Lu9/t1;
    .locals 2

    instance-of v0, p0, La9/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lu9/u1;->l:Lu9/u1;

    invoke-interface {p1, v0}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast p0, La9/d;

    :cond_1
    instance-of v0, p0, Lu9/b0;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, La9/d;->getCallerFrame()La9/d;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    instance-of v0, p0, Lu9/t1;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lu9/t1;

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1, p1, p2}, Lu9/t1;->i0(Ly8/h;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-object v1
.end method

.method public static final z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;
    .locals 5

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance v2, Lsc/u0;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lsc/u0;-><init>(I)V

    invoke-interface {p0, v2, v1}, Ly8/h;->d(Li9/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, p0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0, p0, v2}, Lu9/v;->j(Ly8/h;Ly8/h;Z)Ly8/h;

    move-result-object p0

    :goto_0
    invoke-static {p0}, Lu9/v;->i(Ly8/h;)V

    const/4 v1, 0x1

    if-ne p0, v0, :cond_1

    new-instance v0, Lz9/q;

    invoke-direct {v0, p2, p0}, Lz9/q;-><init>(Ly8/c;Ly8/h;)V

    invoke-static {v0, v1, v0, p1}, Lg5/f;->N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_1
    sget-object v3, Ly8/d;->l:Ly8/d;

    invoke-interface {p0, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v4

    invoke-interface {v0, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    invoke-static {v4, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lu9/t1;

    invoke-direct {v0, p2, p0}, Lu9/t1;-><init>(Ly8/c;Ly8/h;)V

    const/4 p0, 0x0

    iget-object p2, v0, Lu9/a;->n:Ly8/h;

    invoke-static {p2, p0}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :try_start_0
    invoke-static {v0, v1, v0, p1}, Lg5/f;->N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p2, p0}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    move-object p0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-static {p2, p0}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-instance v0, Lu9/b0;

    invoke-direct {v0, p2, p0}, Lz9/q;-><init>(Ly8/c;Ly8/h;)V

    :try_start_1
    invoke-static {p1, v0, v0}, Lg6/c1;->k(Li9/e;Ly8/c;Ly8/c;)Ly8/c;

    move-result-object p0

    invoke-static {p0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p0

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-static {p1, p0}, Lz9/b;->h(Ljava/lang/Object;Ly8/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    sget-object p0, Lu9/b0;->p:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    :cond_3
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    if-eqz p1, :cond_6

    const/4 p0, 0x2

    if-ne p1, p0, :cond_5

    sget-object p0, Lu9/c1;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lu9/v;->x(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lu9/n;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    check-cast p0, Lu9/n;

    iget-object p0, p0, Lu9/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already suspended"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-virtual {p0, v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p0, Lz8/a;->l:Lz8/a;

    :goto_1
    sget-object p1, Lz8/a;->l:Lz8/a;

    return-object p0

    :catchall_1
    move-exception p0

    instance-of p1, p0, Lu9/a0;

    if-eqz p1, :cond_7

    check-cast p0, Lu9/a0;

    iget-object p0, p0, Lu9/a0;->l:Ljava/lang/Throwable;

    :cond_7
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    invoke-virtual {v0, p1}, Lu9/a;->resumeWith(Ljava/lang/Object;)V

    throw p0
.end method
