.class public final Lad/p1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldd/l0;

.field public final b:Lad/o1;

.field public final c:J


# direct methods
.method public constructor <init>(Ldd/l0;Lad/o1;J)V
    .locals 1

    const-string v0, "fix"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/p1;->a:Ldd/l0;

    iput-object p2, p0, Lad/p1;->b:Lad/o1;

    iput-wide p3, p0, Lad/p1;->c:J

    return-void
.end method


# virtual methods
.method public final a()D
    .locals 6

    iget-object v0, p0, Lad/p1;->a:Ldd/l0;

    iget-object v0, v0, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    sget-object v0, Lad/o1;->l:Lad/o1;

    iget-object v1, p0, Lad/p1;->b:Lad/o1;

    if-ne v1, v0, :cond_1

    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_0

    :cond_1
    const/high16 v0, 0x43960000    # 300.0f

    :goto_0
    float-to-double v0, v0

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lad/p1;->c:J

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lad/p1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lad/p1;

    iget-object v1, p0, Lad/p1;->a:Ldd/l0;

    iget-object v3, p1, Lad/p1;->a:Ldd/l0;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lad/p1;->b:Lad/o1;

    iget-object v3, p1, Lad/p1;->b:Lad/o1;

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lad/p1;->c:J

    iget-wide p0, p1, Lad/p1;->c:J

    cmp-long p0, v3, p0

    if-eqz p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lad/p1;->a:Ldd/l0;

    invoke-virtual {v0}, Ldd/l0;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lad/p1;->b:Lad/o1;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lad/p1;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Picked(fix="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lad/p1;->a:Ldd/l0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/p1;->b:Lad/o1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", ageMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    iget-wide v2, p0, Lad/p1;->c:J

    invoke-static {v2, v3, v1, v0}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
