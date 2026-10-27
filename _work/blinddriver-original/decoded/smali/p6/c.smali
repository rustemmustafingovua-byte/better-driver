.class public final Lp6/c;
.super Lp6/u;
.source "SourceFile"


# static fields
.field public static final m:Ljava/math/BigInteger;

.field public static final n:Ljava/math/BigInteger;

.field public static final o:Ljava/math/BigInteger;

.field public static final p:Ljava/math/BigInteger;


# instance fields
.field public final l:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, -0x80000000

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lp6/c;->m:Ljava/math/BigInteger;

    const-wide/32 v0, 0x7fffffff

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lp6/c;->n:Ljava/math/BigInteger;

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lp6/c;->o:Ljava/math/BigInteger;

    const-wide v0, 0x7fffffffffffffffL

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lp6/c;->p:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp6/c;->l:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Number;
    .locals 0

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final H()Z
    .locals 1

    sget-object v0, Lp6/c;->m:Ljava/math/BigInteger;

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lp6/c;->n:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

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

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0
.end method

.method public final K()J
    .locals 2

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->B:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ls5/g;->b0(Ljava/math/BigInteger;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    instance-of v1, p1, Lp6/c;

    if-eqz v1, :cond_2

    check-cast p1, Lp6/c;

    iget-object p1, p1, Lp6/c;->l:Ljava/math/BigInteger;

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-static {p1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    return v0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final j()Z
    .locals 1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    return-object p0
.end method

.method public final t()Z
    .locals 1

    sget-object v0, Lp6/c;->o:Ljava/math/BigInteger;

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lp6/c;->p:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 1

    new-instance v0, Ljava/math/BigDecimal;

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public final v()D
    .locals 2

    iget-object p0, p0, Lp6/c;->l:Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method
