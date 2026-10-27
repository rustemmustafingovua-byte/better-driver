.class public abstract Lt5/b;
.super Lt5/c;
.source "SourceFile"


# static fields
.field public static final c0:La6/k;


# instance fields
.field public final A:Lw5/d;

.field public B:Z

.field public C:I

.field public D:I

.field public E:J

.field public F:I

.field public G:I

.field public H:J

.field public I:I

.field public J:I

.field public K:Ly5/d;

.field public L:Ls5/n;

.field public final M:La6/o;

.field public N:[C

.field public O:Z

.field public P:La6/d;

.field public Q:[B

.field public R:I

.field public S:I

.field public T:J

.field public U:F

.field public V:D

.field public W:Ljava/math/BigInteger;

.field public X:Ljava/math/BigDecimal;

.field public Y:Ljava/lang/String;

.field public Z:Z

.field public a0:Z

.field public b0:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ls5/k;->m:La6/k;

    sput-object v0, Lt5/b;->c0:La6/k;

    return-void
.end method

.method public constructor <init>(Lw5/d;I)V
    .locals 7

    iget-object v0, p1, Lw5/d;->r:Ls5/c;

    invoke-direct {p0, p2, v0}, Lt5/c;-><init>(ILs5/c;)V

    const/4 v1, 0x1

    iput v1, p0, Lt5/b;->F:I

    iput v1, p0, Lt5/b;->I:I

    const/4 v1, 0x0

    iput v1, p0, Lt5/b;->R:I

    iput-object p1, p0, Lt5/b;->A:Lw5/d;

    new-instance v1, La6/o;

    iget-object p1, p1, Lw5/d;->p:La6/b;

    invoke-direct {v1, v0, p1}, La6/o;-><init>(Ls5/c;La6/b;)V

    iput-object v1, p0, Lt5/b;->M:La6/o;

    sget-object p1, Ls5/j;->C:Ls5/j;

    invoke-virtual {p1, p2}, Ls5/j;->a(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lg5/i;

    const/16 p2, 0x12

    invoke-direct {p1, p2, p0}, Lg5/i;-><init>(ILjava/lang/Object;)V

    :goto_0
    move-object v3, p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :goto_1
    new-instance v0, Ly5/d;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Ly5/d;-><init>(Ly5/d;ILg5/i;III)V

    iput-object v0, p0, Lt5/b;->K:Ly5/d;

    return-void
.end method

.method public static r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 1

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Illegal white space character (code 0x%s) as character #%d of 4-char base64 unit: can only used between units"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-char v0, p0, Ls5/a;->p:C

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected padding character (\'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char p0, p0, Ls5/a;->p:C

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "\') as character #"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " of 4-char base64 unit: padding only legal as 3rd or 4th character"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->isDefined(I)Z

    move-result p0

    const-string p2, ") in base64 content"

    if-eqz p0, :cond_3

    invoke-static {p1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Illegal character \'"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v0, p1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\' (code 0x"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Illegal character (code 0x"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p3, :cond_4

    const-string p1, ": "

    invoke-static {p0, p1, p3}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final C()Ljava/math/BigInteger;
    .locals 6

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_6

    const/4 v1, 0x4

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lt5/b;->j1(I)V

    :cond_0
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v2, v0, 0x4

    if-nez v2, :cond_6

    and-int/lit8 v2, v0, 0x10

    iget-object v3, p0, Lt5/c;->n:Ls5/c;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ls5/c;->c(I)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lt5/b;->T:J

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_3

    iget v0, p0, Lt5/b;->S:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    goto :goto_0

    :cond_3
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ls5/c;->c(I)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->valueOf(D)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ls5/c;->c(I)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    :goto_0
    iget v0, p0, Lt5/b;->R:I

    or-int/2addr v0, v1

    iput v0, p0, Lt5/b;->R:I

    iget-object p0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    return-object p0

    :cond_5
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final G0()V
    .locals 8

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->f()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Array"

    goto :goto_0

    :cond_0
    const-string v0, "Object"

    :goto_0
    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {p0}, Lt5/b;->X0()Lw5/c;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ls5/h;

    iget v6, v1, Ly5/d;->i:I

    iget v7, v1, Ly5/d;->j:I

    const-wide/16 v4, -0x1

    invoke-direct/range {v2 .. v7}, Ls5/h;-><init>(Lw5/c;JII)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, ": expected close marker for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (start marker at "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-void
.end method

.method public final S()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-eq v0, v1, :cond_0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    iget-object v0, v0, Ly5/d;->d:Ly5/d;

    if-eqz v0, :cond_1

    iget-object p0, v0, Ly5/d;->g:Ljava/lang/String;

    return-object p0

    :cond_1
    iget-object p0, p0, Lt5/b;->K:Ly5/d;

    iget-object p0, p0, Ly5/d;->g:Ljava/lang/String;

    return-object p0
.end method

.method public final T()Ljava/math/BigDecimal;
    .locals 4

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x10

    if-nez v1, :cond_6

    const/16 v1, 0x10

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lt5/b;->j1(I)V

    :cond_0
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v2, v0, 0x10

    if-nez v2, :cond_6

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_2

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    :cond_1
    sget-object v2, Ls5/s;->p:Ls5/s;

    invoke-virtual {p0, v2}, Ls5/k;->s0(Ls5/s;)Z

    move-result v2

    invoke-static {v0, v2}, Lw5/h;->e(Ljava/lang/String;Z)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->X:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_3

    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    iput-object v0, p0, Lt5/b;->X:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lt5/b;->T:J

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->X:Ljava/math/BigDecimal;

    goto :goto_0

    :cond_4
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget v0, p0, Lt5/b;->S:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->X:Ljava/math/BigDecimal;

    :goto_0
    iget v0, p0, Lt5/b;->R:I

    or-int/2addr v0, v1

    iput v0, p0, Lt5/b;->R:I

    iget-object p0, p0, Lt5/b;->X:Ljava/math/BigDecimal;

    return-object p0

    :cond_5
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final U()D
    .locals 4

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x8

    if-nez v1, :cond_9

    const/16 v1, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lt5/b;->j1(I)V

    :cond_0
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v2, v0, 0x8

    if-nez v2, :cond_9

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_4

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lt5/b;->T:J

    long-to-double v2, v2

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    iget v0, p0, Lt5/b;->S:I

    int-to-double v2, v0

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_6
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->V:D

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result v0

    float-to-double v2, v0

    iput-wide v2, p0, Lt5/b;->V:D

    :goto_0
    iget v0, p0, Lt5/b;->R:I

    or-int/2addr v0, v1

    iput v0, p0, Lt5/b;->R:I

    iget-wide v0, p0, Lt5/b;->V:D

    return-wide v0

    :cond_8
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_9
    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v0

    return-wide v0
.end method

.method public final W()F
    .locals 4

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_9

    const/16 v1, 0x20

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lt5/b;->j1(I)V

    :cond_0
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v2, v0, 0x20

    if-nez v2, :cond_9

    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_2

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result v0

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v0

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_2
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_4

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result v0

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_4
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_5

    iget-wide v2, p0, Lt5/b;->T:J

    long-to-float v0, v2

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_5
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_6

    iget v0, p0, Lt5/b;->S:I

    int-to-float v0, v0

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_6
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result v0

    iput v0, p0, Lt5/b;->U:F

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v2

    double-to-float v0, v2

    iput v0, p0, Lt5/b;->U:F

    :goto_0
    iget v0, p0, Lt5/b;->R:I

    or-int/2addr v0, v1

    iput v0, p0, Lt5/b;->R:I

    iget p0, p0, Lt5/b;->U:F

    return p0

    :cond_8
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_9
    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result p0

    return p0
.end method

.method public abstract W0()V
.end method

.method public final X()I
    .locals 2

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lt5/b;->i1()I

    move-result p0

    return p0

    :cond_0
    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lt5/b;->o1()V

    :cond_1
    iget p0, p0, Lt5/b;->S:I

    return p0
.end method

.method public final X0()Lw5/c;
    .locals 2

    sget-object v0, Ls5/j;->E:Ls5/j;

    iget v1, p0, Ls5/k;->l:I

    invoke-virtual {v0, v1}, Ls5/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lt5/b;->A:Lw5/d;

    iget-object p0, p0, Lw5/d;->l:Lw5/c;

    return-object p0

    :cond_0
    sget-object p0, Lw5/c;->o:Lw5/c;

    return-object p0
.end method

.method public final Y()J
    .locals 8

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_8

    const/4 v1, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lt5/b;->j1(I)V

    :cond_0
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_8

    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_1

    iget v0, p0, Lt5/b;->S:I

    int-to-long v2, v0

    iput-wide v2, p0, Lt5/b;->T:J

    goto :goto_0

    :cond_1
    and-int/lit8 v2, v0, 0x4

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lt5/c;->u:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_2

    sget-object v2, Lt5/c;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->T:J

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lt5/c;->U0()V

    throw v3

    :cond_3
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v4

    const-wide/high16 v6, -0x3c20000000000000L    # -9.223372036854776E18

    cmpg-double v0, v4, v6

    if-ltz v0, :cond_4

    const-wide/high16 v6, 0x43e0000000000000L    # 9.223372036854776E18

    cmpl-double v0, v4, v6

    if-gtz v0, :cond_4

    double-to-long v2, v4

    iput-wide v2, p0, Lt5/b;->T:J

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lt5/c;->U0()V

    throw v3

    :cond_5
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v2, Lt5/c;->w:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-gtz v2, :cond_6

    sget-object v2, Lt5/c;->x:Ljava/math/BigDecimal;

    invoke-virtual {v2, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v2

    if-ltz v2, :cond_6

    invoke-virtual {v0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v2

    iput-wide v2, p0, Lt5/b;->T:J

    :goto_0
    iget v0, p0, Lt5/b;->R:I

    or-int/2addr v0, v1

    iput v0, p0, Lt5/b;->R:I

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lt5/c;->U0()V

    throw v3

    :cond_7
    invoke-static {}, La6/u;->a()V

    throw v3

    :cond_8
    :goto_1
    iget-wide v0, p0, Lt5/b;->T:J

    return-wide v0
.end method

.method public final Y0(Ls5/a;CI)I
    .locals 2

    const/16 v0, 0x5c

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lt5/b;->a1()C

    move-result p0

    const/16 p2, 0x20

    if-gt p0, p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ls5/a;->c(C)I

    move-result p2

    if-gez p2, :cond_2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, p3, v1}, Lt5/b;->r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return p2

    :cond_3
    invoke-static {p1, p2, p3, v1}, Lt5/b;->r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public final Z()I
    .locals 2

    iget v0, p0, Lt5/b;->R:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt5/b;->j1(I)V

    :cond_0
    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    if-ne v0, v1, :cond_3

    iget p0, p0, Lt5/b;->R:I

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x3

    return p0

    :cond_3
    iget p0, p0, Lt5/b;->R:I

    and-int/lit8 v0, p0, 0x10

    if-eqz v0, :cond_4

    const/4 p0, 0x6

    return p0

    :cond_4
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    const/4 p0, 0x5

    return p0
.end method

.method public final Z0(Ls5/a;II)I
    .locals 2

    const/16 v0, 0x5c

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    invoke-virtual {p0}, Lt5/b;->a1()C

    move-result p0

    const/16 p2, 0x20

    if-gt p0, p2, :cond_0

    if-nez p3, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ls5/a;->d(I)I

    move-result p2

    if-gez p2, :cond_2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, p3, v1}, Lt5/b;->r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :cond_2
    :goto_0
    return p2

    :cond_3
    invoke-static {p1, p2, p3, v1}, Lt5/b;->r1(Ls5/a;IILjava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method public abstract a1()C
.end method

.method public final b0()Ljava/lang/Number;
    .locals 3

    iget v0, p0, Lt5/b;->R:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt5/b;->j1(I)V

    :cond_0
    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget p0, p0, Lt5/b;->S:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-wide v0, p0, Lt5/b;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {}, La6/u;->a()V

    throw v2

    :cond_4
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_5
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_6
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {}, La6/u;->a()V

    throw v2
.end method

.method public final b1()Ljava/math/BigDecimal;
    .locals 3

    iget-object v0, p0, Lt5/b;->X:Ljava/math/BigDecimal;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Ls5/s;->p:Ls5/s;

    invoke-virtual {p0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    invoke-static {v0, v1}, Lw5/h;->e(Ljava/lang/String;Z)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->X:Ljava/math/BigDecimal;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, p0, Lt5/b;->Y:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt5/b;->Y:Ljava/lang/String;

    invoke-static {v2}, Lt5/c;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ls5/i;

    invoke-direct {v2, p0, v1, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot get BigDecimal from current parser state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c0()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    if-ne v0, v1, :cond_6

    iget v0, p0, Lt5/b;->R:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lt5/b;->j1(I)V

    :cond_0
    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    iget p0, p0, Lt5/b;->S:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_2

    iget-wide v0, p0, Lt5/b;->T:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_2
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_5

    iget-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {}, La6/u;->a()V

    const/4 p0, 0x0

    throw p0

    :cond_6
    sget-object v1, Ls5/n;->C:Ls5/n;

    if-ne v0, v1, :cond_a

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_7
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_8
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lt5/b;->f1()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_9
    iget-object p0, p0, Lt5/b;->M:La6/o;

    invoke-virtual {p0}, La6/s;->h()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {p0}, Lt5/b;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0
.end method

.method public final c1()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_1

    :try_start_0
    sget-object v1, Ls5/s;->p:Ls5/s;

    invoke-virtual {p0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    invoke-static {v0, v1}, Lw5/h;->f(Ljava/lang/String;Z)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lt5/b;->W:Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    iput-object v1, p0, Lt5/b;->Y:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt5/b;->Y:Ljava/lang/String;

    invoke-static {v2}, Lt5/c;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ls5/i;

    invoke-direct {v2, p0, v1, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "cannot get BigInteger from current parser state"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lt5/b;->A:Lw5/d;

    iget-boolean v1, p0, Lt5/b;->B:Z

    if-nez v1, :cond_0

    iget v1, p0, Lt5/b;->C:I

    iget v2, p0, Lt5/b;->D:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lt5/b;->C:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lt5/b;->B:Z

    :try_start_0
    invoke-virtual {p0}, Lt5/b;->W0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lt5/b;->k1()V

    invoke-virtual {v0}, Lw5/d;->close()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0}, Lt5/b;->k1()V

    invoke-virtual {v0}, Lw5/d;->close()V

    throw v1

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lt5/b;->K:Ly5/d;

    iput-object p1, p0, Ly5/d;->h:Ljava/lang/Object;

    return-void
.end method

.method public final d1()La6/d;
    .locals 2

    iget-object v0, p0, Lt5/b;->P:La6/d;

    if-nez v0, :cond_0

    new-instance v0, La6/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La6/d;-><init>(La6/b;)V

    iput-object v0, p0, Lt5/b;->P:La6/d;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, La6/d;->m()V

    :goto_0
    iget-object p0, p0, Lt5/b;->P:La6/d;

    return-object p0
.end method

.method public final e0()Ls5/m;
    .locals 0

    iget-object p0, p0, Lt5/b;->K:Ly5/d;

    return-object p0
.end method

.method public final e1()D
    .locals 3

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Ls5/s;->o:Ls5/s;

    invoke-virtual {p0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    invoke-static {v0, v1}, Lw5/h;->h(Ljava/lang/String;Z)D

    move-result-wide v0

    iput-wide v0, p0, Lt5/b;->V:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt5/b;->Y:Ljava/lang/String;

    invoke-static {v2}, Lt5/c;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ls5/i;

    invoke-direct {v2, p0, v1, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    iget-wide v0, p0, Lt5/b;->V:D

    return-wide v0
.end method

.method public final f1()F
    .locals 3

    iget-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v1, Ls5/s;->o:Ls5/s;

    invoke-virtual {p0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    invoke-static {v0, v1}, Lw5/h;->j(Ljava/lang/String;Z)F

    move-result v0

    iput v0, p0, Lt5/b;->U:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    iput-object v0, p0, Lt5/b;->Y:Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed numeric value ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lt5/b;->Y:Ljava/lang/String;

    invoke-static {v2}, Lt5/c;->I0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ls5/i;

    invoke-direct {v2, p0, v1, v0}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    iget p0, p0, Lt5/b;->U:F

    return p0
.end method

.method public final g1([II)[I
    .locals 1

    array-length v0, p1

    shl-int/lit8 v0, v0, 0x2

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ls5/c;->f(I)V

    array-length p0, p1

    add-int/2addr p0, p2

    if-ltz p0, :cond_0

    invoke-static {p1, p0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unable to grow array to longer than `Integer.MAX_VALUE`"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h1(C)V
    .locals 2

    sget-object v0, Ls5/j;->u:Ls5/j;

    iget v1, p0, Ls5/k;->l:I

    invoke-virtual {v0, v1}, Ls5/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    sget-object v0, Ls5/j;->r:Ls5/j;

    iget v1, p0, Ls5/k;->l:I

    invoke-virtual {v0, v1}, Ls5/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unrecognized character escape "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lt5/c;->F0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/c;->c()Ls5/h;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ls5/k;->b(Ljava/lang/String;Ls5/h;)Ls5/i;

    move-result-object p0

    throw p0
.end method

.method public final i1()I
    .locals 3

    iget-boolean v0, p0, Lt5/b;->B:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lt5/b;->b0:I

    const/16 v1, 0x9

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lt5/b;->M:La6/o;

    iget-boolean v1, p0, Lt5/b;->a0:Z

    invoke-virtual {v0, v1}, La6/s;->g(Z)I

    move-result v0

    iput v0, p0, Lt5/b;->S:I

    iput v2, p0, Lt5/b;->R:I

    return v0

    :cond_0
    invoke-virtual {p0, v2}, Lt5/b;->j1(I)V

    iget v0, p0, Lt5/b;->R:I

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lt5/b;->o1()V

    :cond_1
    iget p0, p0, Lt5/b;->S:I

    return p0

    :cond_2
    const-string v0, "Internal error: _parseNumericValue called when parser instance closed"

    invoke-virtual {p0, v0}, Lt5/c;->J0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final j1(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-boolean v2, v0, Lt5/b;->B:Z

    const/4 v3, 0x0

    if-nez v2, :cond_2b

    iget-object v2, v0, Lt5/c;->o:Ls5/n;

    sget-object v4, Ls5/n;->B:Ls5/n;

    const/16 v5, 0x20

    const/16 v6, 0x8

    const/4 v7, 0x0

    iget-object v8, v0, Lt5/b;->M:La6/o;

    if-ne v2, v4, :cond_16

    iget v2, v0, Lt5/b;->b0:I

    const/16 v4, 0x9

    const/4 v9, 0x1

    if-gt v2, v4, :cond_0

    iget-boolean v1, v0, Lt5/b;->a0:Z

    invoke-virtual {v8, v1}, La6/s;->g(Z)I

    move-result v1

    iput v1, v0, Lt5/b;->S:I

    iput v9, v0, Lt5/b;->R:I

    return-void

    :cond_0
    const/16 v4, 0x12

    const/4 v10, 0x2

    if-gt v2, v4, :cond_6

    iget-boolean v1, v0, Lt5/b;->a0:Z

    iget v3, v8, La6/s;->c:I

    if-ltz v3, :cond_2

    iget-object v4, v8, La6/s;->b:[C

    if-eqz v4, :cond_2

    if-eqz v1, :cond_1

    add-int/2addr v3, v9

    iget v1, v8, La6/s;->d:I

    sub-int/2addr v1, v9

    invoke-static {v4, v3, v1}, Lw5/h;->n([CII)J

    move-result-wide v3

    :goto_0
    neg-long v3, v3

    goto :goto_1

    :cond_1
    iget v1, v8, La6/s;->d:I

    invoke-static {v4, v3, v1}, Lw5/h;->n([CII)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iget-object v1, v8, La6/s;->h:[C

    iget v3, v8, La6/s;->i:I

    sub-int/2addr v3, v9

    invoke-static {v1, v9, v3}, Lw5/h;->n([CII)J

    move-result-wide v3

    goto :goto_0

    :cond_3
    iget-object v1, v8, La6/s;->h:[C

    iget v3, v8, La6/s;->i:I

    invoke-static {v1, v7, v3}, Lw5/h;->n([CII)J

    move-result-wide v3

    :goto_1
    const/16 v1, 0xa

    if-ne v2, v1, :cond_5

    iget-boolean v1, v0, Lt5/b;->a0:Z

    if-eqz v1, :cond_4

    const-wide/32 v1, -0x80000000

    cmp-long v1, v3, v1

    if-ltz v1, :cond_5

    long-to-int v1, v3

    iput v1, v0, Lt5/b;->S:I

    iput v9, v0, Lt5/b;->R:I

    return-void

    :cond_4
    const-wide/32 v1, 0x7fffffff

    cmp-long v1, v3, v1

    if-gtz v1, :cond_5

    long-to-int v1, v3

    iput v1, v0, Lt5/b;->S:I

    iput v9, v0, Lt5/b;->R:I

    return-void

    :cond_5
    iput-wide v3, v0, Lt5/b;->T:J

    iput v10, v0, Lt5/b;->R:I

    return-void

    :cond_6
    const/16 v4, 0x13

    if-ne v2, v4, :cond_10

    invoke-virtual {v8}, La6/s;->m()[C

    move-result-object v11

    iget v12, v8, La6/s;->c:I

    if-ltz v12, :cond_7

    goto :goto_2

    :cond_7
    move v12, v7

    :goto_2
    iget-boolean v13, v0, Lt5/b;->a0:Z

    if-eqz v13, :cond_8

    add-int/lit8 v12, v12, 0x1

    :cond_8
    if-eqz v13, :cond_9

    sget-object v13, Lw5/h;->a:Ljava/lang/String;

    goto :goto_3

    :cond_9
    sget-object v13, Lw5/h;->b:Ljava/lang/String;

    :goto_3
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v2, v14, :cond_a

    goto :goto_5

    :cond_a
    if-le v2, v14, :cond_b

    goto :goto_7

    :cond_b
    move v2, v7

    :goto_4
    if-ge v2, v14, :cond_d

    add-int v15, v12, v2

    aget-char v15, v11, v15

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v16

    sub-int v15, v15, v16

    if-eqz v15, :cond_c

    if-gez v15, :cond_10

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    iget-boolean v1, v0, Lt5/b;->a0:Z

    sget-object v2, Lw5/h;->a:Ljava/lang/String;

    const-wide/16 v2, 0x0

    :goto_6
    if-ge v7, v4, :cond_e

    add-int v5, v12, v7

    aget-char v5, v11, v5

    const-wide/16 v8, 0xa

    mul-long/2addr v2, v8

    add-int/lit8 v5, v5, -0x30

    int-to-long v5, v5

    add-long/2addr v2, v5

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_e
    if-eqz v1, :cond_f

    neg-long v2, v2

    :cond_f
    iput-wide v2, v0, Lt5/b;->T:J

    iput v10, v0, Lt5/b;->R:I

    return-void

    :cond_10
    :goto_7
    invoke-virtual {v8}, La6/s;->h()Ljava/lang/String;

    move-result-object v2

    if-eq v1, v9, :cond_14

    if-ne v1, v10, :cond_11

    goto :goto_9

    :cond_11
    if-eq v1, v6, :cond_13

    if-ne v1, v5, :cond_12

    goto :goto_8

    :cond_12
    iput-object v3, v0, Lt5/b;->W:Ljava/math/BigInteger;

    iput-object v2, v0, Lt5/b;->Y:Ljava/lang/String;

    const/4 v1, 0x4

    iput v1, v0, Lt5/b;->R:I

    return-void

    :cond_13
    :goto_8
    iput-object v2, v0, Lt5/b;->Y:Ljava/lang/String;

    iput v6, v0, Lt5/b;->R:I

    return-void

    :cond_14
    :goto_9
    if-ne v1, v9, :cond_15

    invoke-static {v2}, Lt5/c;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Numeric value (%s) out of range of int (%d - %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ls5/i;

    invoke-direct {v2, v0, v1, v9}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v2

    :cond_15
    invoke-virtual {v0, v2}, Lt5/c;->V0(Ljava/lang/String;)V

    throw v3

    :cond_16
    sget-object v3, Ls5/n;->C:Ls5/n;

    if-ne v2, v3, :cond_2a

    const/16 v2, 0x10

    if-ne v1, v2, :cond_1f

    sget-object v1, Ls5/s;->p:Ls5/s;

    invoke-virtual {v0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    iget-object v3, v8, La6/s;->j:Ljava/lang/String;

    if-eqz v3, :cond_17

    invoke-static {v3, v1}, Lw5/h;->e(Ljava/lang/String;Z)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_a

    :cond_17
    iget v3, v8, La6/s;->c:I

    if-ltz v3, :cond_19

    iget-object v4, v8, La6/s;->b:[C

    iget v5, v8, La6/s;->d:I

    sget-object v6, Lw5/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_18

    :try_start_0
    invoke-static {v4, v3, v5}, Lv5/h;->b([CII)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    invoke-static {v0, v4, v3, v5}, Lg6/c1;->b(Ljava/lang/RuntimeException;[CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_18
    invoke-static {v4, v3, v5}, Lg6/c1;->x([CII)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_a

    :cond_19
    iget-boolean v3, v8, La6/s;->f:Z

    if-nez v3, :cond_1b

    iget-object v3, v8, La6/s;->h:[C

    iget v4, v8, La6/s;->i:I

    sget-object v5, Lw5/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_1a

    :try_start_1
    invoke-static {v3, v7, v4}, Lv5/h;->b([CII)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    move-exception v0

    invoke-static {v0, v3, v7, v4}, Lg6/c1;->b(Ljava/lang/RuntimeException;[CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1a
    invoke-static {v3, v7, v4}, Lg6/c1;->x([CII)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_a

    :cond_1b
    iget-object v3, v8, La6/s;->k:[C

    if-eqz v3, :cond_1d

    sget-object v4, Lw5/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_1c

    array-length v1, v3

    :try_start_2
    invoke-static {v3, v7, v1}, Lv5/h;->b([CII)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/ArithmeticException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_a

    :catch_2
    move-exception v0

    invoke-static {v0, v3, v7, v1}, Lg6/c1;->b(Ljava/lang/RuntimeException;[CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1c
    array-length v1, v3

    invoke-static {v3, v7, v1}, Lg6/c1;->x([CII)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_a

    :cond_1d
    :try_start_3
    invoke-virtual {v8}, La6/s;->f()[C

    move-result-object v3

    sget-object v4, Lw5/h;->a:Ljava/lang/String;

    if-eqz v1, :cond_1e

    array-length v1, v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-static {v3, v7, v1}, Lv5/h;->b([CII)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_a

    :catch_3
    move-exception v0

    :try_start_5
    invoke-static {v0, v3, v7, v1}, Lg6/c1;->b(Ljava/lang/RuntimeException;[CII)Ljava/lang/NumberFormatException;

    move-result-object v0

    throw v0

    :cond_1e
    array-length v1, v3

    invoke-static {v3, v7, v1}, Lg6/c1;->x([CII)Ljava/math/BigDecimal;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :goto_a
    iput-object v1, v0, Lt5/b;->X:Ljava/math/BigDecimal;

    iput v2, v0, Lt5/b;->R:I

    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    if-ne v1, v6, :cond_24

    sget-object v1, Ls5/s;->o:Ls5/s;

    invoke-virtual {v0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    iget-object v2, v8, La6/s;->j:Ljava/lang/String;

    if-eqz v2, :cond_20

    invoke-static {v2, v1}, Lw5/h;->h(Ljava/lang/String;Z)D

    move-result-wide v1

    goto :goto_b

    :cond_20
    iget v2, v8, La6/s;->c:I

    if-ltz v2, :cond_21

    iget-object v3, v8, La6/s;->b:[C

    iget v4, v8, La6/s;->d:I

    invoke-static {v2, v4, v1, v3}, Lw5/h;->g(IIZ[C)D

    move-result-wide v1

    goto :goto_b

    :cond_21
    iget-boolean v2, v8, La6/s;->f:Z

    if-nez v2, :cond_22

    iget-object v2, v8, La6/s;->h:[C

    iget v3, v8, La6/s;->i:I

    invoke-static {v7, v3, v1, v2}, Lw5/h;->g(IIZ[C)D

    move-result-wide v1

    goto :goto_b

    :cond_22
    iget-object v2, v8, La6/s;->k:[C

    if-eqz v2, :cond_23

    array-length v3, v2

    invoke-static {v7, v3, v1, v2}, Lw5/h;->g(IIZ[C)D

    move-result-wide v1

    goto :goto_b

    :cond_23
    :try_start_6
    invoke-virtual {v8}, La6/s;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lw5/h;->h(Ljava/lang/String;Z)D

    move-result-wide v1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :goto_b
    iput-wide v1, v0, Lt5/b;->V:D

    iput v6, v0, Lt5/b;->R:I

    return-void

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_24
    if-ne v1, v5, :cond_29

    sget-object v1, Ls5/s;->o:Ls5/s;

    invoke-virtual {v0, v1}, Ls5/k;->s0(Ls5/s;)Z

    move-result v1

    iget-object v2, v8, La6/s;->j:Ljava/lang/String;

    if-eqz v2, :cond_25

    invoke-static {v2, v1}, Lw5/h;->j(Ljava/lang/String;Z)F

    move-result v1

    goto :goto_c

    :cond_25
    iget v2, v8, La6/s;->c:I

    if-ltz v2, :cond_26

    iget-object v3, v8, La6/s;->b:[C

    iget v4, v8, La6/s;->d:I

    invoke-static {v2, v4, v1, v3}, Lw5/h;->i(IIZ[C)F

    move-result v1

    goto :goto_c

    :cond_26
    iget-boolean v2, v8, La6/s;->f:Z

    if-nez v2, :cond_27

    iget-object v2, v8, La6/s;->h:[C

    iget v3, v8, La6/s;->i:I

    invoke-static {v7, v3, v1, v2}, Lw5/h;->i(IIZ[C)F

    move-result v1

    goto :goto_c

    :cond_27
    iget-object v2, v8, La6/s;->k:[C

    if-eqz v2, :cond_28

    array-length v3, v2

    invoke-static {v7, v3, v1, v2}, Lw5/h;->i(IIZ[C)F

    move-result v1

    goto :goto_c

    :cond_28
    :try_start_7
    invoke-virtual {v8}, La6/s;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lw5/h;->j(Ljava/lang/String;Z)F

    move-result v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :goto_c
    iput v1, v0, Lt5/b;->U:F

    iput v5, v0, Lt5/b;->R:I

    return-void

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_29
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lt5/b;->V:D

    invoke-virtual {v8}, La6/s;->h()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lt5/b;->Y:Ljava/lang/String;

    iput v6, v0, Lt5/b;->R:I

    return-void

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Current token ("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") not numeric, can not use numeric value accessors"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ls5/i;

    invoke-direct {v2, v0, v1, v7}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v2

    :cond_2b
    const-string v1, "Internal error: _parseNumericValue called when parser instance closed"

    invoke-virtual {v0, v1}, Lt5/c;->J0(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract k1()V
.end method

.method public final l1(CI)V
    .locals 8

    iget-object v0, p0, Lt5/b;->K:Ly5/d;

    invoke-virtual {v0}, Ls5/m;->f()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 p1, 0x7d

    if-ne p2, p1, :cond_0

    const-string p1, "Object"

    goto :goto_0

    :cond_0
    const-string p1, "Array"

    :goto_0
    int-to-char p2, p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected close marker \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "\': no open "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to close"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/c;->c()Ls5/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls5/k;->b(Ljava/lang/String;Ls5/h;)Ls5/i;

    move-result-object p0

    throw p0

    :cond_1
    int-to-char p2, p2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-virtual {v0}, Ls5/m;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lt5/b;->X0()Lw5/c;

    move-result-object v3

    new-instance v2, Ls5/h;

    iget v6, v0, Ly5/d;->i:I

    iget v7, v0, Ly5/d;->j:I

    const-wide/16 v4, -0x1

    invoke-direct/range {v2 .. v7}, Ls5/h;-><init>(Lw5/c;JII)V

    filled-new-array {p2, p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Unexpected close marker \'%s\': expected \'%c\' (for %s starting at %s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/c;->c()Ls5/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls5/k;->b(Ljava/lang/String;Ls5/h;)Ls5/i;

    move-result-object p0

    throw p0
.end method

.method public final m1(ILjava/lang/String;)V
    .locals 2

    sget-object v0, Ls5/j;->s:Ls5/j;

    iget v1, p0, Ls5/k;->l:I

    invoke-virtual {v0, v1}, Ls5/j;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x20

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    int-to-char p1, p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Illegal unquoted character ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lt5/c;->F0(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): has to be escaped using backslash to be included in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/c;->c()Ls5/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls5/k;->b(Ljava/lang/String;Ls5/h;)Ls5/i;

    move-result-object p0

    throw p0
.end method

.method public final n1()Ljava/lang/String;
    .locals 1

    sget-object v0, Ls5/j;->z:Ls5/j;

    iget p0, p0, Ls5/k;->l:I

    invoke-virtual {v0, p0}, Ls5/j;->a(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "(JSON String, Number (or \'NaN\'/\'+INF\'/\'-INF\'), Array, Object or token \'null\', \'true\' or \'false\')"

    return-object p0

    :cond_0
    const-string p0, "(JSON String, Number, Array, Object or token \'null\', \'true\' or \'false\')"

    return-object p0
.end method

.method public final o1()V
    .locals 5

    iget v0, p0, Lt5/b;->R:I

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lt5/b;->T:J

    long-to-int v2, v0

    int-to-long v3, v2

    cmp-long v0, v3, v0

    if-nez v0, :cond_0

    iput v2, p0, Lt5/b;->S:I

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lt5/c;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Numeric value (%s) out of range of int (%d - %s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ls5/i;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1

    :cond_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lt5/b;->c1()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lt5/c;->s:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gtz v1, :cond_2

    sget-object v1, Lt5/c;->t:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_2

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    iput v0, p0, Lt5/b;->S:I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_3
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lt5/b;->e1()D

    move-result-wide v0

    const-wide/high16 v3, -0x3e20000000000000L    # -2.147483648E9

    cmpg-double v3, v0, v3

    if-ltz v3, :cond_4

    const-wide v3, 0x41dfffffffc00000L    # 2.147483647E9

    cmpl-double v3, v0, v3

    if-gtz v3, :cond_4

    double-to-int v0, v0

    iput v0, p0, Lt5/b;->S:I

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_5
    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lt5/b;->b1()Ljava/math/BigDecimal;

    move-result-object v0

    sget-object v1, Lt5/c;->y:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-gtz v1, :cond_6

    sget-object v1, Lt5/c;->z:Ljava/math/BigDecimal;

    invoke-virtual {v1, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v1

    if-ltz v1, :cond_6

    invoke-virtual {v0}, Ljava/math/BigDecimal;->intValue()I

    move-result v0

    iput v0, p0, Lt5/b;->S:I

    :goto_0
    iget v0, p0, Lt5/b;->R:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lt5/b;->R:I

    return-void

    :cond_6
    invoke-virtual {p0}, Lt5/c;->T0()V

    throw v2

    :cond_7
    invoke-static {}, La6/u;->a()V

    throw v2
.end method

.method public final p0()Z
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_1

    iget-boolean p0, p0, Lt5/b;->O:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final p1(II)V
    .locals 8

    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    iget-object v0, v1, Ly5/d;->f:Ly5/d;

    const/4 v7, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ly5/d;

    iget v3, v1, Ls5/m;->c:I

    add-int/2addr v2, v3

    iget-object v3, v1, Ly5/d;->e:Lg5/i;

    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg5/i;->j()Lg5/i;

    move-result-object v3

    :goto_0
    const/4 v4, 0x1

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ly5/d;-><init>(Ly5/d;ILg5/i;III)V

    iput-object v0, v1, Ly5/d;->f:Ly5/d;

    goto :goto_1

    :cond_1
    move v5, p1

    move v6, p2

    iput v2, v0, Ls5/m;->a:I

    const/4 p1, -0x1

    iput p1, v0, Ls5/m;->b:I

    iput v5, v0, Ly5/d;->i:I

    iput v6, v0, Ly5/d;->j:I

    iput-object v7, v0, Ly5/d;->g:Ljava/lang/String;

    iput-object v7, v0, Ly5/d;->h:Ljava/lang/Object;

    iget-object p1, v0, Ly5/d;->e:Lg5/i;

    if-eqz p1, :cond_2

    iput-object v7, p1, Lg5/i;->n:Ljava/lang/Object;

    iput-object v7, p1, Lg5/i;->o:Ljava/lang/Object;

    iput-object v7, p1, Lg5/i;->p:Ljava/lang/Object;

    :cond_2
    :goto_1
    iput-object v0, p0, Lt5/b;->K:Ly5/d;

    iget p1, v0, Ls5/m;->c:I

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x3e8

    if-gt p1, p0, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "getMaxNestingDepth"

    invoke-static {p2}, Ls5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Document nesting depth (%d) exceeds the maximum allowed (%d, from %s)"

    invoke-static {p1, p0}, Ls5/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7
.end method

.method public final q1(II)V
    .locals 8

    iget-object v1, p0, Lt5/b;->K:Ly5/d;

    iget-object v0, v1, Ly5/d;->f:Ly5/d;

    const/4 v7, 0x0

    if-nez v0, :cond_1

    new-instance v0, Ly5/d;

    iget v2, v1, Ls5/m;->c:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, v1, Ly5/d;->e:Lg5/i;

    if-nez v3, :cond_0

    move-object v3, v7

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lg5/i;->j()Lg5/i;

    move-result-object v3

    :goto_0
    const/4 v4, 0x2

    move v5, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Ly5/d;-><init>(Ly5/d;ILg5/i;III)V

    iput-object v0, v1, Ly5/d;->f:Ly5/d;

    goto :goto_1

    :cond_1
    move v5, p1

    move v6, p2

    const/4 p1, 0x2

    iput p1, v0, Ls5/m;->a:I

    const/4 p1, -0x1

    iput p1, v0, Ls5/m;->b:I

    iput v5, v0, Ly5/d;->i:I

    iput v6, v0, Ly5/d;->j:I

    iput-object v7, v0, Ly5/d;->g:Ljava/lang/String;

    iput-object v7, v0, Ly5/d;->h:Ljava/lang/Object;

    iget-object p1, v0, Ly5/d;->e:Lg5/i;

    if-eqz p1, :cond_2

    iput-object v7, p1, Lg5/i;->n:Ljava/lang/Object;

    iput-object v7, p1, Lg5/i;->o:Ljava/lang/Object;

    iput-object v7, p1, Lg5/i;->p:Ljava/lang/Object;

    :cond_2
    :goto_1
    iput-object v0, p0, Lt5/b;->K:Ly5/d;

    iget p1, v0, Ls5/m;->c:I

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x3e8

    if-gt p1, p0, :cond_3

    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "getMaxNestingDepth"

    invoke-static {p2}, Ls5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p0, p2}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Document nesting depth (%d) exceeds the maximum allowed (%d, from %s)"

    invoke-static {p1, p0}, Ls5/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v7
.end method

.method public final s1(Ljava/lang/String;D)Ls5/n;
    .locals 4

    iget-object v0, p0, Lt5/b;->M:La6/o;

    const/4 v1, 0x0

    iput-object v1, v0, La6/s;->b:[C

    const/4 v2, -0x1

    iput v2, v0, La6/s;->c:I

    const/4 v2, 0x0

    iput v2, v0, La6/s;->d:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, La6/o;->s(I)V

    iput-object p1, v0, La6/s;->j:Ljava/lang/String;

    iput-object v1, v0, La6/s;->k:[C

    iget-boolean p1, v0, La6/s;->f:Z

    if-eqz p1, :cond_0

    invoke-virtual {v0}, La6/s;->e()V

    :cond_0
    iput v2, v0, La6/s;->i:I

    iput-wide p2, p0, Lt5/b;->V:D

    const/16 p1, 0x8

    iput p1, p0, Lt5/b;->R:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lt5/b;->Z:Z

    iput-object v1, p0, Lt5/b;->Y:Ljava/lang/String;

    sget-object p0, Ls5/n;->C:Ls5/n;

    return-object p0
.end method

.method public final t1(IIZI)Ls5/n;
    .locals 0

    add-int/2addr p2, p1

    add-int/2addr p2, p4

    iget-object p4, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ls5/c;->d(I)V

    iput-boolean p3, p0, Lt5/b;->a0:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lt5/b;->Z:Z

    iput p1, p0, Lt5/b;->b0:I

    iput p2, p0, Lt5/b;->R:I

    const/4 p1, 0x0

    iput-object p1, p0, Lt5/b;->Y:Ljava/lang/String;

    sget-object p0, Ls5/n;->C:Ls5/n;

    return-object p0
.end method

.method public final u1(IZ)Ls5/n;
    .locals 1

    iget-object v0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Ls5/c;->e(I)V

    iput-boolean p2, p0, Lt5/b;->a0:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lt5/b;->Z:Z

    iput p1, p0, Lt5/b;->b0:I

    iput p2, p0, Lt5/b;->R:I

    const/4 p1, 0x0

    iput-object p1, p0, Lt5/b;->Y:Ljava/lang/String;

    sget-object p0, Ls5/n;->B:Ls5/n;

    return-object p0
.end method

.method public final w0()Z
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->C:Ls5/n;

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lt5/b;->Z:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
