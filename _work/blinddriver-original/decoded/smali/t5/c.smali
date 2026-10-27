.class public abstract Lt5/c;
.super Ls5/k;
.source "SourceFile"


# static fields
.field public static final r:[B

.field public static final s:Ljava/math/BigInteger;

.field public static final t:Ljava/math/BigInteger;

.field public static final u:Ljava/math/BigInteger;

.field public static final v:Ljava/math/BigInteger;

.field public static final w:Ljava/math/BigDecimal;

.field public static final x:Ljava/math/BigDecimal;

.field public static final y:Ljava/math/BigDecimal;

.field public static final z:Ljava/math/BigDecimal;


# instance fields
.field public final n:Ls5/c;

.field public o:Ls5/n;

.field public p:J

.field public final q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lt5/c;->r:[B

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lt5/c;->s:Ljava/math/BigInteger;

    const-wide/32 v1, 0x7fffffff

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lt5/c;->t:Ljava/math/BigInteger;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lt5/c;->u:Ljava/math/BigInteger;

    const-wide v3, 0x7fffffffffffffffL

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lt5/c;->v:Ljava/math/BigInteger;

    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v4, Lt5/c;->w:Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v2, Lt5/c;->x:Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v2, Lt5/c;->y:Ljava/math/BigDecimal;

    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    sput-object v0, Lt5/c;->z:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(ILs5/c;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ls5/k;->l:I

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Ls5/c;->m:Ls5/c;

    :cond_0
    iput-object p2, p0, Lt5/c;->n:Ls5/c;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lt5/c;->q:Z

    return-void
.end method

.method public constructor <init>(Ls5/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls5/k;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Ls5/c;->m:Ls5/c;

    :cond_0
    iput-object p1, p0, Lt5/c;->n:Ls5/c;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lt5/c;->q:Z

    return-void
.end method

.method public static final F0(I)Ljava/lang/String;
    .locals 5

    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v1

    const-string v2, ")"

    if-eqz v1, :cond_0

    const-string v0, "(CTRL-CHAR, code "

    invoke-static {p0, v0, v2}, Lr0/i;->f(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v1, 0xff

    const-string v3, "\' (code "

    const-string v4, "\'"

    if-le p0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " / 0x"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static H0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[Integer with %d digits]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static I0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "[number with %d characters]"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public C0()Ls5/k;
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->u:Ls5/n;

    if-eq v0, v1, :cond_0

    sget-object v1, Ls5/n;->w:Ls5/n;

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lt5/c;->G0()V

    return-object p0

    :cond_2
    iget-boolean v2, v1, Ls5/n;->p:Z

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v2, v1, Ls5/n;->q:Z

    if-eqz v2, :cond_4

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_1

    :goto_1
    return-object p0

    :cond_4
    sget-object v2, Ls5/n;->t:Ls5/n;

    if-eq v1, v2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not enough content available for `skipChildren()`: non-blocking parser? ("

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ls5/i;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v1
.end method

.method public D0()Ls5/c;
    .locals 0

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    return-object p0
.end method

.method public final E0(Ljava/lang/String;La6/d;Ls5/a;)V
    .locals 0

    :try_start_0
    invoke-virtual {p3, p1, p2}, Ls5/a;->b(Ljava/lang/String;La6/d;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lt5/c;->J0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract G0()V
.end method

.method public final J0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ls5/i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0
.end method

.method public final K0()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lt5/c;->o:Ls5/n;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final L0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lw5/e;

    const-string v1, "Unexpected end-of-input"

    invoke-static {v1, p1}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0
.end method

.method public final M0(Ls5/n;)V
    .locals 1

    sget-object v0, Ls5/n;->A:Ls5/n;

    if-eq p1, v0, :cond_2

    sget-object v0, Ls5/n;->B:Ls5/n;

    if-eq p1, v0, :cond_1

    sget-object v0, Ls5/n;->C:Ls5/n;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, " in a value"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, " in a Number value"

    goto :goto_1

    :cond_2
    const-string p1, " in a String value"

    :goto_1
    invoke-virtual {p0, p1}, Lt5/c;->L0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final N0(ILjava/lang/String;)V
    .locals 2

    if-ltz p1, :cond_1

    invoke-static {p1}, Lt5/c;->F0(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected character ("

    const-string v1, ")"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string v0, ": "

    invoke-static {p1, v0, p2}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lt5/c;->c()Ls5/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls5/k;->b(Ljava/lang/String;Ls5/h;)Ls5/i;

    move-result-object p0

    throw p0

    :cond_1
    invoke-virtual {p0}, Lt5/c;->K0()V

    const/4 p0, 0x0

    throw p0
.end method

.method public final O0(ILjava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lt5/c;->F0(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpected character ("

    const-string v1, ") in numeric value"

    invoke-static {v0, p1, v1}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ": "

    invoke-static {p1, v0, p2}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lt5/c;->c()Ls5/h;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ls5/k;->b(Ljava/lang/String;Ls5/h;)Ls5/i;

    move-result-object p0

    throw p0
.end method

.method public final P0(I)V
    .locals 3

    int-to-char v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal character ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lt5/c;->F0(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "): only regular white space (\\r, \\n, \\t) is allowed between tokens"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1e

    if-ne p1, v1, :cond_0

    const-string p1, " (consider enabling `JsonReadFeature.ALLOW_RS_CONTROL_CHAR` to allow use of Record Separators (\\u001E))"

    invoke-static {v0, p1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance p1, Ls5/i;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw p1
.end method

.method public final Q0(Ls5/n;)V
    .locals 4

    iput-object p1, p0, Lt5/c;->o:Ls5/n;

    iget-boolean p1, p0, Lt5/c;->q:Z

    if-eqz p1, :cond_1

    iget-wide v0, p0, Lt5/c;->p:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lt5/c;->p:J

    iget-object p0, p0, Lt5/c;->n:Ls5/c;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 p0, -0x1

    cmp-long v2, v0, p0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "getMaxTokenCount"

    invoke-static {p1}, Ls5/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Token count (%d) exceeds the maximum allowed (%d, from %s)"

    invoke-static {p1, p0}, Ls5/c;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public R0()I
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    if-eq v0, v1, :cond_6

    sget-object v1, Ls5/n;->C:Ls5/n;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, v0, Ls5/n;->o:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_5

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v1

    :cond_4
    invoke-static {p0}, Lw5/h;->c(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    invoke-virtual {p0}, Ls5/k;->X()I

    move-result p0

    return p0
.end method

.method public S()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt5/c;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public S0()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->A:Ls5/n;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Ls5/k;->q()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_3

    sget-object v1, Ls5/n;->F:Ls5/n;

    if-eq v0, v1, :cond_3

    iget-boolean v0, v0, Ls5/n;->s:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final T0()V
    .locals 3

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
.end method

.method public final U0()V
    .locals 1

    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lt5/c;->V0(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final V0(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lt5/c;->H0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-wide v1, 0x7fffffffffffffffL

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Numeric value (%s) out of range of long (%d - %s)"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ls5/i;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ls5/i;-><init>(Ls5/k;Ljava/lang/String;I)V

    throw v0
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lt5/c;->o:Ls5/n;

    :cond_0
    return-void
.end method

.method public m0()I
    .locals 2

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    if-eq v0, v1, :cond_1

    sget-object v1, Ls5/n;->C:Ls5/n;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lt5/c;->R0()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Ls5/k;->X()I

    move-result p0

    return p0
.end method

.method public final n0()J
    .locals 3

    iget-object v0, p0, Lt5/c;->o:Ls5/n;

    sget-object v1, Ls5/n;->B:Ls5/n;

    if-eq v0, v1, :cond_8

    sget-object v2, Ls5/n;->C:Ls5/n;

    if-ne v0, v2, :cond_0

    goto :goto_2

    :cond_0
    if-eq v0, v1, :cond_7

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_6

    iget v0, v0, Ls5/n;->o:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_6

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_3
    const-wide/16 v0, 0x1

    return-wide v0

    :cond_4
    invoke-virtual {p0}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {p0}, Lw5/h;->d(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_6
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0

    :cond_7
    :goto_1
    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide v0

    return-wide v0

    :cond_8
    :goto_2
    invoke-virtual {p0}, Ls5/k;->Y()J

    move-result-wide v0

    return-wide v0
.end method

.method public o0()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lt5/c;->S0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q0(Ls5/n;)Z
    .locals 0

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final r0(I)Z
    .locals 0

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    if-nez p0, :cond_0

    if-nez p1, :cond_1

    goto :goto_0

    :cond_0
    iget p0, p0, Ls5/n;->o:I

    if-ne p0, p1, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final t()Ls5/n;
    .locals 0

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    return-object p0
.end method

.method public t0()Z
    .locals 1

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    sget-object v0, Ls5/n;->B:Ls5/n;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public u0()Z
    .locals 1

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    sget-object v0, Ls5/n;->w:Ls5/n;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final v0()Z
    .locals 1

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    sget-object v0, Ls5/n;->u:Ls5/n;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final w()I
    .locals 0

    iget-object p0, p0, Lt5/c;->o:Ls5/n;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Ls5/n;->o:I

    return p0
.end method

.method public y()Ls5/h;
    .locals 0

    invoke-virtual {p0}, Lt5/c;->n()Ls5/h;

    move-result-object p0

    return-object p0
.end method
