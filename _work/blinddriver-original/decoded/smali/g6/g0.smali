.class public final Lg6/g0;
.super Lg6/m1;
.source "SourceFile"


# static fields
.field public static final o:Lg6/g0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg6/g0;

    const-class v1, Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/g0;->o:Lg6/g0;

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ls5/k;->t0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->C()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    iget-object v5, p0, Lg6/f1;->l:Ljava/lang/Class;

    if-eq v0, v1, :cond_6

    if-eq v0, v4, :cond_5

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    invoke-static {p1, p2, v5}, Lg6/f1;->h(Ls5/k;Lb6/i;Ljava/lang/Class;)I

    move-result v0

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_1
    if-ne v0, v3, :cond_2

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object p1

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ls5/c;->c(I)V

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lg6/f1;->W(Lb6/i;)Lb6/l;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lb6/i;->f0(Lb6/l;Ls5/k;)V

    throw v2

    :cond_4
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_6
    invoke-virtual {p2, v5, p1}, Lb6/i;->Q(Ljava/lang/Class;Ls5/k;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p2, v0}, Lg6/f1;->i(Lb6/i;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_7

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_7
    if-ne v1, v3, :cond_8

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, p2}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/math/BigInteger;

    return-object p0

    :cond_9
    invoke-static {v0}, Lg6/f1;->w(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Ls5/k;->D0()Ls5/c;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ls5/c;->e(I)V

    :try_start_0
    sget-object p0, Ls5/s;->p:Ls5/s;

    invoke-virtual {p1, p0}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->f(Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_a
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "not a valid representation"

    invoke-virtual {p2, v5, v0, p1, p0}, Lb6/i;->k0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v2
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->q:Lt6/f;

    return-object p0
.end method
