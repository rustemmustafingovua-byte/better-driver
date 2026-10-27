.class public abstract Lb6/r0;
.super Lb6/g;
.source "SourceFile"


# static fields
.field public static final y:Lr6/c;

.field public static final z:Lr6/q;


# instance fields
.field public final o:Lb6/p0;

.field public final p:Lg5/f;

.field public final q:Lg5/s;

.field public transient r:Lg6/c1;

.field public final s:Lr6/q;

.field public final t:Ls6/o;

.field public final u:Lr6/c;

.field public final v:Lr6/n;

.field public w:Ljava/text/DateFormat;

.field public final x:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr6/c;

    invoke-direct {v0}, Lr6/c;-><init>()V

    sput-object v0, Lb6/r0;->y:Lr6/c;

    new-instance v0, Lr6/q;

    const/4 v1, 0x0

    const/4 v2, 0x6

    const-class v3, Ljava/lang/Object;

    invoke-direct {v0, v1, v2, v3}, Ls6/o;-><init>(IILjava/lang/Class;)V

    sput-object v0, Lb6/r0;->z:Lr6/q;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lb6/r0;->z:Lr6/q;

    iput-object v0, p0, Lb6/r0;->s:Lr6/q;

    .line 3
    sget-object v0, Ls6/o;->o:Ls6/o;

    iput-object v0, p0, Lb6/r0;->t:Ls6/o;

    .line 4
    sget-object v0, Lb6/r0;->y:Lr6/c;

    iput-object v0, p0, Lb6/r0;->u:Lr6/c;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lb6/r0;->o:Lb6/p0;

    .line 6
    iput-object v0, p0, Lb6/r0;->p:Lg5/f;

    .line 7
    new-instance v1, Lg5/s;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lg5/s;-><init>(I)V

    iput-object v1, p0, Lb6/r0;->q:Lg5/s;

    .line 8
    iput-object v0, p0, Lb6/r0;->v:Lr6/n;

    .line 9
    iput-object v0, p0, Lb6/r0;->r:Lg6/c1;

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lb6/r0;->x:Z

    return-void
.end method

.method public constructor <init>(Lq6/k;Lb6/p0;Lg5/f;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lb6/r0;->z:Lr6/q;

    iput-object v0, p0, Lb6/r0;->s:Lr6/q;

    .line 13
    sget-object v0, Ls6/o;->o:Ls6/o;

    iput-object v0, p0, Lb6/r0;->t:Ls6/o;

    .line 14
    sget-object v0, Lb6/r0;->y:Lr6/c;

    iput-object v0, p0, Lb6/r0;->u:Lr6/c;

    .line 15
    iput-object p3, p0, Lb6/r0;->p:Lg5/f;

    .line 16
    iput-object p2, p0, Lb6/r0;->o:Lb6/p0;

    .line 17
    iget-object p3, p1, Lb6/r0;->q:Lg5/s;

    iput-object p3, p0, Lb6/r0;->q:Lg5/s;

    .line 18
    iget-object v1, p1, Lb6/r0;->s:Lr6/q;

    iput-object v1, p0, Lb6/r0;->s:Lr6/q;

    .line 19
    iget-object v1, p1, Lb6/r0;->t:Ls6/o;

    iput-object v1, p0, Lb6/r0;->t:Ls6/o;

    .line 20
    iget-object p1, p1, Lb6/r0;->u:Lr6/c;

    iput-object p1, p0, Lb6/r0;->u:Lr6/c;

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, p0, Lb6/r0;->x:Z

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    iget-object p1, p2, Ld6/n;->p:Lg6/c1;

    .line 24
    iput-object p1, p0, Lb6/r0;->r:Lg6/c1;

    .line 25
    iget-object p1, p3, Lg5/s;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 26
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr6/n;

    if-eqz p1, :cond_1

    goto :goto_2

    .line 27
    :cond_1
    monitor-enter p3

    .line 28
    :try_start_0
    iget-object p1, p3, Lg5/s;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lr6/n;

    if-nez p1, :cond_2

    .line 29
    iget-object p1, p3, Lg5/s;->l:Ljava/lang/Object;

    check-cast p1, Lu6/m;

    .line 30
    new-instance p2, Lr6/n;

    invoke-direct {p2, p1}, Lr6/n;-><init>(Lu6/m;)V

    .line 31
    iget-object p1, p3, Lg5/s;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 32
    :cond_2
    :goto_1
    monitor-exit p3

    .line 33
    :goto_2
    iput-object p1, p0, Lb6/r0;->v:Lr6/n;

    return-void

    .line 34
    :goto_3
    :try_start_1
    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static R(Lb6/c0;)Lu6/z;
    .locals 3

    new-instance v0, Lu6/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Ls5/c;->m:Ls5/c;

    iput-object v1, v0, Lu6/z;->p:Ls5/c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lu6/z;->y:Z

    iput-object p0, v0, Lu6/z;->m:Ls5/o;

    sget p0, Lu6/z;->A:I

    iput p0, v0, Lu6/z;->o:I

    new-instance p0, Ly5/f;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v2}, Ly5/f;-><init>(ILy5/f;Lg5/i;)V

    iput-object p0, v0, Lu6/z;->z:Ly5/f;

    new-instance p0, Lu6/y;

    invoke-direct {p0}, Lu6/y;-><init>()V

    iput-object p0, v0, Lu6/z;->u:Lu6/y;

    iput-object p0, v0, Lu6/z;->t:Lu6/y;

    iput v1, v0, Lu6/z;->v:I

    iput-boolean v1, v0, Lu6/z;->q:Z

    iput-boolean v1, v0, Lu6/z;->r:Z

    iput-boolean v1, v0, Lu6/z;->s:Z

    return-object v0
.end method


# virtual methods
.method public final G(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    check-cast p0, Lq6/k;

    iget-object p0, p0, Lq6/k;->C:Ls5/g;

    new-instance v0, Lh6/b;

    invoke-direct {v0, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw v0
.end method

.method public final N(Lb6/l;)Lb6/u;
    .locals 5

    :try_start_0
    invoke-virtual {p0, p1}, Lb6/r0;->P(Lb6/l;)Lb6/u;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lb6/r0;->q:Lg5/s;

    monitor-enter v1

    :try_start_1
    iget-object v2, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast v2, Lu6/m;

    new-instance v3, Lu6/b0;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lu6/b0;-><init>(Lb6/l;Z)V

    iget-object p1, v2, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p1, Lv6/p;

    invoke-virtual {p1, v3, v0, v4}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p1, v1, Lg5/s;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    instance-of p1, v0, Lq6/l;

    if-eqz p1, :cond_1

    move-object p1, v0

    check-cast p1, Lq6/l;

    invoke-interface {p1, p0}, Lq6/l;->a(Lb6/r0;)V

    :cond_1
    monitor-exit v1

    return-object v0

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    invoke-static {p1}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lq6/k;

    iget-object p0, p0, Lq6/k;->C:Ls5/g;

    new-instance v1, Lb6/p;

    invoke-direct {v1, p0, v0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final O(Ljava/lang/Class;)Lb6/u;
    .locals 7

    iget-object v0, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v0, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lb6/r0;->P(Lb6/l;)Lb6/u;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_3

    iget-object v3, p0, Lb6/r0;->q:Lg5/s;

    monitor-enter v3

    :try_start_1
    iget-object v4, v3, Lg5/s;->l:Ljava/lang/Object;

    check-cast v4, Lu6/m;

    new-instance v5, Lu6/b0;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v6}, Lu6/b0;-><init>(Ljava/lang/Class;Z)V

    iget-object p1, v4, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p1, Lv6/p;

    invoke-virtual {p1, v5, v2, v6}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iget-object v4, v3, Lg5/s;->l:Ljava/lang/Object;

    check-cast v4, Lu6/m;

    new-instance v5, Lu6/b0;

    invoke-direct {v5, v0, v6}, Lu6/b0;-><init>(Lb6/l;Z)V

    iget-object v0, v4, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v0, Lv6/p;

    invoke-virtual {v0, v5, v2, v6}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v0

    if-eqz p1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object p1, v3, Lg5/s;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    instance-of p1, v2, Lq6/l;

    if-eqz p1, :cond_2

    move-object p1, v2

    check-cast p1, Lq6/l;

    invoke-interface {p1, p0}, Lq6/l;->a(Lb6/r0;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v3

    return-object v2

    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    invoke-static {p1}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final P(Lb6/l;)Lb6/u;
    .locals 8

    iget-object v0, p0, Lb6/r0;->p:Lg5/f;

    check-cast v0, Lq6/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, p1}, Lb6/p0;->s(Lb6/l;)Lj6/t;

    move-result-object v2

    iget-object v3, v2, Lj6/t;->e:Lj6/c;

    invoke-static {p0, v3}, Lq6/b;->T(Lb6/r0;Lj6/a;)Lb6/u;

    move-result-object v4

    if-eqz v4, :cond_0

    return-object v4

    :cond_0
    invoke-virtual {v1}, Ld6/m;->d()Lb6/d;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v5, :cond_1

    move-object v3, p1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v5, v1, v3, p1}, Lb6/d;->w0(Ld6/m;Lj6/a;Lb6/l;)Lb6/l;

    move-result-object v3
    :try_end_0
    .catch Lb6/p; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v5, 0x1

    if-ne v3, p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1, v3}, Lb6/p0;->s(Lb6/l;)Lj6/t;

    move-result-object v2

    :cond_3
    move v7, v5

    :goto_1
    iget-object p1, v2, Lj6/t;->d:Lb6/d;

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, v2, Lj6/t;->e:Lj6/c;

    invoke-virtual {p1, v6}, Lb6/d;->X(Lj6/a;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Lj6/t;->a(Ljava/lang/Object;)Lu6/k;

    move-result-object v6

    :goto_2
    if-nez v6, :cond_5

    invoke-virtual {v0, p0, v3, v2, v7}, Lq6/f;->W(Lb6/r0;Lb6/l;Lj6/t;Z)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lb6/r0;->u()Lt6/p;

    move-object p1, v6

    check-cast p1, Lf6/m;

    iget-object p1, p1, Lf6/m;->a:Lb6/l;

    iget-object v3, v3, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p1, v3}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, p1}, Lb6/p0;->s(Lb6/l;)Lj6/t;

    move-result-object v2

    iget-object v1, v2, Lj6/t;->e:Lj6/c;

    invoke-static {p0, v1}, Lq6/b;->T(Lb6/r0;Lj6/a;)Lb6/u;

    move-result-object v4

    :cond_6
    if-nez v4, :cond_7

    invoke-virtual {p1}, Lb6/l;->e0()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0, p0, p1, v2, v5}, Lq6/f;->W(Lb6/r0;Lb6/l;Lj6/t;Z)Lb6/u;

    move-result-object v4

    :cond_7
    new-instance p0, Ls6/g0;

    invoke-direct {p0, v6, p1, v4}, Ls6/g0;-><init>(Lu6/k;Lb6/l;Lb6/u;)V

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lb6/p;->getMessage()Ljava/lang/String;

    move-result-object p1

    new-array v0, v7, [Ljava/lang/Object;

    invoke-virtual {p0, v2, p1, v0}, Lb6/r0;->l0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6
.end method

.method public final Q()Ljava/text/DateFormat;
    .locals 1

    iget-object v0, p0, Lb6/r0;->w:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lb6/r0;->o:Lb6/p0;

    iget-object v0, v0, Ld6/m;->m:Ld6/a;

    iget-object v0, v0, Ld6/a;->q:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    iput-object v0, p0, Lb6/r0;->w:Ljava/text/DateFormat;

    return-object v0
.end method

.method public final S(Lb6/l;Ljava/lang/Class;)Lb6/l;
    .locals 1

    invoke-virtual {p1, p2}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->l:Lt6/p;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object p0

    return-object p0
.end method

.method public final T(Ljava/lang/String;Ljava/lang/Object;Ls5/g;)V
    .locals 0

    invoke-virtual {p3, p1}, Ls5/g;->S(Ljava/lang/String;)V

    if-nez p2, :cond_1

    iget-boolean p1, p0, Lb6/r0;->x:Z

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ls5/g;->U()V

    return-void

    :cond_0
    iget-object p0, p0, Lb6/r0;->t:Ls6/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ls5/g;->U()V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb6/r0;->b0(Ljava/lang/Class;)Lb6/u;

    move-result-object p1

    invoke-virtual {p1, p2, p3, p0}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void
.end method

.method public final U(Ls5/g;)V
    .locals 1

    iget-boolean v0, p0, Lb6/r0;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/g;->U()V

    return-void

    :cond_0
    iget-object p0, p0, Lb6/r0;->t:Ls6/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ls5/g;->U()V

    return-void
.end method

.method public final V(Lb6/l;Lb6/f;)Lb6/u;
    .locals 1

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v0, p1}, Lr6/n;->a(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v0, p1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lb6/r0;->N(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public final W(Ljava/lang/Class;Lb6/f;)Lb6/u;
    .locals 2

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v0, p1}, Lr6/n;->b(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v0, p1}, Lg5/s;->S(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb6/r0;->O(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public final X(Lb6/l;Lb6/f;)Lb6/u;
    .locals 1

    iget-object v0, p0, Lb6/r0;->p:Lg5/f;

    invoke-virtual {v0, p0, p1}, Lg5/f;->q(Lb6/r0;Lb6/l;)Lb6/u;

    move-result-object p1

    instance-of v0, p1, Lq6/l;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lq6/l;

    invoke-interface {v0, p0}, Lq6/l;->a(Lb6/r0;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public abstract Y(Ljava/lang/Object;Lr5/d1;)Lr6/u;
.end method

.method public final Z(Lb6/l;Lb6/f;)Lb6/u;
    .locals 1

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v0, p1}, Lr6/n;->a(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v0, p1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lb6/r0;->N(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public final a0(Ljava/lang/Class;Lb6/f;)Lb6/u;
    .locals 2

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v0, p1}, Lr6/n;->b(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v0, p1}, Lg5/s;->S(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb6/r0;->O(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public final b0(Ljava/lang/Class;)Lb6/u;
    .locals 6

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    iget-object v1, v0, Lr6/n;->a:[Lf8/p2;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iget v0, v0, Lr6/n;->b:I

    and-int/2addr v0, v2

    aget-object v0, v1, v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    if-ne v2, p1, :cond_2

    iget-boolean v2, v0, Lf8/p2;->a:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v0, Lb6/u;

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Lf8/p2;

    if-eqz v0, :cond_0

    iget-object v2, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Class;

    if-ne v2, p1, :cond_2

    iget-boolean v2, v0, Lf8/p2;->a:Z

    if-eqz v2, :cond_2

    iget-object v0, v0, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v0, Lb6/u;

    :goto_0
    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v2, Lu6/m;

    new-instance v4, Lu6/b0;

    invoke-direct {v4, p1, v3}, Lu6/b0;-><init>(Ljava/lang/Class;Z)V

    iget-object v2, v2, Lu6/m;->l:Ljava/io/Serializable;

    check-cast v2, Lv6/p;

    invoke-virtual {v2, v4}, Lv6/p;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/u;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_4

    return-object v2

    :cond_4
    invoke-virtual {p0, p1, v1}, Lb6/r0;->d0(Ljava/lang/Class;Lb6/f;)Lb6/u;

    move-result-object v0

    iget-object v2, p0, Lb6/r0;->p:Lg5/f;

    iget-object v4, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v4, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lg5/f;->s(Lb6/p0;Lb6/l;)Lo6/r;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v1}, Ln6/e;->a(Lb6/f;)Ln6/e;

    move-result-object v2

    new-instance v4, Lr6/p;

    invoke-direct {v4, v2, v0}, Lr6/p;-><init>(Ln6/e;Lb6/u;)V

    move-object v0, v4

    :cond_5
    iget-object p0, p0, Lb6/r0;->q:Lg5/s;

    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lg5/s;->l:Ljava/lang/Object;

    check-cast v2, Lu6/m;

    new-instance v4, Lu6/b0;

    invoke-direct {v4, p1, v3}, Lu6/b0;-><init>(Ljava/lang/Class;Z)V

    iget-object p1, v2, Lu6/m;->l:Ljava/io/Serializable;

    check-cast p1, Lv6/p;

    const/4 v2, 0x0

    invoke-virtual {p1, v4, v0, v2}, Lv6/p;->f(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lg5/s;->m:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_6
    :goto_1
    monitor-exit p0

    return-object v0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final c0(Lb6/l;Lb6/f;)Lb6/u;
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v0, p1}, Lr6/n;->a(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v0, p1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lb6/r0;->N(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_1
    check-cast p0, Lq6/k;

    iget-object p0, p0, Lq6/k;->C:Ls5/g;

    new-instance p1, Lb6/p;

    const/4 p2, 0x0

    const-string v0, "Null passed for `valueType` of `findValueSerializer()`"

    invoke-direct {p1, p0, v0, p2}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final d0(Ljava/lang/Class;Lb6/f;)Lb6/u;
    .locals 2

    iget-object v0, p0, Lb6/r0;->v:Lr6/n;

    invoke-virtual {v0, p1}, Lr6/n;->b(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lb6/r0;->q:Lg5/s;

    invoke-virtual {v0, p1}, Lg5/s;->S(Ljava/lang/Class;)Lb6/u;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, p1}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg5/s;->R(Lb6/l;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb6/r0;->O(Ljava/lang/Class;)Lb6/u;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lb6/r0;->f0(Ljava/lang/Class;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    move-object v0, v1

    :cond_1
    invoke-virtual {p0, v0, p2}, Lb6/r0;->h0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0
.end method

.method public final e0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb6/r0;->r:Lg6/c1;

    check-cast p0, Ld6/f;

    iget-object p0, p0, Ld6/f;->l:Ljava/util/HashMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    sget-object p1, Ld6/f;->n:Ljava/lang/Object;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    :cond_1
    sget-object p0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f0(Ljava/lang/Class;)Lb6/u;
    .locals 2

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lb6/r0;->s:Lr6/q;

    return-object p0

    :cond_0
    new-instance p0, Lr6/q;

    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1, p1}, Ls6/o;-><init>(IILjava/lang/Class;)V

    return-object p0
.end method

.method public final g0(Lb6/u;Lb6/f;)Lb6/u;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_0

    check-cast p1, Lq6/i;

    invoke-interface {p1, p0, p2}, Lq6/i;->b(Lb6/r0;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final h0(Lb6/u;Lb6/f;)Lb6/u;
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lq6/i;

    if-eqz v0, :cond_0

    check-cast p1, Lq6/i;

    invoke-interface {p1, p0, p2}, Lq6/i;->b(Lb6/r0;Lb6/f;)Lb6/u;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public abstract i0(Ljava/lang/Class;)Ljava/lang/Object;
.end method

.method public abstract j0(Ljava/lang/Object;)Z
.end method

.method public final varargs k0(Lj6/t;Lj6/v;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    array-length v0, p4

    if-lez v0, :cond_0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    :cond_0
    invoke-interface {p2}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lb6/g;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lj6/t;->a:Lb6/l;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p4, " (of type "

    const-string v0, "): "

    const-string v1, "Invalid definition for property "

    invoke-static {v1, p2, p4, p1, v0}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lq6/k;

    iget-object p0, p0, Lq6/k;->C:Ls5/g;

    new-instance p2, Lh6/b;

    invoke-direct {p2, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public final varargs l0(Lj6/t;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object p1, p1, Lj6/t;->a:Lb6/l;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p1}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    array-length v0, p3

    if-lez v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    const-string p3, "Invalid type definition for type "

    const-string v0, ": "

    invoke-static {p3, p1, v0, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p0, Lq6/k;

    iget-object p0, p0, Lq6/k;->C:Ls5/g;

    new-instance p2, Lh6/b;

    invoke-direct {p2, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    throw p2
.end method

.method public abstract m0(Lj6/a;Ljava/lang/Object;)Lb6/u;
.end method

.method public final r()Ld6/m;
    .locals 0

    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    return-object p0
.end method

.method public final u()Lt6/p;
    .locals 0

    iget-object p0, p0, Lb6/r0;->o:Lb6/p0;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object p0, p0, Ld6/a;->l:Lt6/p;

    return-object p0
.end method

.method public final w(Lb6/l;Ljava/lang/String;Ljava/lang/String;)Lh6/d;
    .locals 1

    invoke-static {p1}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Could not resolve type id \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\' as a subtype of "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Lb6/g;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lh6/d;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0, p2}, Lh6/b;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1
.end method
