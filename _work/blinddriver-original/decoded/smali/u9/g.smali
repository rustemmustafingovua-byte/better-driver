.class public Lu9/g;
.super Lu9/c0;
.source "SourceFile"

# interfaces
.implements Lu9/f;
.implements La9/d;
.implements Lu9/v1;


# static fields
.field public static final synthetic q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field public static final synthetic r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _decisionAndIndex$volatile:I

.field private volatile synthetic _parentHandle$volatile:Ljava/lang/Object;

.field private volatile synthetic _state$volatile:Ljava/lang/Object;

.field public final o:Ly8/c;

.field public final p:Ly8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "_decisionAndIndex$volatile"

    const-class v1, Lu9/g;

    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    sput-object v0, Lu9/g;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const-string v0, "_state$volatile"

    const-class v2, Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const-string v0, "_parentHandle$volatile"

    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lu9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(ILy8/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lu9/c0;-><init>(I)V

    iput-object p2, p0, Lu9/g;->o:Ly8/c;

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    iput-object p1, p0, Lu9/g;->p:Ly8/h;

    const p1, 0x1fffffff

    iput p1, p0, Lu9/g;->_decisionAndIndex$volatile:I

    sget-object p1, Lu9/b;->a:Lu9/b;

    iput-object p1, p0, Lu9/g;->_state$volatile:Ljava/lang/Object;

    return-void
.end method

.method public static D(Lu9/h1;Ljava/lang/Object;ILi9/f;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p1, Lu9/n;

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    instance-of p2, p0, Lu9/e;

    if-nez p2, :cond_3

    return-object p1

    :cond_3
    new-instance v0, Lu9/m;

    instance-of p2, p0, Lu9/e;

    if-eqz p2, :cond_4

    check-cast p0, Lu9/e;

    :goto_1
    move-object v2, p0

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_1

    :goto_2
    const/4 v4, 0x0

    const/16 v5, 0x10

    move-object v1, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lu9/m;-><init>(Ljava/lang/Object;Lu9/e;Li9/f;Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static x(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "It\'s prohibited to register multiple handlers, tried to register "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", already has "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Li9/f;)V
    .locals 1

    iget v0, p0, Lu9/c0;->n:I

    invoke-virtual {p0, p1, v0, p2}, Lu9/g;->B(Ljava/lang/Object;ILi9/f;)V

    return-void
.end method

.method public final B(Ljava/lang/Object;ILi9/f;)V
    .locals 4

    :goto_0
    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu9/h1;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lu9/h1;

    invoke-static {v2, p1, p2, p3}, Lu9/g;->D(Lu9/h1;Ljava/lang/Object;ILi9/f;)Ljava/lang/Object;

    move-result-object v2

    :cond_0
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lu9/g;->w()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lu9/g;->m()V

    :cond_1
    invoke-virtual {p0, p2}, Lu9/g;->n(I)V

    return-void

    :cond_2
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_3
    instance-of p2, v1, Lu9/h;

    if-eqz p2, :cond_5

    check-cast v1, Lu9/h;

    sget-object p2, Lu9/h;->c:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result p2

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    iget-object p2, v1, Lu9/n;->a:Ljava/lang/Throwable;

    invoke-virtual {p0, p3, p2, p1}, Lu9/g;->k(Li9/f;Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Already resumed, but proposed with update "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final C(Lu9/p;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lu9/g;->o:Ly8/c;

    instance-of v1, v0, Lz9/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lz9/g;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Lz9/g;->o:Lu9/p;

    goto :goto_1

    :cond_1
    move-object v0, v2

    :goto_1
    if-ne v0, p1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    iget p1, p0, Lu9/c0;->n:I

    :goto_2
    invoke-virtual {p0, p2, p1, v2}, Lu9/g;->B(Ljava/lang/Object;ILi9/f;)V

    return-void
.end method

.method public final a(Lz9/r;I)V
    .locals 4

    :cond_0
    sget-object v0, Lu9/g;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    const v2, 0x1fffffff

    and-int v3, v1, v2

    if-ne v3, v2, :cond_1

    shr-int/lit8 v2, v1, 0x1d

    shl-int/lit8 v2, v2, 0x1d

    add-int/2addr v2, p2

    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lu9/g;->u(Lu9/h1;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "invokeOnCancellation should be called at most once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/util/concurrent/CancellationException;)V
    .locals 7

    :goto_0
    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lu9/h1;

    if-nez v1, :cond_9

    instance-of v1, v2, Lu9/n;

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, v2, Lu9/m;

    if-eqz v1, :cond_5

    move-object v1, v2

    check-cast v1, Lu9/m;

    iget-object v3, v1, Lu9/m;->e:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    const/4 v3, 0x0

    const/16 v4, 0xf

    invoke-static {v1, v3, p1, v4}, Lu9/m;->a(Lu9/m;Lu9/e;Ljava/lang/Throwable;I)Lu9/m;

    move-result-object v3

    :cond_1
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v0, v1, Lu9/m;->b:Lu9/e;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0, p1}, Lu9/g;->h(Lu9/e;Ljava/lang/Throwable;)V

    :cond_2
    iget-object v0, v1, Lu9/m;->c:Li9/f;

    if-eqz v0, :cond_7

    iget-object v1, v1, Lu9/m;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1, v1}, Lu9/g;->k(Li9/f;Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_1

    move-object v5, p1

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must be called at most once"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance v1, Lu9/m;

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v3, 0x0

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lu9/m;-><init>(Ljava/lang/Object;Lu9/e;Li9/f;Ljava/lang/Throwable;I)V

    :cond_6
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v2, :cond_6

    :goto_2
    move-object p1, v5

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Not completed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c()Ly8/c;
    .locals 0

    iget-object p0, p0, Lu9/g;->o:Ly8/c;

    return-object p0
.end method

.method public final d(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    invoke-super {p0, p1}, Lu9/c0;->d(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    instance-of p0, p1, Lu9/m;

    if-eqz p0, :cond_0

    check-cast p1, Lu9/m;

    iget-object p0, p1, Lu9/m;->a:Ljava/lang/Object;

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final g()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCallerFrame()La9/d;
    .locals 1

    iget-object p0, p0, Lu9/g;->o:Ly8/c;

    instance-of v0, p0, La9/d;

    if-eqz v0, :cond_0

    check-cast p0, La9/d;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Lu9/g;->p:Ly8/h;

    return-object p0
.end method

.method public final h(Lu9/e;Ljava/lang/Throwable;)V
    .locals 2

    :try_start_0
    iget v0, p1, Lu9/e;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p1, p1, Lu9/e;->b:Ljava/lang/Object;

    check-cast p1, Lu9/g0;

    invoke-interface {p1}, Lu9/g0;->a()V

    goto :goto_0

    :pswitch_0
    iget-object p1, p1, Lu9/e;->b:Ljava/lang/Object;

    check-cast p1, Li9/c;

    invoke-interface {p1, p2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Lu9/e;->b:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/ScheduledFuture;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Landroidx/fragment/app/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Exception in invokeOnCancellation handler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p0, p0, Lu9/g;->p:Ly8/h;

    invoke-static {p2, p0}, Lu9/v;->p(Ljava/lang/Throwable;Ly8/h;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final i(Ljava/lang/Object;Li9/f;)Lmb/s2;
    .locals 5

    sget-object v0, Lu9/v;->a:Lmb/s2;

    :goto_0
    sget-object v1, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lu9/h1;

    if-eqz v3, :cond_3

    move-object v3, v2

    check-cast v3, Lu9/h1;

    iget v4, p0, Lu9/c0;->n:I

    invoke-static {v3, p1, v4, p2}, Lu9/g;->D(Lu9/h1;Ljava/lang/Object;ILi9/f;)Ljava/lang/Object;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lu9/g;->w()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lu9/g;->m()V

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v2, :cond_0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final j(Ljava/lang/Throwable;)Z
    .locals 8

    :goto_0
    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu9/h1;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    new-instance v2, Lu9/h;

    instance-of v4, v1, Lu9/e;

    const/4 v5, 0x1

    if-nez v4, :cond_1

    instance-of v4, v1, Lz9/r;

    if-eqz v4, :cond_2

    :cond_1
    move v3, v5

    :cond_2
    if-nez p1, :cond_3

    new-instance v4, Ljava/util/concurrent/CancellationException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Continuation "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " was cancelled normally"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v4, p1

    :goto_1
    invoke-direct {v2, v4, v3}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    :cond_4
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v0, v1

    check-cast v0, Lu9/h1;

    instance-of v2, v0, Lu9/e;

    if-eqz v2, :cond_5

    check-cast v1, Lu9/e;

    invoke-virtual {p0, v1, p1}, Lu9/g;->h(Lu9/e;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_5
    instance-of v0, v0, Lz9/r;

    if-eqz v0, :cond_6

    check-cast v1, Lz9/r;

    invoke-virtual {p0, v1, p1}, Lu9/g;->l(Lz9/r;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    invoke-virtual {p0}, Lu9/g;->w()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lu9/g;->m()V

    :cond_7
    iget p1, p0, Lu9/c0;->n:I

    invoke-virtual {p0, p1}, Lu9/g;->n(I)V

    return v5

    :cond_8
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_4

    goto :goto_0
.end method

.method public final k(Li9/f;Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu9/g;->p:Ly8/h;

    :try_start_0
    invoke-interface {p1, p2, p3, v0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Landroidx/fragment/app/i0;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Exception in resume onCancellation handler for "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p2, v0}, Lu9/v;->p(Ljava/lang/Throwable;Ly8/h;)V

    return-void
.end method

.method public final l(Lz9/r;Ljava/lang/Throwable;)V
    .locals 3

    iget-object p2, p0, Lu9/g;->p:Ly8/h;

    sget-object v0, Lu9/g;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_0

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lz9/r;->g(ILy8/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Landroidx/fragment/app/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Exception in invokeOnCancellation handler for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v0, p2}, Lu9/v;->p(Ljava/lang/Throwable;Ly8/h;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "The index for Segment.onCancellation(..) is broken"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()V
    .locals 2

    sget-object v0, Lu9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu9/g0;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Lu9/g0;->a()V

    sget-object v1, Lu9/g1;->l:Lu9/g1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final n(I)V
    .locals 6

    :cond_0
    sget-object v0, Lu9/g;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v1

    shr-int/lit8 v2, v1, 0x1d

    if-eqz v2, :cond_b

    const/4 v0, 0x1

    if-ne v2, v0, :cond_a

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iget-object v3, p0, Lu9/g;->o:Ly8/c;

    if-nez v1, :cond_9

    instance-of v4, v3, Lz9/g;

    if-eqz v4, :cond_9

    const/4 v4, 0x2

    if-eq p1, v0, :cond_3

    if-ne p1, v4, :cond_2

    goto :goto_1

    :cond_2
    move p1, v2

    goto :goto_2

    :cond_3
    :goto_1
    move p1, v0

    :goto_2
    iget v5, p0, Lu9/c0;->n:I

    if-eq v5, v0, :cond_4

    if-ne v5, v4, :cond_5

    :cond_4
    move v2, v0

    :cond_5
    if-ne p1, v2, :cond_9

    move-object p1, v3

    check-cast p1, Lz9/g;

    iget-object v1, p1, Lz9/g;->o:Lu9/p;

    iget-object p1, p1, Lz9/g;->p:La9/c;

    invoke-interface {p1}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    invoke-static {v1, p1}, Lz9/b;->j(Lu9/p;Ly8/h;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1, p1, p0}, Lz9/b;->i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-static {}, Lu9/n1;->a()Lu9/o0;

    move-result-object p1

    iget-wide v1, p1, Lu9/o0;->n:J

    const-wide v4, 0x100000000L

    cmp-long v1, v1, v4

    if-ltz v1, :cond_7

    invoke-virtual {p1, p0}, Lu9/o0;->W(Lu9/c0;)V

    return-void

    :cond_7
    invoke-virtual {p1, v0}, Lu9/o0;->Y(Z)V

    :try_start_0
    invoke-static {p0, v3, v0}, Lu9/v;->v(Lu9/g;Ly8/c;Z)V

    :cond_8
    invoke-virtual {p1}, Lu9/o0;->a0()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    :goto_3
    invoke-virtual {p1, v0}, Lu9/o0;->V(Z)V

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {p0, v1}, Lu9/c0;->f(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p0

    invoke-virtual {p1, v0}, Lu9/o0;->V(Z)V

    throw p0

    :cond_9
    invoke-static {p0, v3, v1}, Lu9/v;->v(Lu9/g;Ly8/c;Z)V

    return-void

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Already resumed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    const v2, 0x1fffffff

    and-int/2addr v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    add-int/2addr v3, v2

    invoke-virtual {v0, p0, v1, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_4
    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 0

    iget p1, p0, Lu9/c0;->n:I

    invoke-virtual {p0, p1}, Lu9/g;->n(I)V

    return-void
.end method

.method public p(Lu9/c1;)Ljava/lang/Throwable;
    .locals 0

    invoke-virtual {p1}, Lu9/c1;->m()Ljava/util/concurrent/CancellationException;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lu9/g;->w()Z

    move-result v0

    :cond_0
    sget-object v1, Lu9/g;->q:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    shr-int/lit8 v3, v2, 0x1d

    if-eqz v3, :cond_7

    const/4 v1, 0x2

    if-ne v3, v1, :cond_6

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lu9/g;->z()V

    :cond_1
    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lu9/n;

    if-nez v2, :cond_5

    iget v2, p0, Lu9/c0;->n:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    if-ne v2, v1, :cond_4

    :cond_2
    iget-object v1, p0, Lu9/g;->p:Ly8/h;

    sget-object v2, Lu9/q;->m:Lu9/q;

    invoke-interface {v1, v2}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v1

    check-cast v1, Lu9/v0;

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lu9/v0;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lu9/v0;->m()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu9/g;->b(Ljava/util/concurrent/CancellationException;)V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lu9/g;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_5
    check-cast v0, Lu9/n;

    iget-object p0, v0, Lu9/n;->a:Ljava/lang/Throwable;

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Already suspended"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const v3, 0x1fffffff

    and-int/2addr v3, v2

    const/high16 v4, 0x20000000

    add-int/2addr v4, v3

    invoke-virtual {v1, p0, v2, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lu9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu9/g0;

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lu9/g;->s()Lu9/g0;

    :cond_8
    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lu9/g;->z()V

    :cond_9
    sget-object p0, Lz8/a;->l:Lz8/a;

    return-object p0
.end method

.method public final r()V
    .locals 2

    invoke-virtual {p0}, Lu9/g;->s()Lu9/g0;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lu9/h1;

    if-nez v1, :cond_1

    invoke-interface {v0}, Lu9/g0;->a()V

    sget-object v0, Lu9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lu9/g1;->l:Lu9/g1;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
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
    iget v0, p0, Lu9/c0;->n:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lu9/g;->B(Ljava/lang/Object;ILi9/f;)V

    return-void
.end method

.method public final s()Lu9/g0;
    .locals 4

    iget-object v0, p0, Lu9/g;->p:Ly8/h;

    sget-object v1, Lu9/q;->m:Lu9/q;

    invoke-interface {v0, v1}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v0

    check-cast v0, Lu9/v0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    new-instance v2, Lu9/i;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lu9/i;-><init>(Lu9/g;I)V

    const/4 v3, 0x1

    invoke-static {v0, v3, v2}, Lu9/v;->q(Lu9/v0;ZLu9/y0;)Lu9/g0;

    move-result-object v0

    :cond_1
    sget-object v2, Lu9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v2, p0, v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v0
.end method

.method public final t(Li9/c;)V
    .locals 2

    new-instance v0, Lu9/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lu9/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lu9/g;->u(Lu9/h1;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lu9/g;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu9/g;->o:Ly8/c;

    invoke-static {v1}, Lu9/v;->w(Ly8/c;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "){"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lu9/h1;

    if-eqz v2, :cond_0

    const-string v1, "Active"

    goto :goto_0

    :cond_0
    instance-of v1, v1, Lu9/h;

    if-eqz v1, :cond_1

    const-string v1, "Cancelled"

    goto :goto_0

    :cond_1
    const-string v1, "Completed"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lu9/v;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lu9/h1;)V
    .locals 7

    :goto_0
    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v1, v2, Lu9/b;

    if-eqz v1, :cond_2

    :cond_0
    invoke-virtual {v0, p0, v2, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_2
    instance-of v1, v2, Lu9/e;

    const/4 v3, 0x0

    if-nez v1, :cond_10

    instance-of v1, v2, Lz9/r;

    if-nez v1, :cond_10

    instance-of v1, v2, Lu9/n;

    if-eqz v1, :cond_5

    move-object v0, v2

    check-cast v0, Lu9/n;

    sget-object v1, Lu9/n;->b:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_4

    instance-of v1, v2, Lu9/h;

    if-eqz v1, :cond_e

    iget-object v0, v0, Lu9/n;->a:Ljava/lang/Throwable;

    instance-of v1, p1, Lu9/e;

    if-eqz v1, :cond_3

    check-cast p1, Lu9/e;

    invoke-virtual {p0, p1, v0}, Lu9/g;->h(Lu9/e;Ljava/lang/Throwable;)V

    return-void

    :cond_3
    const-string v1, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>"

    invoke-static {p1, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lz9/r;

    invoke-virtual {p0, p1, v0}, Lu9/g;->l(Lz9/r;Ljava/lang/Throwable;)V

    return-void

    :cond_4
    invoke-static {p1, v2}, Lu9/g;->x(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_5
    instance-of v1, v2, Lu9/m;

    const-string v4, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler"

    if-eqz v1, :cond_b

    move-object v1, v2

    check-cast v1, Lu9/m;

    iget-object v5, v1, Lu9/m;->b:Lu9/e;

    if-nez v5, :cond_a

    instance-of v5, p1, Lz9/r;

    if-eqz v5, :cond_6

    return-void

    :cond_6
    invoke-static {p1, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, p1

    check-cast v4, Lu9/e;

    iget-object v5, v1, Lu9/m;->e:Ljava/lang/Throwable;

    if-eqz v5, :cond_7

    invoke-virtual {p0, v4, v5}, Lu9/g;->h(Lu9/e;Ljava/lang/Throwable;)V

    return-void

    :cond_7
    const/16 v5, 0x1d

    invoke-static {v1, v4, v3, v5}, Lu9/m;->a(Lu9/m;Lu9/e;Ljava/lang/Throwable;I)Lu9/m;

    move-result-object v1

    :cond_8
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_8

    goto/16 :goto_0

    :cond_a
    invoke-static {p1, v2}, Lu9/g;->x(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3

    :cond_b
    instance-of v1, p1, Lz9/r;

    if-eqz v1, :cond_c

    return-void

    :cond_c
    invoke-static {p1, v4}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lu9/e;

    new-instance v1, Lu9/m;

    const/4 v5, 0x0

    const/16 v6, 0x1c

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v6}, Lu9/m;-><init>(Ljava/lang/Object;Lu9/e;Li9/f;Ljava/lang/Throwable;I)V

    :cond_d
    invoke-virtual {v0, p0, v2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_e
    :goto_1
    return-void

    :cond_f
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_d

    goto/16 :goto_0

    :cond_10
    invoke-static {p1, v2}, Lu9/g;->x(Ljava/lang/Object;Ljava/lang/Object;)V

    throw v3
.end method

.method public final v()Z
    .locals 1

    sget-object v0, Lu9/g;->r:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lu9/h1;

    return p0
.end method

.method public final w()Z
    .locals 2

    iget v0, p0, Lu9/c0;->n:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>"

    iget-object p0, p0, Lu9/g;->o:Ly8/c;

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lz9/g;

    sget-object v0, Lz9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public y()Ljava/lang/String;
    .locals 0

    const-string p0, "CancellableContinuation"

    return-object p0
.end method

.method public final z()V
    .locals 5

    iget-object v0, p0, Lu9/g;->o:Ly8/c;

    instance-of v1, v0, Lz9/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Lz9/g;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_8

    sget-object v1, Lz9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lz9/b;->c:Lmb/s2;

    if-ne v3, v4, :cond_3

    :cond_1
    invoke-virtual {v1, v0, v4, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_1

    goto :goto_1

    :cond_3
    instance-of v4, v3, Ljava/lang/Throwable;

    if-eqz v4, :cond_7

    :goto_2
    invoke-virtual {v1, v0, v3, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v2, v3

    check-cast v2, Ljava/lang/Throwable;

    :goto_3
    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lu9/g;->m()V

    invoke-virtual {p0, v2}, Lu9/g;->j(Ljava/lang/Throwable;)Z

    return-void

    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_6

    goto :goto_2

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
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

    :cond_8
    :goto_4
    return-void
.end method
