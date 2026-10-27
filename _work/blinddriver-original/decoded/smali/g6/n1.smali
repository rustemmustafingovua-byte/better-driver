.class public final Lg6/n1;
.super Le6/c0;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public A:Lj6/n;

.field public B:Lj6/n;

.field public C:Lj6/n;

.field public final l:Ljava/lang/String;

.field public final m:Ljava/lang/Class;

.field public n:Lj6/n;

.field public o:Lj6/n;

.field public p:[Le6/y;

.field public q:Lb6/l;

.field public r:Lj6/n;

.field public s:[Le6/y;

.field public t:Lb6/l;

.field public u:Lj6/n;

.field public v:[Le6/y;

.field public w:Lj6/n;

.field public x:Lj6/n;

.field public y:Lj6/n;

.field public z:Lj6/n;


# direct methods
.method public constructor <init>(Lb6/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const-string v0, "UNKNOWN TYPE"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lb6/l;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lg6/n1;->l:Ljava/lang/String;

    if-nez p1, :cond_1

    const-class p1, Ljava/lang/Object;

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    :goto_1
    iput-object p1, p0, Lg6/n1;->m:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final A()Lb6/l;
    .locals 0

    iget-object p0, p0, Lg6/n1;->t:Lb6/l;

    return-object p0
.end method

.method public final B()Lj6/n;
    .locals 0

    iget-object p0, p0, Lg6/n1;->n:Lj6/n;

    return-object p0
.end method

.method public final C()Lj6/n;
    .locals 0

    iget-object p0, p0, Lg6/n1;->r:Lj6/n;

    return-object p0
.end method

.method public final D()Lb6/l;
    .locals 0

    iget-object p0, p0, Lg6/n1;->q:Lb6/l;

    return-object p0
.end method

.method public final E(Lb6/h;)[Le6/y;
    .locals 0

    iget-object p0, p0, Lg6/n1;->p:[Le6/y;

    return-object p0
.end method

.method public final F()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lg6/n1;->m:Ljava/lang/Class;

    return-object p0
.end method

.method public final G(Lj6/n;[Le6/y;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    :try_start_0
    invoke-virtual {p1, p4}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    array-length v0, p2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    if-nez v3, :cond_1

    aput-object p4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Le6/y;->p()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Lb6/i;->U(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1

    :cond_2
    invoke-virtual {p1, v1}, Lj6/n;->r([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_1
    invoke-virtual {p0, p3, p1}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    throw p0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No delegate constructor for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lg6/n1;->l:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final H(Lb6/i;Ljava/lang/Exception;)Lb6/p;
    .locals 1

    instance-of v0, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p2, v0

    :cond_0
    instance-of v0, p2, Lb6/p;

    if-eqz v0, :cond_1

    check-cast p2, Lb6/p;

    return-object p2

    :cond_1
    iget-object p0, p0, Lg6/n1;->m:Ljava/lang/Class;

    invoke-virtual {p1, p0, p2}, Lb6/i;->m0(Ljava/lang/Class;Ljava/lang/Throwable;)Lh6/b;

    move-result-object p0

    return-object p0
.end method

.method public final a()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->B:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->z:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->C:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->A:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->x:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->y:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final h()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->o:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final i()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->w:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->t:Lb6/l;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->n:Lj6/n;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final l()Z
    .locals 0

    iget-object p0, p0, Lg6/n1;->q:Lb6/l;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final m()Z
    .locals 1

    invoke-virtual {p0}, Lg6/n1;->k()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->l()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->j()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->h()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->i()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->e()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->f()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->d()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg6/n1;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final n(Lb6/i;Ljava/math/BigDecimal;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg6/n1;->B:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg6/n1;->B:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    :try_start_1
    iget-object p2, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {p2, v0}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-super {p0, p1, p2}, Le6/c0;->n(Lb6/i;Ljava/math/BigDecimal;)Ljava/lang/Object;

    throw v1
.end method

.method public final o(Lb6/i;Ljava/math/BigInteger;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->z:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg6/n1;->z:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-super {p0, p1, p2}, Le6/c0;->o(Lb6/i;Ljava/math/BigInteger;)Ljava/lang/Object;

    throw v1
.end method

.method public final p(Lb6/i;Z)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->C:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lg6/n1;->C:Lj6/n;

    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg6/n1;->C:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-super {p0, p1, p2}, Le6/c0;->p(Lb6/i;Z)Ljava/lang/Object;

    throw v1
.end method

.method public final q(Lb6/i;D)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :try_start_0
    iget-object p3, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {p3, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object p3, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {p3}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lg6/n1;->B:Lj6/n;

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p2

    :try_start_1
    iget-object p3, p0, Lg6/n1;->B:Lj6/n;

    invoke-virtual {p3, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    iget-object p3, p0, Lg6/n1;->B:Lj6/n;

    invoke-virtual {p3}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Le6/c0;->q(Lb6/i;D)Ljava/lang/Object;

    throw v1
.end method

.method public final r(Lb6/i;I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lg6/n1;->x:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :try_start_0
    iget-object v0, p0, Lg6/n1;->x:Lj6/n;

    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg6/n1;->x:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lg6/n1;->y:Lj6/n;

    if-eqz v0, :cond_1

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :try_start_1
    iget-object v0, p0, Lg6/n1;->y:Lj6/n;

    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    iget-object v0, p0, Lg6/n1;->y:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lg6/n1;->z:Lj6/n;

    if-eqz v0, :cond_2

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    :try_start_2
    iget-object v0, p0, Lg6/n1;->z:Lj6/n;

    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p2

    iget-object v0, p0, Lg6/n1;->z:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    if-eqz v0, :cond_3

    int-to-double v2, p2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :try_start_3
    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    move-exception p2

    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-super {p0, p1, p2}, Le6/c0;->r(Lb6/i;I)Ljava/lang/Object;

    throw v1
.end method

.method public final s(Lb6/i;J)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->y:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :try_start_0
    iget-object p3, p0, Lg6/n1;->y:Lj6/n;

    invoke-virtual {p3, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object p3, p0, Lg6/n1;->y:Lj6/n;

    invoke-virtual {p3}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lg6/n1;->z:Lj6/n;

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    :try_start_1
    iget-object p3, p0, Lg6/n1;->z:Lj6/n;

    invoke-virtual {p3, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    iget-object p3, p0, Lg6/n1;->z:Lj6/n;

    invoke-virtual {p3}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lg6/n1;->A:Lj6/n;

    if-eqz v0, :cond_2

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    :try_start_2
    iget-object p3, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {p3, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    move-exception p2

    iget-object p3, p0, Lg6/n1;->A:Lj6/n;

    invoke-virtual {p3}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, p3, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Le6/c0;->s(Lb6/i;J)Ljava/lang/Object;

    throw v1
.end method

.method public final t(Lb6/i;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->o:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lj6/n;->r([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg6/n1;->m:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-super {p0, p1, p2}, Le6/c0;->t(Lb6/i;[Ljava/lang/Object;)Ljava/lang/Object;

    throw v1
.end method

.method public final u(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->w:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p2}, Lj6/n;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lg6/n1;->w:Lj6/n;

    invoke-virtual {v0}, Lj6/h;->k()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-super {p0, p1, p2}, Le6/c0;->u(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final v(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->u:Lj6/n;

    if-nez v0, :cond_0

    iget-object v1, p0, Lg6/n1;->r:Lj6/n;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lg6/n1;->y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lg6/n1;->v:[Le6/y;

    invoke-virtual {p0, v0, v1, p1, p2}, Lg6/n1;->G(Lj6/n;[Le6/y;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final w(Lb6/i;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lg6/n1;->n:Lj6/n;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Lj6/n;->q()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    iget-object v2, p0, Lg6/n1;->m:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Lg6/n1;->H(Lb6/i;Ljava/lang/Exception;)Lb6/p;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lb6/i;->b0(Ljava/lang/Class;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-super {p0, p1}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    throw v1
.end method

.method public final x(Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg6/n1;->n:Lj6/n;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lg6/n1;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lg6/n1;->o:Lj6/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg6/n1;->p:[Le6/y;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lg6/n1;->t(Lb6/i;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-super {p0, p1}, Le6/c0;->x(Lb6/i;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final y(Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lg6/n1;->r:Lj6/n;

    if-nez v0, :cond_0

    iget-object v1, p0, Lg6/n1;->u:Lj6/n;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lg6/n1;->v:[Le6/y;

    invoke-virtual {p0, v1, v0, p1, p2}, Lg6/n1;->G(Lj6/n;[Le6/y;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lg6/n1;->s:[Le6/y;

    invoke-virtual {p0, v0, v1, p1, p2}, Lg6/n1;->G(Lj6/n;[Le6/y;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final z()Lj6/n;
    .locals 0

    iget-object p0, p0, Lg6/n1;->u:Lj6/n;

    return-object p0
.end method
