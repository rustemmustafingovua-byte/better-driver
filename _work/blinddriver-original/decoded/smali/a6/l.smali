.class public final La6/l;
.super Ls5/k;
.source "SourceFile"


# instance fields
.field public n:Ls5/k;

.field public final o:[Ls5/k;

.field public p:I

.field public q:Z


# direct methods
.method public constructor <init>([Ls5/k;)V
    .locals 2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-direct {p0}, Ls5/k;-><init>()V

    iput-object v1, p0, La6/l;->n:Ls5/k;

    iput-boolean v0, p0, La6/l;->q:Z

    iput-object p1, p0, La6/l;->o:[Ls5/k;

    const/4 p1, 0x1

    iput p1, p0, La6/l;->p:I

    return-void
.end method

.method public static F0(Lu6/x;Ls5/k;)La6/l;
    .locals 3

    instance-of v0, p1, La6/l;

    if-nez v0, :cond_0

    new-instance v0, La6/l;

    const/4 v1, 0x2

    new-array v1, v1, [Ls5/k;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    invoke-direct {v0, v1}, La6/l;-><init>([Ls5/k;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of p0, p1, La6/l;

    if-eqz p0, :cond_1

    check-cast p1, La6/l;

    invoke-virtual {p1, v0}, La6/l;->E0(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p0, La6/l;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Ls5/k;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ls5/k;

    invoke-direct {p0, p1}, La6/l;-><init>([Ls5/k;)V

    return-object p0
.end method


# virtual methods
.method public final A0(Ls5/a;Lu6/e;)I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0, p1, p2}, Ls5/k;->A0(Ls5/a;Lu6/e;)I

    move-result p0

    return p0
.end method

.method public final B0()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->B0()Z

    move-result p0

    return p0
.end method

.method public final C()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final C0()Ls5/k;
    .locals 3

    iget-object v0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {v0}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {v0}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, La6/l;->z0()Ls5/n;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v2, v1, Ls5/n;->p:Z

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, v1, Ls5/n;->q:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    :goto_1
    return-object p0
.end method

.method public final D0()Ls5/c;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    return-object p0
.end method

.method public final E0(Ljava/util/ArrayList;)V
    .locals 4

    iget v0, p0, La6/l;->p:I

    add-int/lit8 v0, v0, -0x1

    iget-object p0, p0, La6/l;->o:[Ls5/k;

    array-length v1, p0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p0, v0

    instance-of v3, v2, La6/l;

    if-eqz v3, :cond_0

    check-cast v2, La6/l;

    invoke-virtual {v2, p1}, La6/l;->E0(Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final J(Ls5/a;)[B
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0, p1}, Ls5/k;->J(Ls5/a;)[B

    move-result-object p0

    return-object p0
.end method

.method public final K()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->K()Z

    move-result p0

    return p0
.end method

.method public final P()B
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->P()B

    move-result p0

    return p0
.end method

.method public final R()Ls5/o;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->R()Ls5/o;

    move-result-object p0

    return-object p0
.end method

.method public final S()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->S()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final T()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final U()D
    .locals 2

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->U()D

    move-result-wide v0

    return-wide v0
.end method

.method public final V()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final W()F
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->W()F

    move-result p0

    return p0
.end method

.method public final X()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->X()I

    move-result p0

    return p0
.end method

.method public final Y()J
    .locals 2

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Z()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->Z()I

    move-result p0

    return p0
.end method

.method public final a0()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->a0()I

    move-result p0

    return p0
.end method

.method public final b0()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->c0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 3

    :goto_0
    iget-object v0, p0, La6/l;->n:Ls5/k;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    iget v0, p0, La6/l;->p:I

    iget-object v1, p0, La6/l;->o:[Ls5/k;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La6/l;->p:I

    aget-object v0, v1, v0

    iput-object v0, p0, La6/l;->n:Ls5/k;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0, p1}, Ls5/k;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final d0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->d0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->e()Z

    move-result p0

    return p0
.end method

.method public final e0()Ls5/m;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->e0()Ls5/m;

    move-result-object p0

    return-object p0
.end method

.method public final f0()La6/k;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->f0()La6/k;

    move-result-object p0

    return-object p0
.end method

.method public final g0()S
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->g0()S

    move-result p0

    return p0
.end method

.method public final h0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i0()[C
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->i0()[C

    move-result-object p0

    return-object p0
.end method

.method public final j0()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->j0()I

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->k()Z

    move-result p0

    return p0
.end method

.method public final k0()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->k0()I

    move-result p0

    return p0
.end method

.method public final l0()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->l0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->m()V

    return-void
.end method

.method public final m0()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->m0()I

    move-result p0

    return p0
.end method

.method public final n()Ls5/h;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->n()Ls5/h;

    move-result-object p0

    return-object p0
.end method

.method public final n0()J
    .locals 2

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->n0()J

    move-result-wide v0

    return-wide v0
.end method

.method public final o0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final p0()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->p0()Z

    move-result p0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q0(Ls5/n;)Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0, p1}, Ls5/k;->q0(Ls5/n;)Z

    move-result p0

    return p0
.end method

.method public final r0(I)Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0, p1}, Ls5/k;->r0(I)Z

    move-result p0

    return p0
.end method

.method public final t()Ls5/n;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final t0()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->t0()Z

    move-result p0

    return p0
.end method

.method public final u0()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->u0()Z

    move-result p0

    return p0
.end method

.method public final v0()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->v0()Z

    move-result p0

    return p0
.end method

.method public final w()I
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->w()I

    move-result p0

    return p0
.end method

.method public final w0()Z
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->w0()Z

    move-result p0

    return p0
.end method

.method public final y()Ls5/h;
    .locals 0

    iget-object p0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {p0}, Ls5/k;->y()Ls5/h;

    move-result-object p0

    return-object p0
.end method

.method public final z0()Ls5/n;
    .locals 3

    iget-object v0, p0, La6/l;->n:Ls5/k;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, La6/l;->q:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, La6/l;->q:Z

    invoke-virtual {v0}, Ls5/k;->t()Ls5/n;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    if-nez v0, :cond_4

    :cond_2
    iget v0, p0, La6/l;->p:I

    iget-object v1, p0, La6/l;->o:[Ls5/k;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, La6/l;->p:I

    aget-object v0, v1, v0

    iput-object v0, p0, La6/l;->n:Ls5/k;

    invoke-virtual {v0}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0

    :cond_4
    return-object v0
.end method
