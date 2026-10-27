.class public final Lod/e7;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D


# direct methods
.method public constructor <init>(DDDDD)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lod/e7;->a:D

    iput-wide p3, p0, Lod/e7;->b:D

    iput-wide p5, p0, Lod/e7;->c:D

    iput-wide p7, p0, Lod/e7;->d:D

    iput-wide p9, p0, Lod/e7;->e:D

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lod/e7;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lod/e7;

    iget-wide v3, p0, Lod/e7;->a:D

    iget-wide v5, p1, Lod/e7;->a:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lod/e7;->b:D

    iget-wide v5, p1, Lod/e7;->b:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lod/e7;->c:D

    iget-wide v5, p1, Lod/e7;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lod/e7;->d:D

    iget-wide v5, p1, Lod/e7;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lod/e7;->e:D

    iget-wide p0, p1, Lod/e7;->e:D

    invoke-static {v3, v4, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    if-eqz p0, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lod/e7;->a:D

    invoke-static {v0, v1}, Ljava/lang/Double;->hashCode(D)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lod/e7;->b:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lod/e7;->c:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lod/e7;->d:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v1, p0, Lod/e7;->e:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, "ViewBox(south="

    const-string v1, ", west="

    iget-wide v2, p0, Lod/e7;->a:D

    invoke-static {v2, v3, v0, v1}, La6/q;->l(DLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lod/e7;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", north="

    const-string v2, ", east="

    iget-wide v3, p0, Lod/e7;->c:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lod/e7;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", zoom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lod/e7;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
