.class public final Lad/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lua/nav/routing/GeoPoint;

.field public final b:Ljava/lang/Double;

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:Lua/nav/routing/GeoPoint;

.field public final g:D

.field public final h:J

.field public final i:D

.field public final j:D

.field public final k:Z


# direct methods
.method public constructor <init>(Lua/nav/routing/GeoPoint;Ljava/lang/Double;DDDLua/nav/routing/GeoPoint;DJDDZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    iput-object p2, p0, Lad/q1;->b:Ljava/lang/Double;

    iput-wide p3, p0, Lad/q1;->c:D

    iput-wide p5, p0, Lad/q1;->d:D

    iput-wide p7, p0, Lad/q1;->e:D

    iput-object p9, p0, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    iput-wide p10, p0, Lad/q1;->g:D

    iput-wide p12, p0, Lad/q1;->h:J

    iput-wide p14, p0, Lad/q1;->i:D

    move-wide/from16 p1, p16

    iput-wide p1, p0, Lad/q1;->j:D

    move/from16 p1, p18

    iput-boolean p1, p0, Lad/q1;->k:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lad/q1;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lad/q1;

    iget-object v1, p0, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lad/q1;->b:Ljava/lang/Double;

    iget-object v3, p1, Lad/q1;->b:Ljava/lang/Double;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lad/q1;->c:D

    iget-wide v5, p1, Lad/q1;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lad/q1;->d:D

    iget-wide v5, p1, Lad/q1;->d:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lad/q1;->e:D

    iget-wide v5, p1, Lad/q1;->e:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-wide v3, p0, Lad/q1;->g:D

    iget-wide v5, p1, Lad/q1;->g:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lad/q1;->h:J

    iget-wide v5, p1, Lad/q1;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-wide v3, p0, Lad/q1;->i:D

    iget-wide v5, p1, Lad/q1;->i:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lad/q1;->j:D

    iget-wide v5, p1, Lad/q1;->j:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-boolean p0, p0, Lad/q1;->k:Z

    iget-boolean p1, p1, Lad/q1;->k:Z

    if-eq p0, p1, :cond_c

    return v2

    :cond_c
    return v0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lad/q1;->b:Ljava/lang/Double;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lad/q1;->c:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v3, p0, Lad/q1;->d:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v3, p0, Lad/q1;->e:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-object v3, p0, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Lad/q1;->g:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lad/q1;->h:J

    invoke-static {v0, v1, v2, v3}, Lm/a;->f(IIJ)I

    move-result v0

    iget-wide v2, p0, Lad/q1;->i:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v2, p0, Lad/q1;->j:D

    invoke-static {v0, v2, v3, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-boolean p0, p0, Lad/q1;->k:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RoadEstimate(point="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lad/q1;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", headingDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/q1;->b:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", confidence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lad/q1;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", radiusM="

    const-string v2, ", routeMass="

    iget-wide v3, p0, Lad/q1;->d:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lad/q1;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", alt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/q1;->f:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", altWeight="

    const-string v2, ", atMs="

    iget-wide v3, p0, Lad/q1;->g:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lad/q1;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", turnDeg="

    const-string v2, ", yawSumDeg="

    iget-wide v3, p0, Lad/q1;->i:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lad/q1;->j:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", gyroFresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lad/q1;->k:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
