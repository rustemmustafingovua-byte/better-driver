.class public final Lp6/y;
.super Lt5/c;
.source "SourceFile"


# instance fields
.field public final A:Ls5/o;

.field public B:Lp6/s;

.field public C:Z


# direct methods
.method public constructor <init>(Lb6/q;Ls5/o;)V
    .locals 2

    sget-object v0, Ls5/c;->m:Ls5/c;

    invoke-direct {p0, v0}, Lt5/c;-><init>(Ls5/c;)V

    iput-object p2, p0, Lp6/y;->A:Ls5/o;

    new-instance p2, Lp6/r;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lp6/s;-><init>(ILp6/s;)V

    iput-boolean v0, p2, Lp6/r;->h:Z

    iput-object p1, p2, Lp6/r;->g:Lb6/q;

    iput-object p2, p0, Lp6/y;->B:Lp6/s;

    return-void
.end method


# virtual methods
.method public final A0(Ls5/a;Lu6/e;)I
    .locals 1

    invoke-virtual {p0, p1}, Lp6/y;->J(Ls5/a;)[B

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    invoke-virtual {p2, p0, p1, v0}, Lu6/e;->write([BII)V

    array-length p0, p0

    return p0

    :cond_0
    return p1
.end method

.method public final C()Ljava/math/BigInteger;
    .locals 0

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->r()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final C0()Ls5/k;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    iget-object v0, v0, Lp6/s;->d:Lp6/s;

    iput-object v0, p0, Lp6/y;->B:Lp6/s;

    sget-object v0, Ls5/n;->v:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    return-object p0

    :cond_0
    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    iget-object v0, v0, Lp6/s;->d:Lp6/s;

    iput-object v0, p0, Lp6/y;->B:Lp6/s;

    sget-object v0, Ls5/n;->x:Ls5/n;

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    :cond_1
    return-object p0
.end method

.method public final G0()V
    .locals 0

    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Ls5/a;)[B
    .locals 1

    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object p0

    if-eqz p0, :cond_1

    instance-of v0, p0, Lp6/x;

    if-eqz v0, :cond_0

    check-cast p0, Lp6/x;

    invoke-virtual {p0, p1}, Lp6/x;->H(Ls5/a;)[B

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb6/q;->s()[B

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final R()Ls5/o;
    .locals 0

    iget-object p0, p0, Lp6/y;->A:Ls5/o;

    return-object p0
.end method

.method public final T()Ljava/math/BigDecimal;
    .locals 0

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->u()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final U()D
    .locals 2

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->v()D

    move-result-wide v0

    return-wide v0
.end method

.method public final V()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lp6/y;->C:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lb6/q;->A()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    check-cast p0, Lp6/w;

    iget-object p0, p0, Lp6/w;->l:Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lb6/q;->A()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    check-cast p0, Lp6/d;

    iget-object p0, p0, Lp6/d;->l:[B

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final W()F
    .locals 2

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->v()D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public final W0()Lb6/q;
    .locals 1

    iget-boolean v0, p0, Lp6/y;->C:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lp6/y;->B:Lp6/s;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lp6/s;->i()Lb6/q;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final X()I
    .locals 2

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object v0

    check-cast v0, Lp6/u;

    invoke-virtual {v0}, Lp6/u;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lp6/u;->I()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lt5/c;->T0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final X0()Lb6/q;
    .locals 3

    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb6/q;->A()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ls5/v;->c()Ls5/n;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current token ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ls5/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1
.end method

.method public final Y()J
    .locals 2

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object v0

    check-cast v0, Lp6/u;

    invoke-virtual {v0}, Lp6/u;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lp6/u;->K()J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lt5/c;->U0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final Z()I
    .locals 0

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object p0

    invoke-interface {p0}, Ls5/v;->b()I

    move-result p0

    return p0
.end method

.method public final a0()I
    .locals 2

    invoke-virtual {p0}, Lp6/y;->Z()I

    move-result p0

    const/4 v0, 0x6

    const/4 v1, 0x4

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    if-ne p0, v1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v0
.end method

.method public final b0()Ljava/lang/Number;
    .locals 0

    invoke-virtual {p0}, Lp6/y;->X0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->C()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lp6/y;->C:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lp6/y;->C:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lp6/y;->B:Lp6/s;

    iput-object v0, p0, Lt5/c;->o:Ls5/n;

    :cond_0
    return-void
.end method

.method public final e0()Ls5/m;
    .locals 0

    iget-object p0, p0, Lp6/y;->B:Lp6/s;

    return-object p0
.end method

.method public final f0()La6/k;
    .locals 0

    sget-object p0, Ls5/k;->m:La6/k;

    return-object p0
.end method

.method public final h0()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->C()Ljava/lang/Number;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->F()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lb6/q;->A()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    iget-object p0, p0, Ls5/n;->l:Ljava/lang/String;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lp6/y;->B:Lp6/s;

    iget-object p0, p0, Lp6/s;->e:Ljava/lang/String;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final i0()[C
    .locals 0

    invoke-virtual {p0}, Lp6/y;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public final j0()I
    .locals 0

    invoke-virtual {p0}, Lp6/y;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final k0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final n()Ls5/h;
    .locals 0

    sget-object p0, Ls5/h;->r:Ls5/h;

    return-object p0
.end method

.method public final p0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-eq p0, v1, :cond_0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne p0, v1, :cond_1

    :cond_0
    iget-object v0, v0, Lp6/s;->d:Lp6/s;

    :cond_1
    if-nez v0, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    iget-object p0, v0, Lp6/s;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final w0()Z
    .locals 1

    iget-boolean v0, p0, Lp6/y;->C:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lp6/y;->W0()Lb6/q;

    move-result-object p0

    instance-of v0, p0, Lp6/u;

    if-eqz v0, :cond_0

    check-cast p0, Lp6/u;

    invoke-virtual {p0}, Lp6/u;->J()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final y()Ls5/h;
    .locals 0

    sget-object p0, Ls5/h;->r:Ls5/h;

    return-object p0
.end method

.method public final z0()Ls5/n;
    .locals 6

    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    invoke-virtual {v0}, Lp6/s;->j()Ls5/n;

    move-result-object v0

    iput-object v0, p0, Lt5/c;->o:Ls5/n;

    iget-boolean v1, p0, Lt5/c;->q:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lt5/c;->p:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lt5/c;->p:J

    iget-object v3, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, -0x1

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "getMaxTokenCount"

    invoke-static {v1}, Ls5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "Token count (%d) exceeds the maximum allowed (%d, from %s)"

    invoke-static {v0, p0}, Ls5/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2

    :cond_1
    :goto_0
    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lp6/y;->C:Z

    return-object v2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    invoke-virtual {v0}, Lp6/s;->k()Lp6/p;

    move-result-object v0

    iput-object v0, p0, Lp6/y;->B:Lp6/s;

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    iget-object v0, v0, Lp6/s;->d:Lp6/s;

    iput-object v0, p0, Lp6/y;->B:Lp6/s;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lp6/y;->B:Lp6/s;

    invoke-virtual {v0}, Lp6/s;->l()Lp6/q;

    move-result-object v0

    iput-object v0, p0, Lp6/y;->B:Lp6/s;

    :goto_1
    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    return-object p0
.end method
