.class public final Lv9/d;
.super Lu9/p;
.source "SourceFile"

# interfaces
.implements Lu9/y;


# instance fields
.field public final n:Landroid/os/Handler;

.field public final o:Ljava/lang/String;

.field public final p:Z

.field public final q:Lv9/d;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 7
    invoke-direct {p0, p1, v0, v1}, Lv9/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lu9/p;-><init>()V

    .line 2
    iput-object p1, p0, Lv9/d;->n:Landroid/os/Handler;

    .line 3
    iput-object p2, p0, Lv9/d;->o:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lv9/d;->p:Z

    if-eqz p3, :cond_0

    move-object p3, p0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p3, Lv9/d;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lv9/d;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    .line 6
    :goto_0
    iput-object p3, p0, Lv9/d;->q:Lv9/d;

    return-void
.end method


# virtual methods
.method public final C(JLu9/q1;Ly8/h;)Lu9/g0;
    .locals 3

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    move-wide p1, v0

    :cond_0
    iget-object v0, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, p3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lv9/c;

    invoke-direct {p1, p0, p3}, Lv9/c;-><init>(Lv9/d;Lu9/q1;)V

    return-object p1

    :cond_1
    invoke-virtual {p0, p4, p3}, Lv9/d;->V(Ly8/h;Ljava/lang/Runnable;)V

    sget-object p0, Lu9/g1;->l:Lu9/g1;

    return-object p0
.end method

.method public final J(JLu9/g;)V
    .locals 4

    new-instance v0, Lb/d;

    const/16 v1, 0xf

    invoke-direct {v0, v1, p3, p0}, Lb/d;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide v1, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long v3, p1, v1

    if-lez v3, :cond_0

    move-wide p1, v1

    :cond_0
    iget-object v1, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lp/o0;

    const/16 p2, 0xe

    invoke-direct {p1, p2, p0, v0}, Lp/o0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3, p1}, Lu9/g;->t(Li9/c;)V

    return-void

    :cond_1
    iget-object p1, p3, Lu9/g;->p:Ly8/h;

    invoke-virtual {p0, p1, v0}, Lv9/d;->V(Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final R(Ly8/h;Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {v0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lv9/d;->V(Ly8/h;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final T(Ly8/h;)Z
    .locals 0

    iget-boolean p1, p0, Lv9/d;->p:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object p0, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {p1, p0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final V(Ly8/h;Ljava/lang/Runnable;)V
    .locals 3

    new-instance v0, Ljava/util/concurrent/CancellationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The task was rejected, the handler underlying the dispatcher \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\' was closed"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lu9/v;->f(Ly8/h;Ljava/util/concurrent/CancellationException;)V

    sget-object p0, Lu9/e0;->a:Lba/e;

    sget-object p0, Lba/d;->n:Lba/d;

    invoke-virtual {p0, p1, p2}, Lba/d;->R(Ly8/h;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lv9/d;

    if-eqz v0, :cond_0

    check-cast p1, Lv9/d;

    iget-object v0, p1, Lv9/d;->n:Landroid/os/Handler;

    iget-object v1, p0, Lv9/d;->n:Landroid/os/Handler;

    if-ne v0, v1, :cond_0

    iget-boolean p1, p1, Lv9/d;->p:Z

    iget-boolean p0, p0, Lv9/d;->p:Z

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-boolean p0, p0, Lv9/d;->p:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x4cf

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d5

    :goto_0
    xor-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lu9/e0;->a:Lba/e;

    sget-object v0, Lz9/n;->a:Lv9/d;

    if-ne p0, v0, :cond_0

    const-string v0, "Dispatchers.Main"

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, v0, Lv9/d;->q:Lv9/d;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object v0, v1

    :goto_0
    if-ne p0, v0, :cond_1

    const-string v0, "Dispatchers.Main.immediate"

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lv9/d;->o:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lv9/d;->n:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-boolean p0, p0, Lv9/d;->p:Z

    if-eqz p0, :cond_3

    const-string p0, ".immediate"

    invoke-static {v0, p0}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object v0, p0

    :cond_3
    return-object v0
.end method
