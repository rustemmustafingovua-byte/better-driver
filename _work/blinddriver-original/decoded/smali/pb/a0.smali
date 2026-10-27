.class public final Lpb/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final o:Lpb/z;

.field public static final p:Lpb/z;

.field public static final q:Lpb/z;


# instance fields
.field public l:Lpb/z;

.field public m:D

.field public n:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lpb/z;

    const-string v1, "FIXED"

    invoke-direct {v0, v1}, Lpb/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpb/a0;->o:Lpb/z;

    new-instance v0, Lpb/z;

    const-string v1, "FLOATING"

    invoke-direct {v0, v1}, Lpb/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpb/a0;->p:Lpb/z;

    new-instance v0, Lpb/z;

    const-string v1, "FLOATING SINGLE"

    invoke-direct {v0, v1}, Lpb/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lpb/a0;->q:Lpb/z;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    iget-object v0, p0, Lpb/a0;->l:Lpb/z;

    sget-object v1, Lpb/a0;->p:Lpb/z;

    const/16 v2, 0x10

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    sget-object v1, Lpb/a0;->q:Lpb/z;

    if-ne v0, v1, :cond_1

    const/4 p0, 0x6

    return p0

    :cond_1
    sget-object v1, Lpb/a0;->o:Lpb/z;

    if-ne v0, v1, :cond_2

    iget-wide v0, p0, Lpb/a0;->m:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public final b(D)D
    .locals 4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lpb/a0;->l:Lpb/z;

    sget-object v1, Lpb/a0;->q:Lpb/z;

    if-ne v0, v1, :cond_1

    double-to-float p0, p1

    float-to-double p0, p0

    return-wide p0

    :cond_1
    sget-object v1, Lpb/a0;->o:Lpb/z;

    if-ne v0, v1, :cond_3

    iget-wide v0, p0, Lpb/a0;->n:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_2

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iget-wide v0, p0, Lpb/a0;->n:D

    mul-double/2addr p1, v0

    return-wide p1

    :cond_2
    iget-wide v0, p0, Lpb/a0;->m:D

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    iget-wide v0, p0, Lpb/a0;->m:D

    div-double/2addr p1, v0

    :cond_3
    :goto_0
    return-wide p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lpb/a0;

    invoke-virtual {p0}, Lpb/a0;->a()I

    move-result p0

    invoke-virtual {p1}, Lpb/a0;->a()I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lpb/a0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lpb/a0;

    iget-object v0, p0, Lpb/a0;->l:Lpb/z;

    iget-object v2, p1, Lpb/a0;->l:Lpb/z;

    if-ne v0, v2, :cond_1

    iget-wide v2, p0, Lpb/a0;->m:D

    iget-wide p0, p1, Lpb/a0;->m:D

    cmpl-double p0, v2, p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lpb/a0;->l:Lpb/z;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    iget-wide v2, p0, Lpb/a0;->m:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/2addr v0, v1

    const/16 p0, 0x20

    ushr-long v4, v2, p0

    xor-long v1, v2, v4

    long-to-int p0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lpb/a0;->l:Lpb/z;

    sget-object v1, Lpb/a0;->p:Lpb/z;

    if-ne v0, v1, :cond_0

    const-string p0, "Floating"

    return-object p0

    :cond_0
    sget-object v1, Lpb/a0;->q:Lpb/z;

    if-ne v0, v1, :cond_1

    const-string p0, "Floating-Single"

    return-object p0

    :cond_1
    sget-object v1, Lpb/a0;->o:Lpb/z;

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fixed (Scale="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lpb/a0;->m:D

    const-string p0, ")"

    invoke-static {v0, v1, v2, p0}, Lm/a;->m(Ljava/lang/StringBuilder;DLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "UNKNOWN"

    return-object p0
.end method
