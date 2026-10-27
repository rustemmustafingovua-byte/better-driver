.class public abstract Lg6/f;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;


# instance fields
.field public final o:Ljava/lang/Boolean;

.field public final p:Z

.field public final q:Z


# direct methods
.method public constructor <init>(Lg6/f;ZZ)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lg6/f1;)V

    .line 6
    iget-object p1, p1, Lg6/f;->o:Ljava/lang/Boolean;

    iput-object p1, p0, Lg6/f;->o:Ljava/lang/Boolean;

    .line 7
    iput-boolean p2, p0, Lg6/f;->p:Z

    .line 8
    iput-boolean p3, p0, Lg6/f;->q:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Lg6/f;->o:Ljava/lang/Boolean;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lg6/f;->p:Z

    .line 4
    iput-boolean p1, p0, Lg6/f;->q:Z

    return-void
.end method

.method public static e0(Lb6/i;Lp6/m;Ljava/math/BigDecimal;)Lp6/z;
    .locals 2

    iget-object p0, p0, Lb6/i;->q:Lb6/h;

    iget-object p0, p0, Ld6/n;->s:Ld6/i;

    sget-object v0, Ld6/l;->q:Ld6/l;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ld6/l;->c(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Ld6/i;->a(Ld6/g;)Z

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    :goto_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p2}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p2, :cond_2

    sget-object p0, Lp6/t;->l:Lp6/t;

    goto :goto_1

    :cond_2
    new-instance p0, Lp6/g;

    invoke-direct {p0, p2}, Lp6/g;-><init>(Ljava/math/BigDecimal;)V

    :goto_1
    return-object p0
.end method

.method public static f0(Ls5/k;Lb6/i;)Lb6/q;
    .locals 2

    iget-object p1, p1, Lb6/i;->q:Lb6/h;

    iget-object p1, p1, Lb6/h;->v:Lp6/m;

    invoke-virtual {p0}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/t;->l:Lp6/t;

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, [B

    if-ne v0, v1, :cond_2

    check-cast p0, [B

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length p1, p0

    if-nez p1, :cond_1

    sget-object p0, Lp6/d;->m:Lp6/d;

    return-object p0

    :cond_1
    new-instance p1, Lp6/d;

    invoke-direct {p1, p0}, Lp6/d;-><init>([B)V

    return-object p1

    :cond_2
    instance-of v0, p0, Lu6/u;

    if-eqz v0, :cond_3

    check-cast p0, Lu6/u;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp6/w;

    invoke-direct {p1, p0}, Lp6/w;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_3
    instance-of v0, p0, Lb6/q;

    if-eqz v0, :cond_4

    check-cast p0, Lb6/q;

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp6/w;

    invoke-direct {p1, p0}, Lp6/w;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static h0(Ls5/k;ILp6/m;)Lp6/z;
    .locals 2

    sget-object v0, Lp6/t;->l:Lp6/t;

    if-eqz p1, :cond_2

    sget-object v1, Lb6/j;->o:Lb6/j;

    iget v1, v1, Lb6/j;->m:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance p1, Lp6/c;

    invoke-direct {p1, p0}, Lp6/c;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp6/n;

    invoke-direct {p2, p0, p1}, Lp6/n;-><init>(J)V

    return-object p2

    :cond_2
    invoke-virtual {p0}, Ls5/k;->Z()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Ls5/k;->X()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lp6/m;->a(I)Lp6/j;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp6/n;

    invoke-direct {p2, p0, p1}, Lp6/n;-><init>(J)V

    return-object p2

    :cond_4
    invoke-virtual {p0}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Lp6/c;

    invoke-direct {p1, p0}, Lp6/c;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method public static i0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;
    .locals 2

    iget p1, p1, Lb6/i;->r:I

    sget v0, Lg6/f1;->n:I

    and-int/2addr v0, p1

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    sget-object v0, Lb6/j;->o:Lb6/j;

    iget v0, v0, Lb6/j;->m:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    sget-object v0, Lb6/j;->p:Lb6/j;

    iget v0, v0, Lb6/j;->m:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ls5/k;->Z()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls5/k;->Z()I

    move-result p1

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Ls5/k;->X()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lp6/m;->a(I)Lp6/j;

    move-result-object p0

    return-object p0

    :cond_3
    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp6/n;

    invoke-direct {p2, p0, p1}, Lp6/n;-><init>(J)V

    return-object p2

    :cond_4
    invoke-virtual {p0}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p0, :cond_5

    sget-object p0, Lp6/t;->l:Lp6/t;

    return-object p0

    :cond_5
    new-instance p1, Lp6/c;

    invoke-direct {p1, p0}, Lp6/c;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method public static j0(Lb6/i;Lp6/m;Ljava/lang/String;Lp6/v;Lb6/q;Lb6/q;)V
    .locals 1

    sget-object v0, Lb6/j;->v:Lb6/j;

    invoke-virtual {p0, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Ls5/r;->m:Ls5/r;

    invoke-virtual {p0, v0}, Lb6/i;->o0(Ls5/r;)Z

    move-result p0

    if-eqz p0, :cond_3

    instance-of p0, p4, Lp6/a;

    sget-object v0, Lp6/t;->l:Lp6/t;

    if-eqz p0, :cond_1

    move-object p0, p4

    check-cast p0, Lp6/a;

    if-nez p5, :cond_0

    iget-object p1, p0, Lp6/f;->l:Lp6/m;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p5, v0

    :cond_0
    invoke-virtual {p0, p5}, Lp6/a;->H(Lb6/q;)V

    invoke-virtual {p3, p2, p4}, Lp6/v;->M(Ljava/lang/String;Lb6/q;)Lb6/q;

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lp6/a;

    invoke-direct {p0, p1}, Lp6/a;-><init>(Lp6/m;)V

    invoke-virtual {p0, p4}, Lp6/a;->H(Lb6/q;)V

    if-nez p5, :cond_2

    move-object p5, v0

    :cond_2
    invoke-virtual {p0, p5}, Lp6/a;->H(Lb6/q;)V

    invoke-virtual {p3, p2, p0}, Lp6/v;->M(Ljava/lang/String;Lb6/q;)Lb6/q;

    :cond_3
    return-void

    :cond_4
    const-string p1, "Duplicate field \'%s\' for `ObjectNode`: not allowed when `DeserializationFeature.FAIL_ON_READING_DUP_TREE_KEY` enabled"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lb6/i;->w0(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public abstract Z(ZZ)Lb6/n;
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 0

    iget-object p1, p1, Lb6/i;->q:Lb6/h;

    iget-object p2, p1, Ld6/n;->r:La6/n;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Ld6/n;->r:La6/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean p1, p0, Lg6/f;->p:Z

    const/4 p2, 0x1

    if-ne p2, p1, :cond_1

    iget-boolean p1, p0, Lg6/f;->q:Z

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p2, p2}, Lg6/f;->Z(ZZ)Lb6/n;

    move-result-object p0

    return-object p0
.end method

.method public final a0(Ls5/k;Lb6/i;)Lb6/q;
    .locals 3

    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    iget-object v0, v0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    invoke-static {p1, p2}, Lg6/f;->f0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/t;->l:Lp6/t;

    return-object p0

    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/e;->n:Lp6/e;

    return-object p0

    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/e;->m:Lp6/e;

    return-object p0

    :pswitch_4
    invoke-virtual {p0, p1, p2, v0}, Lg6/f;->g0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {p1, p2, v0}, Lg6/f;->i0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lp6/m;->b(Ljava/lang/String;)Lp6/x;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lp6/v;

    invoke-direct {p0, v0}, Lp6/v;-><init>(Lp6/m;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V
    .locals 12

    move-object v1, p3

    move-object/from16 v6, p4

    iget v2, p2, Lb6/i;->r:I

    sget v3, Lg6/f1;->n:I

    and-int v7, v2, v3

    move-object/from16 v2, p5

    :cond_0
    instance-of v3, v2, Lp6/v;

    sget-object v8, Lp6/e;->m:Lp6/e;

    sget-object v9, Lp6/e;->n:Lp6/e;

    sget-object v10, Lp6/t;->l:Lp6/t;

    if-eqz v3, :cond_8

    move-object v3, v2

    check-cast v3, Lp6/v;

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v4

    move-object v11, v2

    move-object v2, v4

    :goto_0
    if-eqz v2, :cond_c

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v4, Ls5/n;->t:Ls5/n;

    :cond_1
    iget v4, v4, Ls5/n;->o:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    packed-switch v4, :pswitch_data_0

    invoke-virtual/range {p0 .. p2}, Lg6/f;->d0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object v4

    :goto_1
    move-object v5, v4

    goto :goto_2

    :pswitch_0
    sget-object v4, Ld6/l;->n:Ld6/l;

    iget-object v5, p2, Lb6/i;->q:Lb6/h;

    iget-object v5, v5, Ld6/n;->s:Ld6/i;

    invoke-virtual {v5, v4}, Ld6/i;->a(Ld6/g;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v10

    goto :goto_2

    :pswitch_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v9

    goto :goto_2

    :pswitch_2
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v5, v8

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p0 .. p3}, Lg6/f;->g0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;

    move-result-object v4

    goto :goto_1

    :pswitch_4
    invoke-static {p1, v7, p3}, Lg6/f;->h0(Ls5/k;ILp6/m;)Lp6/z;

    move-result-object v4

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lp6/m;->b(Ljava/lang/String;)Lp6/x;

    move-result-object v4

    goto :goto_1

    :goto_2
    invoke-virtual {v3, v2, v5}, Lp6/v;->M(Ljava/lang/String;Lb6/q;)Lb6/q;

    move-result-object v4

    if-eqz v4, :cond_7

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lg6/f;->j0(Lb6/i;Lp6/m;Ljava/lang/String;Lp6/v;Lb6/q;Lb6/q;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lp6/a;

    invoke-direct {v5, p3}, Lp6/a;-><init>(Lp6/m;)V

    invoke-virtual {v3, v2, v5}, Lp6/v;->M(Ljava/lang/String;Lb6/q;)Lb6/q;

    move-result-object v4

    if-eqz v4, :cond_4

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lg6/f;->j0(Lb6/i;Lp6/m;Ljava/lang/String;Lp6/v;Lb6/q;Lb6/q;)V

    :cond_4
    invoke-virtual {v6, v11}, Lad/s2;->H(Lp6/f;)V

    move-object v2, v5

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lp6/v;

    invoke-direct {v5, p3}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual {v3, v2, v5}, Lp6/v;->M(Ljava/lang/String;Lb6/q;)Lb6/q;

    move-result-object v4

    if-eqz v4, :cond_6

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lg6/f;->j0(Lb6/i;Lp6/m;Ljava/lang/String;Lp6/v;Lb6/q;Lb6/q;)V

    :cond_6
    invoke-virtual {v6, v11}, Lad/s2;->H(Lp6/f;)V

    move-object v3, v5

    move-object v11, v3

    :cond_7
    :goto_3
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    move-object v0, v2

    check-cast v0, Lp6/a;

    :goto_4
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    if-nez v3, :cond_9

    sget-object v3, Ls5/n;->t:Ls5/n;

    :cond_9
    iget v3, v3, Ls5/n;->o:I

    packed-switch v3, :pswitch_data_1

    :pswitch_6
    invoke-virtual/range {p0 .. p2}, Lg6/f;->d0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object v3

    invoke-virtual {v0, v3}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :pswitch_7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v10}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :pswitch_8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v9}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :pswitch_9
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v8}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :pswitch_a
    invoke-virtual/range {p0 .. p3}, Lg6/f;->g0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;

    move-result-object v3

    invoke-virtual {v0, v3}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :pswitch_b
    invoke-static {p1, v7, p3}, Lg6/f;->h0(Ls5/k;ILp6/m;)Lp6/z;

    move-result-object v3

    if-nez v3, :cond_a

    iget-object v3, v0, Lp6/f;->l:Lp6/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v10

    :cond_a
    invoke-virtual {v0, v3}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :pswitch_c
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lp6/m;->b(Ljava/lang/String;)Lp6/x;

    move-result-object v3

    if-nez v3, :cond_b

    iget-object v3, v0, Lp6/f;->l:Lp6/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v10

    :cond_b
    invoke-virtual {v0, v3}, Lp6/a;->H(Lb6/q;)V

    goto :goto_4

    :cond_c
    :pswitch_d
    iget v0, v6, Lad/s2;->m:I

    if-nez v0, :cond_d

    const/4 v0, 0x0

    goto :goto_5

    :cond_d
    iget-object v2, v6, Lad/s2;->o:Ljava/lang/Object;

    check-cast v2, [Lp6/f;

    add-int/lit8 v0, v0, -0x1

    iput v0, v6, Lad/s2;->m:I

    aget-object v0, v2, v0

    :goto_5
    move-object v2, v0

    goto :goto_6

    :pswitch_e
    invoke-virtual {v6, v2}, Lad/s2;->H(Lp6/f;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp6/a;

    invoke-direct {v2, p3}, Lp6/a;-><init>(Lp6/m;)V

    invoke-virtual {v0, v2}, Lp6/a;->H(Lb6/q;)V

    goto :goto_6

    :pswitch_f
    invoke-virtual {v6, v2}, Lad/s2;->H(Lp6/f;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lp6/v;

    invoke-direct {v2, p3}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual {v0, v2}, Lp6/a;->H(Lb6/q;)V

    :goto_6
    if-nez v2, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6
        :pswitch_e
        :pswitch_d
        :pswitch_6
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method

.method public final c0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;)Lp6/v;
    .locals 8

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lp6/v;

    invoke-direct {v6, p3}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_0
    if-eqz v7, :cond_4

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ls5/n;->t:Ls5/n;

    :cond_0
    iget v0, v0, Ls5/n;->o:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual/range {p0 .. p2}, Lg6/f;->a0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object v0

    move-object v5, v0

    goto :goto_1

    :cond_1
    new-instance v5, Lp6/a;

    invoke-direct {v5, p3}, Lp6/a;-><init>(Lp6/m;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    goto :goto_1

    :cond_2
    new-instance v5, Lp6/v;

    invoke-direct {v5, p3}, Lp6/v;-><init>(Lp6/m;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    :goto_1
    invoke-virtual {v6, v7, v5}, Lp6/v;->M(Ljava/lang/String;Lb6/q;)Lb6/q;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v0, p2

    move-object v1, p3

    move-object v3, v6

    move-object v2, v7

    invoke-static/range {v0 .. v5}, Lg6/f;->j0(Lb6/i;Lp6/m;Ljava/lang/String;Lp6/v;Lb6/q;Lb6/q;)V

    goto :goto_2

    :cond_3
    move-object v3, v6

    :goto_2
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v7

    move-object v6, v3

    goto :goto_0

    :cond_4
    move-object v3, v6

    return-object v3
.end method

.method public final d0(Ls5/k;Lb6/i;)Lb6/q;
    .locals 2

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lg6/f;->f0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    iget-object v0, p2, Lb6/i;->q:Lb6/h;

    iget-object v0, v0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p0, p1, p2, v0}, Lg6/f;->g0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p2, Lb6/i;->q:Lb6/h;

    iget-object p0, p0, Lb6/h;->v:Lp6/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp6/v;

    invoke-direct {p1, p0}, Lp6/v;-><init>(Lp6/m;)V

    return-object p1
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final g0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;
    .locals 6

    invoke-virtual {p1}, Ls5/k;->a0()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lg6/f;->e0(Lb6/i;Lp6/m;Ljava/math/BigDecimal;)Lp6/z;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p2, Lb6/i;->q:Lb6/h;

    iget-object v1, v1, Ld6/n;->s:Ld6/i;

    sget-object v2, Ld6/l;->s:Ld6/l;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ld6/l;->c(I)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget v1, v1, Ld6/i;->m:I

    invoke-virtual {v2, v1}, Ld6/l;->c(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    if-nez v1, :cond_2

    sget-object v1, Lb6/j;->n:Lb6/j;

    invoke-virtual {p2, v1}, Lb6/i;->n0(Lb6/j;)Z

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p1}, Ls5/k;->w0()Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Ld6/l;->r:Ld6/l;

    iget-object v1, p2, Lb6/i;->q:Lb6/h;

    iget-object v1, v1, Ld6/n;->s:Ld6/i;

    invoke-virtual {v1, v0}, Ld6/i;->a(Ld6/g;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp6/h;

    invoke-direct {p2, p0, p1}, Lp6/h;-><init>(D)V

    return-object p2

    :cond_3
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p3, "Cannot convert NaN into BigDecimal"

    new-array v0, v3, [Ljava/lang/Object;

    iget-object p0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, p0, p1, p3, v0}, Lb6/i;->j0(Ljava/lang/Class;Ljava/lang/Number;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :cond_4
    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-static {p2, p3, p0}, Lg6/f;->e0(Lb6/i;Lp6/m;Ljava/math/BigDecimal;)Lp6/z;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x2

    if-ne v0, p0, :cond_6

    invoke-virtual {p1}, Ls5/k;->W()F

    move-result p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lp6/i;

    invoke-direct {p1, p0}, Lp6/i;-><init>(F)V

    return-object p1

    :cond_6
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lp6/h;

    invoke-direct {p2, p0, p1}, Lp6/h;-><init>(D)V

    return-object p2
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final k0(Ls5/k;Lb6/i;Lp6/v;Lad/s2;)Lb6/q;
    .locals 10

    invoke-virtual {p1}, Ls5/k;->v0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ls5/n;->y:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p2, Lb6/i;->q:Lb6/h;

    iget-object v5, v1, Lb6/h;->v:Lp6/m;

    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    invoke-virtual {p3, v0}, Lp6/v;->z(Ljava/lang/String;)Lb6/q;

    move-result-object v2

    iget-object v8, p3, Lp6/f;->l:Lp6/m;

    sget-object v9, Lp6/t;->l:Lp6/t;

    if-eqz v2, :cond_4

    instance-of v3, v2, Lp6/v;

    if-eqz v3, :cond_5

    sget-object v3, Ls5/n;->u:Ls5/n;

    if-ne v1, v3, :cond_4

    iget-boolean v3, p0, Lg6/f;->q:Z

    if-eqz v3, :cond_4

    move-object v1, v2

    check-cast v1, Lp6/v;

    invoke-virtual {p0, p1, p2, v1, p4}, Lg6/f;->k0(Ls5/k;Lb6/i;Lp6/v;Lad/s2;)Lb6/q;

    move-result-object v1

    if-eq v1, v2, :cond_3

    if-nez v1, :cond_2

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_2
    move-object v9, v1

    :goto_2
    invoke-virtual {p3, v0, v9}, Lp6/v;->I(Ljava/lang/String;Lb6/q;)V

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    goto/16 :goto_7

    :cond_4
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    goto :goto_3

    :cond_5
    instance-of v3, v2, Lp6/a;

    if-eqz v3, :cond_4

    sget-object v3, Ls5/n;->w:Ls5/n;

    if-ne v1, v3, :cond_4

    iget-boolean v3, p0, Lg6/f;->p:Z

    if-eqz v3, :cond_4

    move-object v7, v2

    check-cast v7, Lp6/a;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    goto/16 :goto_7

    :goto_3
    if-nez v1, :cond_6

    sget-object v1, Ls5/n;->t:Ls5/n;

    :cond_6
    iget p0, v1, Ls5/n;->o:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_b

    const/4 p1, 0x3

    if-eq p0, p1, :cond_a

    const/4 p1, 0x6

    if-eq p0, p1, :cond_9

    const/4 p1, 0x7

    if-eq p0, p1, :cond_8

    packed-switch p0, :pswitch_data_0

    invoke-virtual {v2, v3, v4}, Lg6/f;->d0(Ls5/k;Lb6/i;)Lb6/q;

    move-result-object p0

    goto :goto_5

    :pswitch_0
    sget-object p0, Ld6/l;->n:Ld6/l;

    iget-object p1, v4, Lb6/i;->q:Lb6/h;

    iget-object p1, p1, Ld6/n;->s:Ld6/i;

    invoke-virtual {p1, p0}, Ld6/i;->a(Ld6/g;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object p0, v9

    goto :goto_5

    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/e;->n:Lp6/e;

    goto :goto_5

    :pswitch_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lp6/e;->m:Lp6/e;

    goto :goto_5

    :cond_8
    invoke-static {v3, v4, v5}, Lg6/f;->i0(Ls5/k;Lb6/i;Lp6/m;)Lp6/z;

    move-result-object p0

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lp6/m;->b(Ljava/lang/String;)Lp6/x;

    move-result-object p0

    goto :goto_5

    :cond_a
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lp6/a;

    invoke-direct {v7, v5}, Lp6/a;-><init>(Lp6/m;)V

    invoke-virtual/range {v2 .. v7}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    :goto_4
    move-object p0, v7

    goto :goto_5

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lp6/v;

    invoke-direct {v7, v5}, Lp6/v;-><init>(Lp6/m;)V

    invoke-virtual/range {v2 .. v7}, Lg6/f;->b0(Ls5/k;Lb6/i;Lp6/m;Lad/s2;Lp6/f;)V

    goto :goto_4

    :goto_5
    if-nez p0, :cond_c

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_6

    :cond_c
    move-object v9, p0

    :goto_6
    invoke-virtual {p3, v0, v9}, Lp6/v;->I(Ljava/lang/String;Lb6/q;)V

    :goto_7
    invoke-virtual {v3}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    move-object p0, v2

    move-object p1, v3

    move-object p2, v4

    move-object p4, v6

    goto/16 :goto_1

    :cond_d
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->p:Lt6/f;

    return-object p0
.end method

.method public supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lg6/f;->o:Ljava/lang/Boolean;

    return-object p0
.end method
