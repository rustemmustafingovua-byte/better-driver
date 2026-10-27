.class public final Lp6/g;
.super Lp6/u;
.source "SourceFile"


# static fields
.field public static final m:Ljava/math/BigDecimal;

.field public static final n:Ljava/math/BigDecimal;

.field public static final o:Ljava/math/BigDecimal;

.field public static final p:Ljava/math/BigDecimal;


# instance fields
.field public final l:Ljava/math/BigDecimal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lp6/g;->m:Ljava/math/BigDecimal;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lp6/g;->n:Ljava/math/BigDecimal;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lp6/g;->o:Ljava/math/BigDecimal;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lp6/g;->p:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigDecimal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final H()Z
    .locals 1

    sget-object v0, Lp6/g;->m:Ljava/math/BigDecimal;

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lp6/g;->n:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final I()I
    .locals 0

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    return p0
.end method

.method public final K()J
    .locals 2

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->C:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p1, p0}, Ls5/g;->a0(Ljava/math/BigDecimal;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lp6/g;

    if-eqz v2, :cond_5

    check-cast p1, Lp6/g;

    iget-object p1, p1, Lp6/g;->l:Ljava/math/BigDecimal;

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    if-nez p1, :cond_3

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    if-nez p0, :cond_4

    return v1

    :cond_4
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-nez p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/math/BigInteger;
    .locals 3

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const v2, 0x186a0

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    new-instance v0, Lu5/a;

    const-string v1, "BigDecimal scale (%d) magnitude exceeds the maximum allowed (%d)"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final t()Z
    .locals 1

    sget-object v0, Lp6/g;->o:Ljava/math/BigDecimal;

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lp6/g;->p:Ljava/math/BigDecimal;

    invoke-virtual {p0, v0}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 0

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    return-object p0
.end method

.method public final v()D
    .locals 2

    iget-object p0, p0, Lp6/g;->l:Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
