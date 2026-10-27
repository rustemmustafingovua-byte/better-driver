.class public final Lf7/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le7/g;
.implements Le7/h;


# instance fields
.field public final c:Ljava/util/LinkedList;

.field public final d:Le7/c;

.field public final e:Lf7/b;

.field public final f:Lg5/c;

.field public final g:Ljava/util/HashSet;

.field public final h:Ljava/util/HashMap;

.field public final i:I

.field public final j:Lf7/z;

.field public k:Z

.field public final l:Ljava/util/ArrayList;

.field public m:Ld7/a;

.field public n:I

.field public final synthetic o:Lf7/d;


# direct methods
.method public constructor <init>(Lf7/d;Le7/f;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf7/o;->o:Lf7/d;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lf7/o;->c:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lf7/o;->g:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lf7/o;->h:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lf7/o;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lf7/o;->m:Ld7/a;

    const/4 v1, 0x0

    iput v1, p0, Lf7/o;->n:I

    iget-object v1, p1, Lf7/d;->m:Ln7/f;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {p2}, Le7/f;->a()Lg5/m;

    move-result-object v1

    new-instance v5, Lg7/c;

    iget-object v2, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lk/f;

    iget-object v3, v1, Lg5/m;->n:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v1, v1, Lg5/m;->o:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v2, v3, v1}, Lg7/c;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Le7/f;->c:Lk0/l;

    iget-object v1, v1, Lk0/l;->m:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lwa/h;

    invoke-static {v2}, Lg7/s;->c(Ljava/lang/Object;)V

    iget-object v6, p2, Le7/f;->d:Le7/b;

    iget-object v3, p2, Le7/f;->a:Landroid/content/Context;

    move-object v8, p0

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Lwa/h;->g(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Le7/g;Le7/h;)Le7/c;

    move-result-object p0

    iget-object v1, p2, Le7/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    instance-of v2, p0, Lcom/google/android/gms/common/internal/a;

    if-eqz v2, :cond_0

    move-object v2, p0

    check-cast v2, Lcom/google/android/gms/common/internal/a;

    iput-object v1, v2, Lcom/google/android/gms/common/internal/a;->r:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_2

    instance-of v1, p0, Lf7/i;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lr0/i;->p(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_0
    iput-object p0, v7, Lf7/o;->d:Le7/c;

    iget-object v1, p2, Le7/f;->e:Lf7/b;

    iput-object v1, v7, Lf7/o;->e:Lf7/b;

    new-instance v1, Lg5/c;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lg5/c;-><init>(I)V

    iput-object v1, v7, Lf7/o;->f:Lg5/c;

    iget v1, p2, Le7/f;->f:I

    iput v1, v7, Lf7/o;->i:I

    invoke-interface {p0}, Le7/c;->m()Z

    move-result p0

    if-eqz p0, :cond_3

    iget-object p0, p1, Lf7/d;->e:Landroid/content/Context;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    new-instance v0, Lf7/z;

    invoke-virtual {p2}, Le7/f;->a()Lg5/m;

    move-result-object p2

    new-instance v1, Lg7/c;

    iget-object v2, p2, Lg5/m;->m:Ljava/lang/Object;

    check-cast v2, Lk/f;

    iget-object v3, p2, Lg5/m;->n:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object p2, p2, Lg5/m;->o:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2}, Lg7/c;-><init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1, v1}, Lf7/z;-><init>(Landroid/content/Context;Ln7/f;Lg7/c;)V

    iput-object v0, v7, Lf7/o;->j:Lf7/z;

    return-void

    :cond_3
    iput-object v0, v7, Lf7/o;->j:Lf7/z;

    return-void
.end method


# virtual methods
.method public final a(Ld7/a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final b(Ld7/a;)V
    .locals 3

    iget-object v0, p0, Lf7/o;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Ld7/a;->p:Ld7/a;

    invoke-static {p1, v0}, Lg7/s;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lf7/o;->d:Le7/c;

    invoke-interface {p0}, Le7/c;->e()V

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    return-void
.end method

.method public final c(I)V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lf7/o;->o:Lf7/d;

    iget-object v1, v1, Lf7/d;->m:Ln7/f;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lf7/o;->i(I)V

    return-void

    :cond_0
    new-instance v0, Lf7/n;

    invoke-direct {v0, p0, p1}, Lf7/n;-><init>(Lf7/o;I)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final d()V
    .locals 3

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lf7/o;->o:Lf7/d;

    iget-object v1, v1, Lf7/d;->m:Ln7/f;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lf7/o;->h()V

    return-void

    :cond_0
    new-instance v0, Ldd/j0;

    const/4 v2, 0x2

    invoke-direct {v0, v2, p0}, Ldd/j0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lf7/o;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V
    .locals 3

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    if-eq v2, v0, :cond_6

    iget-object p0, p0, Lf7/o;->c:Ljava/util/LinkedList;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf7/t;

    if-eqz p3, :cond_3

    iget v1, v0, Lf7/t;->a:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v0, p1}, Lf7/t;->c(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0, p2}, Lf7/t;->d(Ljava/lang/Exception;)V

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Status XOR exception should be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final g()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lf7/o;->c:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf7/t;

    iget-object v5, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v5}, Le7/c;->i()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lf7/o;->k(Lf7/t;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lf7/o;->d:Le7/c;

    iget-object v1, p0, Lf7/o;->o:Lf7/d;

    iget-object v2, v1, Lf7/d;->m:Ln7/f;

    invoke-static {v2}, Lg7/s;->a(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lf7/o;->m:Ld7/a;

    sget-object v2, Ld7/a;->p:Ld7/a;

    invoke-virtual {p0, v2}, Lf7/o;->b(Ld7/a;)V

    iget-object v1, v1, Lf7/d;->m:Ln7/f;

    iget-boolean v2, p0, Lf7/o;->k:Z

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    iget-object v3, p0, Lf7/o;->e:Lf7/b;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lf7/o;->k:Z

    :cond_0
    iget-object v1, p0, Lf7/o;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lf7/x;

    iget-object v2, v2, Lf7/x;->a:Ld1/c0;

    :try_start_0
    new-instance v3, Lu7/d;

    invoke-direct {v3}, Lu7/d;-><init>()V

    iget-object v2, v2, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v2, Lf6/v;

    iget-object v2, v2, Lf6/v;->b:Ljava/lang/Object;

    check-cast v2, Lmb/q;

    invoke-virtual {v2, v0, v3}, Lmb/q;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_1
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lf7/o;->c(I)V

    const-string v1, "DeadObjectException thrown while calling register listener method."

    invoke-interface {v0, v1}, Le7/c;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lf7/o;->g()V

    invoke-virtual {p0}, Lf7/o;->j()V

    return-void
.end method

.method public final i(I)V
    .locals 8

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v1, v0, Lf7/d;->m:Ln7/f;

    iget-object v2, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v2}, Lg7/s;->a(Landroid/os/Handler;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lf7/o;->m:Ld7/a;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lf7/o;->k:Z

    iget-object v4, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v4}, Le7/c;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lf7/o;->f:Lg5/c;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The connection to Google Play services was lost"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v3, :cond_0

    const-string p1, " due to service disconnection."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 v7, 0x3

    if-ne p1, v7, :cond_1

    const-string p1, " due to dead object exception."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    const-string p1, " Last reason for disconnect: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v4, Lcom/google/android/gms/common/api/Status;

    const/16 v6, 0x14

    invoke-direct {v4, v6, p1, v2, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;Ld7/a;)V

    invoke-virtual {v5, v3, v4}, Lg5/c;->m(ZLcom/google/android/gms/common/api/Status;)V

    const/16 p1, 0x9

    iget-object v2, p0, Lf7/o;->e:Lf7/b;

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/16 p1, 0xb

    invoke-static {v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, v0, Lf7/d;->g:Lg5/c;

    iget-object p1, p1, Lg5/c;->m:Ljava/lang/Object;

    check-cast p1, Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    iget-object p0, p0, Lf7/o;->h:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf7/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v1, v0, Lf7/d;->m:Ln7/f;

    const/16 v2, 0xc

    iget-object p0, p0, Lf7/o;->e:Lf7/b;

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    iget-wide v2, v0, Lf7/d;->a:J

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final k(Lf7/t;)Z
    .locals 13

    const-string v0, "DeadObjectException thrown while running ApiCallRunner."

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, Lf7/o;->f:Lg5/c;

    iget-object v3, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v3}, Le7/c;->m()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lf7/t;->f(Lg5/c;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lf7/t;->e(Lf7/o;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    invoke-virtual {p0, v1}, Lf7/o;->c(I)V

    invoke-interface {v3, v0}, Le7/c;->c(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1, p0}, Lf7/t;->b(Lf7/o;)[Ld7/c;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    array-length v5, v2

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v5}, Le7/c;->k()[Ld7/c;

    move-result-object v5

    if-nez v5, :cond_2

    new-array v5, v3, [Ld7/c;

    :cond_2
    new-instance v6, Lk/e;

    array-length v7, v5

    invoke-direct {v6, v7}, Lk/v0;-><init>(I)V

    move v7, v3

    :goto_0
    array-length v8, v5

    if-ge v7, v8, :cond_3

    aget-object v8, v5, v7

    iget-object v9, v8, Ld7/c;->l:Ljava/lang/String;

    invoke-virtual {v8}, Ld7/c;->a()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v9, v8}, Lk/v0;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    array-length v5, v2

    move v7, v3

    :goto_1
    if-ge v7, v5, :cond_5

    aget-object v8, v2, v7

    iget-object v9, v8, Ld7/c;->l:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lk/v0;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    if-eqz v9, :cond_6

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8}, Ld7/c;->a()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4

    goto :goto_3

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object v8, v4

    :cond_6
    :goto_3
    if-nez v8, :cond_7

    iget-object v2, p0, Lf7/o;->f:Lg5/c;

    iget-object v3, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v3}, Le7/c;->m()Z

    move-result v4

    invoke-virtual {p1, v2, v4}, Lf7/t;->f(Lg5/c;Z)V

    :try_start_1
    invoke-virtual {p1, p0}, Lf7/t;->e(Lf7/o;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1

    return v1

    :catch_1
    invoke-virtual {p0, v1}, Lf7/o;->c(I)V

    invoke-interface {v3, v0}, Le7/c;->c(Ljava/lang/String;)V

    return v1

    :cond_7
    iget-object v0, p0, Lf7/o;->d:Le7/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, v8, Ld7/c;->l:Ljava/lang/String;

    invoke-virtual {v8}, Ld7/c;->a()J

    move-result-wide v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not execute call because it requires feature ("

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")."

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GoogleApiManager"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-boolean v0, v0, Lf7/d;->n:Z

    if-eqz v0, :cond_a

    invoke-virtual {p1, p0}, Lf7/t;->a(Lf7/o;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p1, p0, Lf7/o;->e:Lf7/b;

    new-instance v0, Lf7/p;

    invoke-direct {v0, p1, v8}, Lf7/p;-><init>(Lf7/b;Ld7/c;)V

    iget-object p1, p0, Lf7/o;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const-wide/16 v1, 0x1388

    const/16 v5, 0xf

    if-ltz p1, :cond_8

    iget-object v0, p0, Lf7/o;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf7/p;

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object p0, p0, Lf7/o;->o:Lf7/d;

    iget-object p0, p0, Lf7/d;->m:Ln7/f;

    invoke-static {p0, v5, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    :cond_8
    iget-object p1, p0, Lf7/o;->l:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    invoke-static {p1, v5, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p1, v5, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    const/16 v1, 0x10

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x1d4c0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Ld7/a;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v4}, Ld7/a;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, p1}, Lf7/o;->l(Ld7/a;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget p0, p0, Lf7/o;->i:I

    invoke-virtual {v0, p1, p0}, Lf7/d;->b(Ld7/a;I)Z

    :cond_9
    :goto_4
    return v3

    :cond_a
    new-instance p0, Le7/k;

    invoke-direct {p0, v8}, Le7/k;-><init>(Ld7/c;)V

    invoke-virtual {p1, p0}, Lf7/t;->d(Ljava/lang/Exception;)V

    return v1
.end method

.method public final l(Ld7/a;)Z
    .locals 0

    sget-object p0, Lf7/d;->q:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final m()V
    .locals 11

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v1, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v1}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-object v1, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v1}, Le7/c;->i()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-interface {v1}, Le7/c;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_6

    :cond_0
    const/16 v2, 0xa

    :try_start_0
    iget-object v3, v0, Lf7/d;->g:Lg5/c;

    iget-object v4, v0, Lf7/d;->e:Landroid/content/Context;

    iget-object v5, v3, Lg5/c;->m:Ljava/lang/Object;

    check-cast v5, Landroid/util/SparseIntArray;

    invoke-static {v4}, Lg7/s;->c(Ljava/lang/Object;)V

    invoke-interface {v1}, Le7/c;->j()I

    move-result v6

    iget-object v7, v3, Lg5/c;->m:Ljava/lang/Object;

    check-cast v7, Landroid/util/SparseIntArray;

    const/4 v8, -0x1

    invoke-virtual {v7, v6, v8}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    if-eq v7, v8, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    move v9, v7

    :goto_0
    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v5, v9}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v10

    if-le v10, v6, :cond_2

    invoke-virtual {v5, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    if-nez v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    move v7, v8

    :goto_1
    if-ne v7, v8, :cond_4

    iget-object v3, v3, Lg5/c;->n:Ljava/lang/Object;

    check-cast v3, Ld7/d;

    invoke-virtual {v3, v4, v6}, Ld7/e;->b(Landroid/content/Context;I)I

    move-result v3

    move v7, v3

    :cond_4
    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    :goto_2
    if-eqz v7, :cond_5

    new-instance v0, Ld7/a;

    const/4 v3, 0x0

    invoke-direct {v0, v7, v3}, Ld7/a;-><init>(ILandroid/app/PendingIntent;)V

    const-string v4, "GoogleApiManager"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ld7/a;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The service for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not available: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0, v3}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :cond_5
    new-instance v3, Lf7/q;

    iget-object v4, p0, Lf7/o;->e:Lf7/b;

    invoke-direct {v3, v0, v1, v4}, Lf7/q;-><init>(Lf7/d;Le7/c;Lf7/b;)V

    invoke-interface {v1}, Le7/c;->m()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v9, p0, Lf7/o;->j:Lf7/z;

    invoke-static {v9}, Lg7/s;->c(Ljava/lang/Object;)V

    iget-object v0, v9, Lf7/z;->e:Landroid/os/Handler;

    iget-object v7, v9, Lf7/z;->h:Lg7/c;

    iget-object v4, v9, Lf7/z;->i:Lt7/a;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Le7/c;->g()V

    :cond_6
    invoke-static {v9}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v7, Lg7/c;->g:Ljava/lang/Object;

    iget-object v4, v9, Lf7/z;->f:Li7/b;

    iget-object v5, v9, Lf7/z;->d:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    iget-object v8, v7, Lg7/c;->f:Ljava/lang/Object;

    check-cast v8, Ls7/a;

    move-object v10, v9

    invoke-virtual/range {v4 .. v10}, Li7/b;->g(Landroid/content/Context;Landroid/os/Looper;Lg7/c;Ljava/lang/Object;Le7/g;Le7/h;)Le7/c;

    move-result-object v4

    check-cast v4, Lt7/a;

    iput-object v4, v9, Lf7/z;->i:Lt7/a;

    iput-object v3, v9, Lf7/z;->j:Lf7/q;

    iget-object v4, v9, Lf7/z;->g:Ljava/util/Set;

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v0, v9, Lf7/z;->i:Lt7/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lg7/h;

    invoke-direct {v4, v0}, Lg7/h;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/google/android/gms/common/internal/a;->a(Lg7/b;)V

    goto :goto_4

    :cond_8
    :goto_3
    new-instance v4, Ldd/j0;

    const/4 v5, 0x4

    invoke-direct {v4, v5, v9}, Ldd/j0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    :goto_4
    :try_start_1
    invoke-interface {v1, v3}, Le7/c;->a(Lg7/b;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    new-instance v1, Ld7/a;

    invoke-direct {v1, v2}, Ld7/a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    return-void

    :goto_5
    new-instance v1, Ld7/a;

    invoke-direct {v1, v2}, Ld7/a;-><init>(I)V

    invoke-virtual {p0, v1, v0}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    :cond_a
    :goto_6
    return-void
.end method

.method public final n(Lf7/t;)V
    .locals 2

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v0}, Le7/c;->i()Z

    move-result v0

    iget-object v1, p0, Lf7/o;->c:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lf7/o;->k(Lf7/t;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lf7/o;->j()V

    return-void

    :cond_0
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lf7/o;->m:Ld7/a;

    if-eqz p1, :cond_2

    iget v0, p1, Ld7/a;->m:I

    if-eqz v0, :cond_2

    iget-object v0, p1, Ld7/a;->n:Landroid/app/PendingIntent;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lf7/o;->m()V

    return-void
.end method

.method public final o(Ld7/a;Ljava/lang/RuntimeException;)V
    .locals 6

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lf7/o;->j:Lf7/z;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lf7/z;->i:Lt7/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le7/c;->g()V

    :cond_0
    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lf7/o;->m:Ld7/a;

    iget-object v1, p0, Lf7/o;->o:Lf7/d;

    iget-object v1, v1, Lf7/d;->g:Lg5/c;

    iget-object v1, v1, Lg5/c;->m:Ljava/lang/Object;

    check-cast v1, Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p0, p1}, Lf7/o;->b(Ld7/a;)V

    iget-object v1, p0, Lf7/o;->d:Le7/c;

    instance-of v1, v1, Li7/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget v1, p1, Ld7/a;->m:I

    const/16 v3, 0x18

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lf7/o;->o:Lf7/d;

    iput-boolean v2, v1, Lf7/d;->b:Z

    iget-object v1, v1, Lf7/d;->m:Ln7/f;

    const/16 v3, 0x13

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget v1, p1, Ld7/a;->m:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    sget-object p1, Lf7/d;->p:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void

    :cond_2
    iget-object v1, p0, Lf7/o;->c:Ljava/util/LinkedList;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iput-object p1, p0, Lf7/o;->m:Ld7/a;

    return-void

    :cond_3
    if-eqz p2, :cond_4

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    invoke-static {p1}, Lg7/s;->a(Landroid/os/Handler;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p2, p1}, Lf7/o;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    return-void

    :cond_4
    iget-object p2, p0, Lf7/o;->o:Lf7/d;

    iget-boolean p2, p2, Lf7/d;->n:Z

    if-eqz p2, :cond_9

    iget-object p2, p0, Lf7/o;->e:Lf7/b;

    invoke-static {p2, p1}, Lf7/d;->c(Lf7/b;Ld7/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p2

    invoke-virtual {p0, p2, v0, v2}, Lf7/o;->f(Lcom/google/android/gms/common/api/Status;Ljava/lang/Exception;Z)V

    iget-object p2, p0, Lf7/o;->c:Ljava/util/LinkedList;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lf7/o;->l(Ld7/a;)Z

    move-result p2

    if-nez p2, :cond_8

    iget-object p2, p0, Lf7/o;->o:Lf7/d;

    iget v0, p0, Lf7/o;->i:I

    invoke-virtual {p2, p1, v0}, Lf7/d;->b(Ld7/a;I)Z

    move-result p2

    if-nez p2, :cond_8

    iget p2, p1, Ld7/a;->m:I

    const/16 v0, 0x12

    if-ne p2, v0, :cond_6

    iput-boolean v2, p0, Lf7/o;->k:Z

    :cond_6
    iget-boolean p2, p0, Lf7/o;->k:Z

    if-eqz p2, :cond_7

    iget-object p1, p0, Lf7/o;->o:Lf7/d;

    iget-object p0, p0, Lf7/o;->e:Lf7/b;

    iget-object p1, p1, Lf7/d;->m:Ln7/f;

    const/16 p2, 0x9

    invoke-static {p1, p2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_7
    iget-object p2, p0, Lf7/o;->e:Lf7/b;

    invoke-static {p2, p1}, Lf7/d;->c(Lf7/b;Ld7/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    :cond_8
    :goto_0
    return-void

    :cond_9
    iget-object p2, p0, Lf7/o;->e:Lf7/b;

    invoke-static {p2, p1}, Lf7/d;->c(Lf7/b;Ld7/a;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-virtual {p0, p1}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final p(Ld7/a;)V
    .locals 5

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    iget-object v0, p0, Lf7/o;->d:Le7/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onSignInFailed for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le7/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lf7/o;->o(Ld7/a;Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final q()V
    .locals 6

    iget-object v0, p0, Lf7/o;->o:Lf7/d;

    iget-object v0, v0, Lf7/d;->m:Ln7/f;

    invoke-static {v0}, Lg7/s;->a(Landroid/os/Handler;)V

    sget-object v0, Lf7/d;->o:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lf7/o;->e(Lcom/google/android/gms/common/api/Status;)V

    iget-object v1, p0, Lf7/o;->f:Lg5/c;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lg5/c;->m(ZLcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lf7/o;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    new-array v1, v2, [Lf7/g;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lf7/g;

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    new-instance v4, Lf7/a0;

    new-instance v5, Lu7/d;

    invoke-direct {v5}, Lu7/d;-><init>()V

    invoke-direct {v4, v3, v5}, Lf7/a0;-><init>(Lf7/g;Lu7/d;)V

    invoke-virtual {p0, v4}, Lf7/o;->n(Lf7/t;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ld7/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ld7/a;-><init>(I)V

    invoke-virtual {p0, v0}, Lf7/o;->b(Ld7/a;)V

    iget-object v0, p0, Lf7/o;->d:Le7/c;

    invoke-interface {v0}, Le7/c;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lb0/l1;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lb0/l1;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0, v1}, Le7/c;->h(Lb0/l1;)V

    :cond_1
    return-void
.end method
