.class public final Lu6/x;
.super Lt5/c;
.source "SourceFile"


# instance fields
.field public final A:Ls5/o;

.field public final B:Z

.field public final C:Z

.field public D:Lu6/y;

.field public E:I

.field public F:Lu6/a0;

.field public G:Z

.field public transient H:La6/d;

.field public I:Ls5/h;


# direct methods
.method public constructor <init>(Lu6/y;Ls5/o;ZZLs5/m;Ls5/c;)V
    .locals 0

    invoke-direct {p0, p6}, Lt5/c;-><init>(Ls5/c;)V

    const/4 p6, 0x0

    iput-object p6, p0, Lu6/x;->I:Ls5/h;

    iput-object p1, p0, Lu6/x;->D:Lu6/y;

    const/4 p1, -0x1

    iput p1, p0, Lu6/x;->E:I

    iput-object p2, p0, Lu6/x;->A:Ls5/o;

    if-nez p5, :cond_0

    new-instance p1, Lu6/a0;

    invoke-direct {p1}, Lu6/a0;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p1, Lu6/a0;

    sget-object p2, Lw5/c;->n:Lw5/c;

    invoke-direct {p1, p5, p2}, Lu6/a0;-><init>(Ls5/m;Lw5/c;)V

    :goto_0
    iput-object p1, p0, Lu6/x;->F:Lu6/a0;

    iput-boolean p3, p0, Lu6/x;->B:Z

    iput-boolean p4, p0, Lu6/x;->C:Z

    return-void
.end method


# virtual methods
.method public final A0(Ls5/a;Lu6/e;)I
    .locals 1

    invoke-virtual {p0, p1}, Lu6/x;->J(Ls5/a;)[B

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
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/math/BigInteger;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v1

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ls5/c;->c(I)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final D0()Ls5/c;
    .locals 0

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    return-object p0
.end method

.method public final G0()V
    .locals 0

    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final J(Ls5/a;)[B
    .locals 4

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->z:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, [B

    if-eqz v1, :cond_0

    check-cast v0, [B

    return-object v0

    :cond_0
    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lu6/x;->h0()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v2, p0, Lu6/x;->H:La6/d;

    if-nez v2, :cond_2

    new-instance v2, La6/d;

    const/16 v3, 0x64

    invoke-direct {v2, v1, v3}, La6/d;-><init>(La6/b;I)V

    iput-object v2, p0, Lu6/x;->H:La6/d;

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, La6/d;->m()V

    :goto_0
    invoke-virtual {p0, v0, v2, p1}, Lt5/c;->E0(Ljava/lang/String;La6/d;Ls5/a;)V

    invoke-virtual {v2}, La6/d;->n()[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Current token ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), cannot access as binary"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ls5/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0
.end method

.method public final R()Ls5/o;
    .locals 0

    iget-object p0, p0, Lu6/x;->A:Ls5/o;

    return-object p0
.end method

.method public final T()Ljava/math/BigDecimal;
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object p0

    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/math/BigDecimal;

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    new-instance v0, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final U()D
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final V()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->z:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final W()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    return p0
.end method

.method public final W0()V
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Ls5/n;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Current token ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt5/c;->o:Ls5/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") not numeric, cannot use numeric value accessors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ls5/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1
.end method

.method public final X()I
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_a

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_a

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    long-to-int v3, v0

    int-to-long v4, v3

    cmp-long v0, v4, v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_2
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/math/BigInteger;

    sget-object v3, Lt5/c;->s:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_3

    sget-object v3, Lt5/c;->t:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_7

    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    sget-object v3, Lt5/c;->y:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_6

    sget-object v3, Lt5/c;->z:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_6

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_7
    invoke-static {}, La6/u;->a()V

    throw v2

    :cond_8
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_9

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_9

    double-to-int p0, v0

    return p0

    :cond_9
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_a
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public final X0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    iget p0, p0, Lu6/x;->E:I

    iget-object v0, v0, Lu6/y;->c:[Ljava/lang/Object;

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final Y()J
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Long;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/Integer;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/Short;

    if-nez v1, :cond_8

    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    instance-of v1, v0, Ljava/math/BigInteger;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Ljava/math/BigInteger;

    sget-object v3, Lt5/c;->u:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_1

    sget-object v3, Lt5/c;->v:Ljava/math/BigInteger;

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lt5/c;->U0()V

    throw v2

    :cond_2
    instance-of v1, v0, Ljava/lang/Double;

    if-nez v1, :cond_6

    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_5

    move-object v1, v0

    check-cast v1, Ljava/math/BigDecimal;

    sget-object v3, Lt5/c;->w:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v3

    if-gtz v3, :cond_4

    sget-object v3, Lt5/c;->x:Ljava/math/BigDecimal;

    invoke-virtual {v3, v1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_4
    invoke-virtual {p0}, Lt5/c;->U0()V

    throw v2

    :cond_5
    invoke-static {}, La6/u;->a()V

    throw v2

    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v3, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_7

    const-wide/high16 v3, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_7

    double-to-long v0, v0

    return-wide v0

    :cond_7
    invoke-virtual {p0}, Lt5/c;->U0()V

    throw v2

    :cond_8
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final Y0(Z)Ljava/lang/Number;
    .locals 4

    invoke-virtual {p0}, Lu6/x;->W0()V

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Number;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Number;

    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_7

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lt5/c;->o:Ls5/n;

    sget-object v3, Ls5/n;->B:Ls5/n;

    if-ne v2, v3, :cond_4

    if-nez p1, :cond_3

    const/16 p1, 0x13

    if-lt v1, p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0xa

    if-lt v1, p0, :cond_2

    invoke-static {v0}, Lw5/h;->m(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v0}, Lw5/h;->k(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    sget-object p1, Ls5/s;->p:Ls5/s;

    invoke-virtual {p0, p1}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->f(Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_4
    if-eqz p1, :cond_6

    sget-object p1, Ls5/s;->p:Ls5/s;

    invoke-virtual {p0, p1}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->e(Ljava/lang/String;Z)Ljava/math/BigDecimal;

    move-result-object p0

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Internal error: failed to parse number \'"

    const-string v1, "\'"

    invoke-static {p1, v0, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    sget-object p1, Ls5/s;->o:Ls5/s;

    invoke-virtual {p0, p1}, Ls5/k;->s0(Ls5/s;)Z

    move-result p0

    invoke-static {v0, p0}, Lw5/h;->h(Ljava/lang/String;Z)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Internal error: entry should be a Number, but is of type "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Z()I
    .locals 2

    invoke-virtual {p0}, Lu6/x;->c0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_6

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_6
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    sget-object v0, Ls5/n;->C:Ls5/n;

    if-ne p0, v0, :cond_7

    :goto_1
    const/4 p0, 0x6

    return p0

    :cond_7
    :goto_2
    const/4 p0, 0x3

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public final a0()I
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->C:Ls5/n;

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    instance-of v0, p0, Ljava/math/BigDecimal;

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    instance-of p0, p0, Ljava/lang/Float;

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, 0x5

    return p0
.end method

.method public final b0()Ljava/lang/Number;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu6/x;->Y0(Z)Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final c0()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lu6/x;->W0()V

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 1

    iget-boolean v0, p0, Lu6/x;->G:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu6/x;->G:Z

    :cond_0
    return-void
.end method

.method public final d0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    iget p0, p0, Lu6/x;->E:I

    iget-object v0, v0, Lu6/y;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/2addr p0, p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lu6/x;->C:Z

    return p0
.end method

.method public final e0()Ls5/m;
    .locals 0

    iget-object p0, p0, Lu6/x;->F:Lu6/a0;

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

    sget-object v1, Ls5/n;->A:Ls5/n;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_4

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    iget-object p0, p0, Ls5/n;->l:Ljava/lang/String;

    return-object p0

    :cond_2
    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p0, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_5
    sget-object v0, Lu6/h;->a:[Ljava/lang/annotation/Annotation;

    if-nez p0, :cond_6

    return-object v2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final i0()[C
    .locals 0

    invoke-virtual {p0}, Lu6/x;->h0()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    return-object p0
.end method

.method public final j0()I
    .locals 0

    invoke-virtual {p0}, Lu6/x;->h0()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method public final k()Z
    .locals 0

    iget-boolean p0, p0, Lu6/x;->B:Z

    return p0
.end method

.method public final k0()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final l0()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    iget p0, p0, Lu6/x;->E:I

    iget-object v0, v0, Lu6/y;->d:Ljava/util/TreeMap;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    add-int/2addr p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n()Ls5/h;
    .locals 0

    iget-object p0, p0, Lu6/x;->I:Ls5/h;

    if-nez p0, :cond_0

    sget-object p0, Ls5/h;->r:Ls5/h;

    :cond_0
    return-object p0
.end method

.method public final p0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-eq v0, v1, :cond_1

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lu6/x;->F:Lu6/a0;

    iget-object p0, p0, Lu6/a0;->f:Ljava/lang/String;

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lu6/x;->F:Lu6/a0;

    iget-object p0, p0, Lu6/a0;->d:Ls5/m;

    invoke-virtual {p0}, Ls5/m;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w0()Z
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->C:Ls5/n;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Double;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    :goto_0
    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Double;->isFinite(D)Z

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final x0()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lu6/x;->G:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lu6/x;->E:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_2

    invoke-virtual {v0, v1}, Lu6/y;->c(I)Ls5/n;

    move-result-object v0

    sget-object v2, Ls5/n;->y:Ls5/n;

    if-ne v0, v2, :cond_2

    iput v1, p0, Lu6/x;->E:I

    invoke-virtual {p0, v2}, Lt5/c;->Q0(Ls5/n;)V

    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    iget-object v0, v0, Lu6/y;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lu6/x;->F:Lu6/a0;

    iput-object v0, p0, Lu6/a0;->f:Ljava/lang/String;

    return-object v0

    :cond_2
    invoke-virtual {p0}, Lu6/x;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lu6/x;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final z0()Ls5/n;
    .locals 4

    iget-boolean v0, p0, Lu6/x;->G:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v1, p0, Lu6/x;->E:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lu6/x;->E:I

    const/16 v3, 0x10

    if-lt v1, v3, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lu6/x;->E:I

    iget-object v0, v0, Lu6/y;->a:Lu6/y;

    iput-object v0, p0, Lu6/x;->D:Lu6/y;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object v0, p0, Lu6/x;->D:Lu6/y;

    iget v1, p0, Lu6/x;->E:I

    invoke-virtual {v0, v1}, Lu6/y;->c(I)Ls5/n;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->Q0(Ls5/n;)V

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lu6/x;->X0()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lu6/x;->F:Lu6/a0;

    iput-object v0, v1, Lu6/a0;->f:Ljava/lang/String;

    goto :goto_3

    :cond_3
    sget-object v1, Ls5/n;->u:Ls5/n;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lu6/x;->F:Lu6/a0;

    iget v1, v0, Ls5/m;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Ls5/m;->b:I

    new-instance v1, Lu6/a0;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lu6/a0;-><init>(Lu6/a0;I)V

    iput-object v1, p0, Lu6/x;->F:Lu6/a0;

    goto :goto_3

    :cond_4
    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lu6/x;->F:Lu6/a0;

    iget v1, v0, Ls5/m;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Ls5/m;->b:I

    new-instance v1, Lu6/a0;

    invoke-direct {v1, v0, v2}, Lu6/a0;-><init>(Lu6/a0;I)V

    iput-object v1, p0, Lu6/x;->F:Lu6/a0;

    goto :goto_3

    :cond_5
    sget-object v1, Ls5/n;->v:Ls5/n;

    if-eq v0, v1, :cond_7

    sget-object v1, Ls5/n;->x:Ls5/n;

    if-ne v0, v1, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lu6/x;->F:Lu6/a0;

    iget v1, v0, Ls5/m;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Ls5/m;->b:I

    goto :goto_3

    :cond_7
    :goto_1
    iget-object v0, p0, Lu6/x;->F:Lu6/a0;

    iget-object v1, v0, Lu6/a0;->d:Ls5/m;

    instance-of v2, v1, Lu6/a0;

    if-eqz v2, :cond_8

    check-cast v1, Lu6/a0;

    goto :goto_2

    :cond_8
    if-nez v1, :cond_9

    new-instance v1, Lu6/a0;

    invoke-direct {v1}, Lu6/a0;-><init>()V

    goto :goto_2

    :cond_9
    new-instance v2, Lu6/a0;

    iget-object v0, v0, Lu6/a0;->e:Ls5/h;

    invoke-direct {v2, v1, v0}, Lu6/a0;-><init>(Ls5/m;Ls5/h;)V

    move-object v1, v2

    :goto_2
    iput-object v1, p0, Lu6/x;->F:Lu6/a0;

    :goto_3
    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    return-object p0

    :cond_a
    :goto_4
    const/4 p0, 0x0

    return-object p0
.end method
