.class public abstract Lt5/a;
.super Ls5/g;
.source "SourceFile"


# static fields
.field public static final s:I


# instance fields
.field public final m:Ls5/o;

.field public n:I

.field public final o:Lw5/d;

.field public p:Z

.field public q:Ly5/f;

.field public r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ls5/f;->t:Ls5/f;

    iget v0, v0, Ls5/f;->m:I

    sget-object v1, Ls5/f;->s:Ls5/f;

    iget v1, v1, Ls5/f;->m:I

    or-int/2addr v0, v1

    sget-object v1, Ls5/f;->v:Ls5/f;

    iget v1, v1, Ls5/f;->m:I

    or-int/2addr v0, v1

    sput v0, Lt5/a;->s:I

    return-void
.end method

.method public constructor <init>(ILs5/o;Lw5/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lt5/a;->n:I

    iput-object p2, p0, Lt5/a;->m:Ls5/o;

    iput-object p3, p0, Lt5/a;->o:Lw5/d;

    sget-object p2, Ls5/f;->v:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    new-instance p2, Lg5/i;

    const/16 v0, 0x12

    invoke-direct {p2, v0, p0}, Lg5/i;-><init>(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    new-instance v0, Ly5/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p3, p2}, Ly5/f;-><init>(ILy5/f;Lg5/i;)V

    iput-object v0, p0, Lt5/a;->q:Ly5/f;

    sget-object p2, Ls5/f;->t:Ls5/f;

    invoke-virtual {p2, p1}, Ls5/f;->a(I)Z

    move-result p1

    iput-boolean p1, p0, Lt5/a;->p:Z

    return-void
.end method


# virtual methods
.method public A0(II)V
    .locals 2

    sget v0, Lt5/a;->s:I

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Ls5/f;->t:Ls5/f;

    invoke-virtual {v0, p1}, Ls5/f;->a(I)Z

    move-result v0

    iput-boolean v0, p0, Lt5/a;->p:Z

    sget-object v0, Ls5/f;->s:Ls5/f;

    invoke-virtual {v0, p2}, Ls5/f;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1}, Ls5/f;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x7f

    invoke-virtual {p0, v0}, Ls5/g;->w(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ls5/g;->w(I)V

    :cond_2
    :goto_0
    sget-object v0, Ls5/f;->v:Ls5/f;

    invoke-virtual {v0, p2}, Ls5/f;->a(I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v0, p1}, Ls5/f;->a(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lt5/a;->q:Ly5/f;

    iget-object p2, p1, Ly5/f;->e:Lg5/i;

    if-nez p2, :cond_4

    new-instance p2, Lg5/i;

    const/16 v0, 0x12

    invoke-direct {p2, v0, p0}, Lg5/i;-><init>(ILjava/lang/Object;)V

    iput-object p2, p1, Ly5/f;->e:Lg5/i;

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    return-void

    :cond_3
    iget-object p1, p0, Lt5/a;->q:Ly5/f;

    const/4 p2, 0x0

    iput-object p2, p1, Ly5/f;->e:Lg5/i;

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    :cond_4
    :goto_1
    return-void
.end method

.method public abstract B0(Ljava/lang/String;)V
.end method

.method public close()V
    .locals 1

    iget-boolean v0, p0, Lt5/a;->r:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lt5/a;->o:Lw5/d;

    invoke-virtual {v0}, Lw5/d;->close()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lt5/a;->r:Z

    :cond_0
    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lt5/a;->q:Ly5/f;

    if-eqz p0, :cond_0

    iput-object p1, p0, Ly5/f;->h:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public i0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lt5/a;->B0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls5/g;->g0(Ljava/lang/String;)V

    return-void
.end method

.method public j0(Ls5/q;)V
    .locals 1

    const-string v0, "write raw value"

    invoke-virtual {p0, v0}, Lt5/a;->B0(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ls5/g;->h0(Ls5/q;)V

    return-void
.end method

.method public m(Ls5/f;)Ls5/g;
    .locals 3

    iget v0, p1, Ls5/f;->m:I

    iget v1, p0, Lt5/a;->n:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Lt5/a;->n:I

    sget v1, Lt5/a;->s:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    sget-object v0, Ls5/f;->t:Ls5/f;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lt5/a;->p:Z

    return-object p0

    :cond_0
    sget-object v0, Ls5/f;->s:Ls5/f;

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Ls5/g;->w(I)V

    return-object p0

    :cond_1
    sget-object v0, Ls5/f;->v:Ls5/f;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lt5/a;->q:Ly5/f;

    const/4 v0, 0x0

    iput-object v0, p1, Ly5/f;->e:Lg5/i;

    iput-object p1, p0, Lt5/a;->q:Ly5/f;

    :cond_2
    return-object p0
.end method

.method public final n()Ly5/f;
    .locals 0

    iget-object p0, p0, Lt5/a;->q:Ly5/f;

    return-object p0
.end method

.method public p0(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lt5/a;->o0(Ljava/lang/Object;)V

    return-void
.end method

.method public final q(Ls5/f;)Z
    .locals 0

    iget p0, p0, Lt5/a;->n:I

    iget p1, p1, Ls5/f;->m:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final t(II)Ls5/g;
    .locals 2

    iget v0, p0, Lt5/a;->n:I

    not-int v1, p2

    and-int/2addr v1, v0

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    xor-int p2, v0, p1

    if-eqz p2, :cond_0

    iput p1, p0, Lt5/a;->n:I

    invoke-virtual {p0, p1, p2}, Lt5/a;->A0(II)V

    :cond_0
    return-object p0
.end method

.method public final writeObject(Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Ls5/g;->U()V

    return-void

    :cond_0
    iget-object v0, p0, Lt5/a;->m:Ls5/o;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Ls5/o;->d(Ls5/g;Ljava/lang/Object;)V

    return-void

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ls5/g;->q0(Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Ls5/g;->X(I)V

    return-void

    :cond_3
    instance-of v1, v0, Ljava/lang/Long;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ls5/g;->Y(J)V

    return-void

    :cond_4
    instance-of v1, v0, Ljava/lang/Double;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ls5/g;->V(D)V

    return-void

    :cond_5
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Ls5/g;->W(F)V

    return-void

    :cond_6
    instance-of v1, v0, Ljava/lang/Short;

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->shortValue()S

    move-result p1

    invoke-virtual {p0, p1}, Ls5/g;->c0(S)V

    return-void

    :cond_7
    instance-of v1, v0, Ljava/lang/Byte;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result p1

    int-to-short p1, p1

    invoke-virtual {p0, p1}, Ls5/g;->c0(S)V

    return-void

    :cond_8
    instance-of v1, v0, Ljava/math/BigInteger;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ls5/g;->b0(Ljava/math/BigInteger;)V

    return-void

    :cond_9
    instance-of v1, v0, Ljava/math/BigDecimal;

    if-eqz v1, :cond_a

    check-cast v0, Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ls5/g;->a0(Ljava/math/BigDecimal;)V

    return-void

    :cond_a
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v1, :cond_b

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    invoke-virtual {p0, p1}, Ls5/g;->X(I)V

    return-void

    :cond_b
    instance-of v1, v0, Ljava/util/concurrent/atomic/AtomicLong;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ls5/g;->Y(J)V

    return-void

    :cond_c
    instance-of v0, p1, [B

    if-eqz v0, :cond_d

    check-cast p1, [B

    sget-object v0, Ls5/b;->a:Ls5/a;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, v0, p1, v1, v2}, Ls5/g;->J(Ls5/a;[BII)V

    return-void

    :cond_d
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_e

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Ls5/g;->K(Z)V

    return-void

    :cond_e
    instance-of v0, p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_f

    check-cast p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    invoke-virtual {p0, p1}, Ls5/g;->K(Z)V

    return-void

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final x0(Ljava/math/BigDecimal;)Ljava/lang/String;
    .locals 4

    const/16 v0, 0x270f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ls5/f;->u:Ls5/f;

    iget v3, p0, Lt5/a;->n:I

    invoke-virtual {v2, v3}, Ls5/f;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->scale()I

    move-result v2

    const/16 v3, -0x270f

    if-lt v2, v3, :cond_0

    if-gt v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1, v1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Attempt to write plain `java.math.BigDecimal` (see JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN) with illegal scale (%d): needs to be between [-%d, %d]"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    invoke-virtual {p1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final y0([BII)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length p1, p1

    add-int v1, p2, p3

    or-int v2, p2, p3

    or-int/2addr v2, v1

    sub-int v1, p1, v1

    or-int/2addr v1, v2

    if-ltz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `byte[]` of length %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "Invalid `byte[]` argument: `null`"

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    throw v0
.end method

.method public final z0(I[C)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    array-length p2, p2

    sub-int v1, p2, p1

    or-int/2addr v1, p1

    if-ltz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Invalid \'offset\' (%d) and/or \'len\' (%d) arguments for `char[]` of length %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "Invalid `char[]` argument: `null`"

    invoke-virtual {p0, p1}, Ls5/g;->b(Ljava/lang/String;)V

    throw v0
.end method
