.class public abstract Ls5/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# instance fields
.field public l:Ls5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ls5/t;->values()[Ls5/t;

    move-result-object v0

    invoke-static {v0}, La6/k;->a([La6/j;)La6/k;

    move-result-object v0

    sget-object v1, Ls5/t;->n:Ls5/t;

    invoke-virtual {v0, v1}, La6/k;->b(La6/j;)La6/k;

    sget-object v1, Ls5/t;->m:Ls5/t;

    invoke-virtual {v0, v1}, La6/k;->b(La6/j;)La6/k;

    return-void
.end method

.method public static c(II)V
    .locals 2

    if-gt p1, p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "invalid argument(s) (offset=%d, length=%d) for input array of %d element"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract C(Ls5/a;Lbb/f;I)I
.end method

.method public abstract J(Ls5/a;[BII)V
.end method

.method public abstract K(Z)V
.end method

.method public abstract P()V
.end method

.method public abstract R()V
.end method

.method public abstract S(Ljava/lang/String;)V
.end method

.method public abstract T(Ls5/q;)V
.end method

.method public abstract U()V
.end method

.method public abstract V(D)V
.end method

.method public abstract W(F)V
.end method

.method public abstract X(I)V
.end method

.method public abstract Y(J)V
.end method

.method public abstract Z(Ljava/lang/String;)V
.end method

.method public abstract a0(Ljava/math/BigDecimal;)V
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ls5/e;

    invoke-direct {v0, p1, p0}, Ls5/e;-><init>(Ljava/lang/String;Ls5/g;)V

    throw v0
.end method

.method public abstract b0(Ljava/math/BigInteger;)V
.end method

.method public abstract c0(S)V
.end method

.method public abstract close()V
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0}, Ls5/g;->n()Ly5/f;

    move-result-object p0

    if-eqz p0, :cond_0

    iput-object p1, p0, Ly5/f;->h:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d0(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ls5/e;

    const-string v0, "No native support for writing Object Ids"

    invoke-direct {p1, v0, p0}, Ls5/e;-><init>(Ljava/lang/String;Ls5/g;)V

    throw p1
.end method

.method public e()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract e0(C)V
.end method

.method public abstract f0(I[C)V
.end method

.method public abstract flush()V
.end method

.method public abstract g0(Ljava/lang/String;)V
.end method

.method public abstract h0(Ls5/q;)V
.end method

.method public abstract i0(Ljava/lang/String;)V
.end method

.method public j0(Ls5/q;)V
    .locals 0

    check-cast p1, Lw5/k;

    iget-object p1, p1, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ls5/g;->i0(Ljava/lang/String;)V

    return-void
.end method

.method public k()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract k0()V
.end method

.method public abstract l0(Ljava/lang/Object;)V
.end method

.method public abstract m(Ls5/f;)Ls5/g;
.end method

.method public abstract m0(Ljava/lang/Object;)V
.end method

.method public abstract n()Ly5/f;
.end method

.method public abstract n0()V
.end method

.method public abstract o0(Ljava/lang/Object;)V
.end method

.method public abstract p0(Ljava/lang/Object;)V
.end method

.method public abstract q(Ls5/f;)Z
.end method

.method public abstract q0(Ljava/lang/String;)V
.end method

.method public abstract r0(Ls5/q;)V
.end method

.method public abstract s0([CII)V
.end method

.method public abstract t(II)Ls5/g;
.end method

.method public t0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void
.end method

.method public u0(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ls5/e;

    const-string v0, "No native support for writing Type Ids"

    invoke-direct {p1, v0, p0}, Ls5/e;-><init>(Ljava/lang/String;Ls5/g;)V

    throw p1
.end method

.method public final v0(Lcom/fasterxml/jackson/core/type/b;)V
    .locals 9

    iget-object v0, p1, Lcom/fasterxml/jackson/core/type/b;->f:Ls5/n;

    invoke-virtual {p0}, Ls5/g;->k()Z

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    iput-boolean v4, p1, Lcom/fasterxml/jackson/core/type/b;->g:Z

    iget-object v1, p1, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ls5/g;->u0(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget v6, p1, Lcom/fasterxml/jackson/core/type/b;->e:I

    sget-object v7, Ls5/n;->u:Ls5/n;

    const/4 v8, 0x4

    if-eq v0, v7, :cond_4

    if-eqz v6, :cond_3

    if-eq v6, v2, :cond_2

    if-ne v6, v8, :cond_4

    :cond_2
    iput v3, p1, Lcom/fasterxml/jackson/core/type/b;->e:I

    move v6, v3

    goto :goto_0

    :cond_3
    throw v5

    :cond_4
    :goto_0
    iput-boolean v3, p1, Lcom/fasterxml/jackson/core/type/b;->g:Z

    invoke-static {v6}, Landroidx/fragment/app/t1;->d(I)I

    move-result v5

    if-eq v5, v3, :cond_6

    const/4 v6, 0x2

    if-eq v5, v6, :cond_5

    if-eq v5, v2, :cond_7

    if-eq v5, v8, :cond_7

    invoke-virtual {p0}, Ls5/g;->k0()V

    invoke-virtual {p0, v1}, Ls5/g;->q0(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Ls5/g;->o0(Ljava/lang/Object;)V

    iget-object v4, p1, Lcom/fasterxml/jackson/core/type/b;->d:Ljava/lang/String;

    invoke-virtual {p0, v4, v1}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Ls5/g;->n0()V

    invoke-virtual {p0, v1}, Ls5/g;->S(Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_8

    goto :goto_2

    :cond_8
    iget-object p1, p1, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ls5/g;->l0(Ljava/lang/Object;)V

    return-void

    :cond_9
    if-nez v4, :cond_a

    iget-object p1, p1, Lcom/fasterxml/jackson/core/type/b;->a:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ls5/g;->o0(Ljava/lang/Object;)V

    :cond_a
    :goto_2
    return-void
.end method

.method public w(I)V
    .locals 0

    return-void
.end method

.method public final w0(Lcom/fasterxml/jackson/core/type/b;)V
    .locals 2

    iget-object v0, p1, Lcom/fasterxml/jackson/core/type/b;->f:Ls5/n;

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ls5/g;->R()V

    goto :goto_0

    :cond_0
    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ls5/g;->P()V

    :cond_1
    :goto_0
    iget-boolean v0, p1, Lcom/fasterxml/jackson/core/type/b;->g:Z

    if-eqz v0, :cond_5

    iget v0, p1, Lcom/fasterxml/jackson/core/type/b;->e:I

    invoke-static {v0}, Landroidx/fragment/app/t1;->d(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_2
    iget-object v0, p1, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_3

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object p1, p1, Lcom/fasterxml/jackson/core/type/b;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    invoke-virtual {p0}, Ls5/g;->P()V

    :cond_5
    return-void
.end method

.method public abstract writeObject(Ljava/lang/Object;)V
.end method

.method public y(Ls5/p;)V
    .locals 0

    iput-object p1, p0, Ls5/g;->l:Ls5/p;

    return-void
.end method
