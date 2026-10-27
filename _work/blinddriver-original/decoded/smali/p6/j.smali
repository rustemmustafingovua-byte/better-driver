.class public final Lp6/j;
.super Lp6/u;
.source "SourceFile"


# static fields
.field public static final m:[Lp6/j;


# instance fields
.field public final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v1, v0, [Lp6/j;

    sput-object v1, Lp6/j;->m:[Lp6/j;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v2, Lp6/j;->m:[Lp6/j;

    new-instance v3, Lp6/j;

    add-int/lit8 v4, v1, -0x1

    invoke-direct {v3, v4}, Lp6/j;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lp6/j;->l:I

    return-void
.end method


# virtual methods
.method public final C()Ljava/lang/Number;
    .locals 0

    iget p0, p0, Lp6/j;->l:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final I()I
    .locals 0

    iget p0, p0, Lp6/j;->l:I

    return p0
.end method

.method public final K()J
    .locals 2

    iget p0, p0, Lp6/j;->l:I

    int-to-long v0, p0

    return-wide v0
.end method

.method public final b()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final c()Ls5/n;
    .locals 0

    sget-object p0, Ls5/n;->B:Ls5/n;

    return-object p0
.end method

.method public final d(Ls5/g;Lb6/r0;)V
    .locals 0

    iget p0, p0, Lp6/j;->l:I

    invoke-virtual {p1, p0}, Ls5/g;->X(I)V

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
    instance-of v2, p1, Lp6/j;

    if-eqz v2, :cond_2

    check-cast p1, Lp6/j;

    iget p1, p1, Lp6/j;->l:I

    iget p0, p0, Lp6/j;->l:I

    if-ne p1, p0, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 0

    iget p0, p0, Lp6/j;->l:I

    return p0
.end method

.method public final j()Z
    .locals 0

    iget p0, p0, Lp6/j;->l:I

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final q()Ljava/lang/String;
    .locals 3

    sget-object v0, Lw5/i;->d:[Ljava/lang/String;

    array-length v1, v0

    iget p0, p0, Lp6/j;->l:I

    if-ge p0, v1, :cond_1

    if-ltz p0, :cond_0

    aget-object p0, v0, p0

    return-object p0

    :cond_0
    neg-int v0, p0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lw5/i;->e:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object p0, v1, v0

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/math/BigInteger;
    .locals 2

    iget p0, p0, Lp6/j;->l:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final u()Ljava/math/BigDecimal;
    .locals 2

    iget p0, p0, Lp6/j;->l:I

    int-to-long v0, p0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0
.end method

.method public final v()D
    .locals 2

    iget p0, p0, Lp6/j;->l:I

    int-to-double v0, p0

    return-wide v0
.end method
