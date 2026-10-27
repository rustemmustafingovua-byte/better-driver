.class public abstract Lu9/a;
.super Lu9/c1;
.source "SourceFile"

# interfaces
.implements Ly8/c;
.implements Lu9/t;


# instance fields
.field public final n:Ly8/h;


# direct methods
.method public constructor <init>(Ly8/h;Z)V
    .locals 0

    invoke-direct {p0, p2}, Lu9/c1;-><init>(Z)V

    sget-object p2, Lu9/q;->m:Lu9/q;

    invoke-interface {p1, p2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object p2

    check-cast p2, Lu9/v0;

    invoke-virtual {p0, p2}, Lu9/c1;->L(Lu9/v0;)V

    invoke-interface {p1, p0}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object p1

    iput-object p1, p0, Lu9/a;->n:Ly8/h;

    return-void
.end method


# virtual methods
.method public final C()Ly8/h;
    .locals 0

    iget-object p0, p0, Lu9/a;->n:Ly8/h;

    return-object p0
.end method

.method public final J(Landroidx/fragment/app/i0;)V
    .locals 0

    iget-object p0, p0, Lu9/a;->n:Ly8/h;

    invoke-static {p1, p0}, Lu9/v;->p(Ljava/lang/Throwable;Ly8/h;)V

    return-void
.end method

.method public final U(Ljava/lang/Object;)V
    .locals 2

    instance-of v0, p1, Lu9/n;

    if-eqz v0, :cond_1

    check-cast p1, Lu9/n;

    iget-object v0, p1, Lu9/n;->a:Ljava/lang/Throwable;

    sget-object v1, Lu9/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lu9/a;->c0(Ljava/lang/Throwable;Z)V

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lu9/a;->d0(Ljava/lang/Object;)V

    return-void
.end method

.method public c0(Ljava/lang/Throwable;Z)V
    .locals 0

    return-void
.end method

.method public d0(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final e0(Lu9/u;Lu9/a;Li9/e;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    sget-object v0, Lt8/z;->a:Lt8/z;

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    :try_start_0
    iget-object p1, p0, Lu9/a;->n:Ly8/h;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v2, p3, La9/a;

    if-nez v2, :cond_0

    invoke-static {p3, p2, p0}, Lg6/c1;->H(Li9/e;Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    invoke-static {v1, p3}, Lj9/b0;->b(ILjava/lang/Object;)V

    invoke-interface {p3, p2, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    invoke-static {p1, v0}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-eq p2, p1, :cond_4

    invoke-virtual {p0, p2}, Lu9/a;->resumeWith(Ljava/lang/Object;)V

    return-void

    :catchall_1
    move-exception p1

    goto :goto_2

    :goto_1
    :try_start_3
    invoke-static {p1, v0}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    instance-of p2, p1, Lu9/a0;

    if-eqz p2, :cond_1

    check-cast p1, Lu9/a0;

    iget-object p1, p1, Lu9/a0;->l:Ljava/lang/Throwable;

    :cond_1
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu9/a;->resumeWith(Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    const-string p1, "<this>"

    invoke-static {p3, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p2, p0}, Lg6/c1;->k(Li9/e;Ly8/c;Ly8/c;)Ly8/c;

    move-result-object p0

    invoke-static {p0}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p0

    invoke-interface {p0, v0}, Ly8/c;->resumeWith(Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    :try_start_4
    invoke-static {p3, p2, p0}, Lg6/c1;->k(Li9/e;Ly8/c;Ly8/c;)Ly8/c;

    move-result-object p1

    invoke-static {p1}, Lg6/c1;->u(Ly8/c;)Ly8/c;

    move-result-object p1

    invoke-static {v0, p1}, Lz9/b;->h(Ljava/lang/Object;Ly8/c;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    instance-of p2, p1, Lu9/a0;

    if-eqz p2, :cond_6

    check-cast p1, Lu9/a0;

    iget-object p1, p1, Lu9/a0;->l:Ljava/lang/Throwable;

    :cond_6
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p2

    invoke-virtual {p0, p2}, Lu9/a;->resumeWith(Ljava/lang/Object;)V

    throw p1
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Lu9/a;->n:Ly8/h;

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lu9/n;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    invoke-virtual {p0, p1}, Lu9/c1;->Q(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lu9/v;->e:Lmb/s2;

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lu9/a;->r(Ljava/lang/Object;)V

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string v0, " was cancelled"

    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
