.class public final Lf7/b0;
.super Lf7/t;
.source "SourceFile"


# instance fields
.field public final b:Lf2/t1;

.field public final c:Lu7/d;

.field public final d:Lf7/a;


# direct methods
.method public constructor <init>(ILf2/t1;Lu7/d;Lf7/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lf7/t;-><init>(I)V

    iput-object p3, p0, Lf7/b0;->c:Lu7/d;

    iput-object p2, p0, Lf7/b0;->b:Lf2/t1;

    iput-object p4, p0, Lf7/b0;->d:Lf7/a;

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    iget-boolean p0, p2, Lf2/t1;->a:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Best-effort write calls cannot pass methods that should auto-resolve missing features."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lf7/o;)Z
    .locals 0

    iget-object p0, p0, Lf7/b0;->b:Lf2/t1;

    iget-boolean p0, p0, Lf2/t1;->a:Z

    return p0
.end method

.method public final b(Lf7/o;)[Ld7/c;
    .locals 0

    iget-object p0, p0, Lf7/b0;->b:Lf2/t1;

    iget-object p0, p0, Lf2/t1;->c:Ljava/io/Serializable;

    check-cast p0, [Ld7/c;

    return-object p0
.end method

.method public final c(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lf7/b0;->d:Lf7/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/common/api/Status;->n:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    new-instance v0, Le7/j;

    invoke-direct {v0, p1}, Le7/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    new-instance v0, Le7/d;

    invoke-direct {v0, p1}, Le7/d;-><init>(Lcom/google/android/gms/common/api/Status;)V

    :goto_0
    iget-object p0, p0, Lf7/b0;->c:Lu7/d;

    invoke-virtual {p0, v0}, Lu7/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final d(Ljava/lang/Exception;)V
    .locals 0

    iget-object p0, p0, Lf7/b0;->c:Lu7/d;

    invoke-virtual {p0, p1}, Lu7/d;->a(Ljava/lang/Exception;)V

    return-void
.end method

.method public final e(Lf7/o;)V
    .locals 2

    iget-object v0, p0, Lf7/b0;->c:Lu7/d;

    :try_start_0
    iget-object v1, p0, Lf7/b0;->b:Lf2/t1;

    iget-object p1, p1, Lf7/o;->d:Le7/c;

    iget-object v1, v1, Lf2/t1;->d:Ljava/lang/Object;

    check-cast v1, Lg5/s;

    iget-object v1, v1, Lg5/s;->l:Ljava/lang/Object;

    check-cast v1, Lf7/j;

    invoke-interface {v1, p1, v0}, Lf7/j;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    invoke-virtual {v0, p0}, Lu7/d;->a(Ljava/lang/Exception;)V

    return-void

    :goto_1
    invoke-static {p1}, Lf7/t;->g(Landroid/os/RemoteException;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/b0;->c(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :catch_2
    move-exception p0

    throw p0
.end method

.method public final f(Lg5/c;Z)V
    .locals 3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iget-object v0, p1, Lg5/c;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    iget-object p0, p0, Lf7/b0;->c:Lu7/d;

    invoke-interface {v0, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lu7/d;->a:Lu7/i;

    new-instance v0, Lk0/l;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, p0, v2}, Lk0/l;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lu7/e;->a:Lf7/l;

    new-instance p1, Lu7/g;

    invoke-direct {p1, p0, v0}, Lu7/g;-><init>(Ljava/util/concurrent/Executor;Lu7/b;)V

    iget-object p0, p2, Lu7/i;->b:Lad/a2;

    invoke-virtual {p0, p1}, Lad/a2;->p(Lu7/h;)V

    invoke-virtual {p2}, Lu7/i;->f()V

    return-void
.end method
