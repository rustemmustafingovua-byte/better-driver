.class public Lpb/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public l:D

.field public m:D

.field public n:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5
    invoke-direct {p0, v0, v1, v0, v1}, Lpb/a;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 7
    invoke-direct/range {v0 .. v6}, Lpb/a;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lpb/a;->l:D

    .line 3
    iput-wide p3, p0, Lpb/a;->m:D

    .line 4
    iput-wide p5, p0, Lpb/a;->n:D

    return-void
.end method

.method public constructor <init>(Lpb/a;)V
    .locals 7

    .line 6
    iget-wide v1, p1, Lpb/a;->l:D

    iget-wide v3, p1, Lpb/a;->m:D

    invoke-virtual {p1}, Lpb/a;->o()D

    move-result-wide v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lpb/a;-><init>(DDD)V

    return-void
.end method

.method public static p(D)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    const/16 v0, 0x20

    ushr-long v0, p0, v0

    xor-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public final a(Lpb/a;)I
    .locals 6

    iget-wide v0, p0, Lpb/a;->l:D

    iget-wide v2, p1, Lpb/a;->l:D

    cmpg-double v4, v0, v2

    const/4 v5, -0x1

    if-gez v4, :cond_0

    return v5

    :cond_0
    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_1

    return v1

    :cond_1
    iget-wide v2, p0, Lpb/a;->m:D

    iget-wide p0, p1, Lpb/a;->m:D

    cmpg-double v0, v2, p0

    if-gez v0, :cond_2

    return v5

    :cond_2
    cmpl-double p0, v2, p0

    if-lez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lpb/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "this shouldn\'t happen because this class is Cloneable"

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lpb/a;

    invoke-virtual {p0, p1}, Lpb/a;->a(Lpb/a;)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lpb/a;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p1, Lpb/a;

    invoke-virtual {p0, p1}, Lpb/a;->i(Lpb/a;)Z

    move-result p0

    return p0
.end method

.method public f()Lpb/a;
    .locals 1

    new-instance v0, Lpb/a;

    invoke-direct {v0, p0}, Lpb/a;-><init>(Lpb/a;)V

    return-object v0
.end method

.method public final h(Lpb/a;)D
    .locals 4

    iget-wide v0, p0, Lpb/a;->l:D

    iget-wide v2, p1, Lpb/a;->l:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lpb/a;->m:D

    iget-wide p0, p1, Lpb/a;->m:D

    sub-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public final hashCode()I
    .locals 3

    iget-wide v0, p0, Lpb/a;->l:D

    invoke-static {v0, v1}, Lpb/a;->p(D)I

    move-result v0

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget-wide v1, p0, Lpb/a;->m:D

    invoke-static {v1, v2}, Lpb/a;->p(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i(Lpb/a;)Z
    .locals 4

    iget-wide v0, p0, Lpb/a;->l:D

    iget-wide v2, p1, Lpb/a;->l:D

    cmpl-double v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-wide v2, p0, Lpb/a;->m:D

    iget-wide p0, p1, Lpb/a;->m:D

    cmpl-double p0, v2, p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public j()D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public l(I)D
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lpb/a;->o()D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ordinate index: "

    invoke-static {p1, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-wide p0, p0, Lpb/a;->m:D

    return-wide p0

    :cond_2
    iget-wide p0, p0, Lpb/a;->l:D

    return-wide p0
.end method

.method public o()D
    .locals 2

    iget-wide v0, p0, Lpb/a;->n:D

    return-wide v0
.end method

.method public r(Lpb/a;)V
    .locals 2

    iget-wide v0, p1, Lpb/a;->l:D

    iput-wide v0, p0, Lpb/a;->l:D

    iget-wide v0, p1, Lpb/a;->m:D

    iput-wide v0, p0, Lpb/a;->m:D

    invoke-virtual {p1}, Lpb/a;->o()D

    move-result-wide v0

    iput-wide v0, p0, Lpb/a;->n:D

    return-void
.end method

.method public s(D)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ordinate index: 3"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lpb/a;->l:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lpb/a;->m:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lpb/a;->o()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public u(DI)V
    .locals 1

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lpb/a;->v(D)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid ordinate index: "

    invoke-static {p3, p1}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iput-wide p1, p0, Lpb/a;->m:D

    return-void

    :cond_2
    iput-wide p1, p0, Lpb/a;->l:D

    return-void
.end method

.method public v(D)V
    .locals 0

    iput-wide p1, p0, Lpb/a;->n:D

    return-void
.end method
