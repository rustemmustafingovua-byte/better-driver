.class public final Lz9/g;
.super Lu9/c0;
.source "SourceFile"

# interfaces
.implements La9/d;
.implements Ly8/c;


# static fields
.field public static final synthetic s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _reusableCancellableContinuation$volatile:Ljava/lang/Object;

.field public final o:Lu9/p;

.field public final p:La9/c;

.field public q:Ljava/lang/Object;

.field public final r:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation$volatile"

    const-class v2, Lz9/g;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lz9/g;->s:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Lu9/p;La9/c;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lu9/c0;-><init>(I)V

    iput-object p1, p0, Lz9/g;->o:Lu9/p;

    iput-object p2, p0, Lz9/g;->p:La9/c;

    sget-object p1, Lz9/b;->b:Lmb/s2;

    iput-object p1, p0, Lz9/g;->q:Ljava/lang/Object;

    invoke-interface {p2}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    invoke-static {p1}, Lz9/b;->m(Ly8/h;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lz9/g;->r:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final c()Ly8/c;
    .locals 0

    return-object p0
.end method

.method public final g()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lz9/g;->q:Ljava/lang/Object;

    sget-object v1, Lz9/b;->b:Lmb/s2;

    iput-object v1, p0, Lz9/g;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCallerFrame()La9/d;
    .locals 0

    iget-object p0, p0, Lz9/g;->p:La9/c;

    return-object p0
.end method

.method public final getContext()Ly8/h;
    .locals 0

    iget-object p0, p0, Lz9/g;->p:La9/c;

    invoke-interface {p0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p0

    return-object p0
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 8

    invoke-static {p1}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, p1

    goto :goto_0

    :cond_0
    new-instance v2, Lu9/n;

    invoke-direct {v2, v0, v1}, Lu9/n;-><init>(Ljava/lang/Throwable;Z)V

    :goto_0
    iget-object v0, p0, Lz9/g;->p:La9/c;

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v3

    iget-object v4, p0, Lz9/g;->o:Lu9/p;

    invoke-static {v4, v3}, Lz9/b;->j(Lu9/p;Ly8/h;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lz9/g;->q:Ljava/lang/Object;

    iput v1, p0, Lu9/c0;->n:I

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    invoke-static {v4, p1, p0}, Lz9/b;->i(Lu9/p;Ly8/h;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    invoke-static {}, Lu9/n1;->a()Lu9/o0;

    move-result-object v3

    iget-wide v4, v3, Lu9/o0;->n:J

    const-wide v6, 0x100000000L

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    iput-object v2, p0, Lz9/g;->q:Ljava/lang/Object;

    iput v1, p0, Lu9/c0;->n:I

    invoke-virtual {v3, p0}, Lu9/o0;->W(Lu9/c0;)V

    return-void

    :cond_2
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lu9/o0;->Y(Z)V

    :try_start_0
    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object v2

    iget-object v4, p0, Lz9/g;->r:Ljava/lang/Object;

    invoke-static {v2, v4}, Lz9/b;->n(Ly8/h;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p1}, Ly8/c;->resumeWith(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v4}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v3}, Lu9/o0;->a0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Lu9/o0;->V(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v2, v4}, Lz9/b;->g(Ly8/h;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    :try_start_4
    invoke-virtual {p0, p1}, Lu9/c0;->f(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :goto_3
    return-void

    :catchall_2
    move-exception p0

    invoke-virtual {v3, v1}, Lu9/o0;->V(Z)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DispatchedContinuation["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lz9/g;->o:Lu9/p;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lz9/g;->p:La9/c;

    invoke-static {p0}, Lu9/v;->w(Ly8/c;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
