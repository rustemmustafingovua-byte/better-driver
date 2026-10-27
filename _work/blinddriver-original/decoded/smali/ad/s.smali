.class public final Lad/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lua/nav/routing/GeoPoint;

.field public final b:F

.field public final c:Z

.field public final d:D

.field public final e:Z

.field public final f:D

.field public final g:Ljava/lang/String;

.field public final h:J

.field public final i:Z

.field public final j:Z

.field public final k:Z

.field public final l:Lua/nav/routing/GeoPoint;


# direct methods
.method public synthetic constructor <init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZI)V
    .locals 18

    move/from16 v0, p13

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v4, v1

    goto :goto_1

    :cond_1
    move/from16 v4, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_3
    move-wide/from16 v6, p4

    :goto_3
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_4

    move v8, v2

    goto :goto_4

    :cond_4
    move/from16 v8, p6

    :goto_4
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_5

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    goto :goto_5

    :cond_5
    move-wide/from16 v9, p7

    :goto_5
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_6

    .line 14
    const-string v1, "\u2014"

    move-object v11, v1

    goto :goto_6

    :cond_6
    move-object/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_7

    const-wide/16 v12, 0x0

    goto :goto_7

    :cond_7
    move-wide/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_8

    move v15, v2

    goto :goto_8

    :cond_8
    const/4 v1, 0x1

    move v15, v1

    :goto_8
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_9

    move/from16 v16, v2

    goto :goto_9

    :cond_9
    move/from16 v16, p12

    :goto_9
    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, p0

    .line 15
    invoke-direct/range {v2 .. v17}, Lad/s;-><init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZZZLua/nav/routing/GeoPoint;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZZZLua/nav/routing/GeoPoint;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    .line 3
    iput p2, p0, Lad/s;->b:F

    .line 4
    iput-boolean p3, p0, Lad/s;->c:Z

    .line 5
    iput-wide p4, p0, Lad/s;->d:D

    .line 6
    iput-boolean p6, p0, Lad/s;->e:Z

    .line 7
    iput-wide p7, p0, Lad/s;->f:D

    .line 8
    iput-object p9, p0, Lad/s;->g:Ljava/lang/String;

    .line 9
    iput-wide p10, p0, Lad/s;->h:J

    .line 10
    iput-boolean p12, p0, Lad/s;->i:Z

    .line 11
    iput-boolean p13, p0, Lad/s;->j:Z

    .line 12
    iput-boolean p14, p0, Lad/s;->k:Z

    move-object/from16 p1, p15

    .line 13
    iput-object p1, p0, Lad/s;->l:Lua/nav/routing/GeoPoint;

    return-void
.end method

.method public static a(Lad/s;Lua/nav/routing/GeoPoint;FZDLua/nav/routing/GeoPoint;I)Lad/s;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p7

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    iget v2, v0, Lad/s;->b:F

    move v5, v2

    goto :goto_0

    :cond_0
    move/from16 v5, p2

    :goto_0
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lad/s;->c:Z

    move v6, v2

    goto :goto_1

    :cond_1
    move/from16 v6, p3

    :goto_1
    iget-wide v7, v0, Lad/s;->d:D

    iget-boolean v9, v0, Lad/s;->e:Z

    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_2

    iget-wide v2, v0, Lad/s;->f:D

    move-wide v10, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p4

    :goto_2
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_3

    iget-object v2, v0, Lad/s;->g:Ljava/lang/String;

    :goto_3
    move-object v12, v2

    goto :goto_4

    :cond_3
    const-string v2, "DR+PF"

    goto :goto_3

    :goto_4
    iget-wide v13, v0, Lad/s;->h:J

    iget-boolean v2, v0, Lad/s;->j:Z

    iget-boolean v3, v0, Lad/s;->k:Z

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_4

    iget-object v0, v0, Lad/s;->l:Lua/nav/routing/GeoPoint;

    move-object/from16 v18, v0

    goto :goto_5

    :cond_4
    move-object/from16 v18, p6

    :goto_5
    const-string v0, "source"

    invoke-static {v12, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v17, v3

    new-instance v3, Lad/s;

    const/4 v15, 0x1

    move-object/from16 v4, p1

    move/from16 v16, v2

    invoke-direct/range {v3 .. v18}, Lad/s;-><init>(Lua/nav/routing/GeoPoint;FZDZDLjava/lang/String;JZZZLua/nav/routing/GeoPoint;)V

    return-object v3
.end method


# virtual methods
.method public final b()Lua/nav/routing/GeoPoint;
    .locals 0

    iget-object p0, p0, Lad/s;->l:Lua/nav/routing/GeoPoint;

    return-object p0
.end method

.method public final c()F
    .locals 0

    iget p0, p0, Lad/s;->b:F

    return p0
.end method

.method public final d()Z
    .locals 0

    iget-boolean p0, p0, Lad/s;->j:Z

    return p0
.end method

.method public final e()Z
    .locals 0

    iget-boolean p0, p0, Lad/s;->c:Z

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Lad/s;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Lad/s;

    iget-object v0, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    iget-object v1, p1, Lad/s;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lad/s;->b:F

    iget v1, p1, Lad/s;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lad/s;->c:Z

    iget-boolean v1, p1, Lad/s;->c:Z

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    iget-wide v0, p0, Lad/s;->d:D

    iget-wide v2, p1, Lad/s;->d:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lad/s;->e:Z

    iget-boolean v1, p1, Lad/s;->e:Z

    if-eq v0, v1, :cond_6

    goto :goto_0

    :cond_6
    iget-wide v0, p0, Lad/s;->f:D

    iget-wide v2, p1, Lad/s;->f:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lad/s;->g:Ljava/lang/String;

    iget-object v1, p1, Lad/s;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-wide v0, p0, Lad/s;->h:J

    iget-wide v2, p1, Lad/s;->h:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    goto :goto_0

    :cond_9
    iget-boolean v0, p0, Lad/s;->i:Z

    iget-boolean v1, p1, Lad/s;->i:Z

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-boolean v0, p0, Lad/s;->j:Z

    iget-boolean v1, p1, Lad/s;->j:Z

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    iget-boolean v0, p0, Lad/s;->k:Z

    iget-boolean v1, p1, Lad/s;->k:Z

    if-eq v0, v1, :cond_c

    goto :goto_0

    :cond_c
    iget-object p0, p0, Lad/s;->l:Lua/nav/routing/GeoPoint;

    iget-object p1, p1, Lad/s;->l:Lua/nav/routing/GeoPoint;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final f()D
    .locals 2

    iget-wide v0, p0, Lad/s;->d:D

    return-wide v0
.end method

.method public final g()Z
    .locals 0

    iget-boolean p0, p0, Lad/s;->e:Z

    return p0
.end method

.method public final h()D
    .locals 2

    iget-wide v0, p0, Lad/s;->f:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget v3, p0, Lad/s;->b:F

    invoke-static {v3, v1, v2}, Lm/a;->c(FII)I

    move-result v1

    iget-boolean v3, p0, Lad/s;->c:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-wide v3, p0, Lad/s;->d:D

    invoke-static {v1, v3, v4, v2}, Lm/a;->d(IDI)I

    move-result v1

    iget-boolean v3, p0, Lad/s;->e:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-wide v3, p0, Lad/s;->f:D

    invoke-static {v1, v3, v4, v2}, Lm/a;->d(IDI)I

    move-result v1

    iget-object v3, p0, Lad/s;->g:Ljava/lang/String;

    invoke-static {v1, v2, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v1

    iget-wide v3, p0, Lad/s;->h:J

    invoke-static {v1, v2, v3, v4}, Lm/a;->f(IIJ)I

    move-result v1

    iget-boolean v3, p0, Lad/s;->i:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lad/s;->j:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-boolean v3, p0, Lad/s;->k:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object p0, p0, Lad/s;->l:Lua/nav/routing/GeoPoint;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FreeState(position="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/s;->b:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", headingKnown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/s;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", speedMps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lad/s;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/s;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", uncertaintyM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lad/s;->f:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/s;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blindS="

    const-string v2, ", roadSnapped="

    iget-wide v3, p0, Lad/s;->h:J

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->w(Ljava/lang/StringBuilder;Ljava/lang/String;JLjava/lang/String;)V

    iget-boolean v1, p0, Lad/s;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", coarseNet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/s;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", headingReliable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/s;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", altPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lad/s;->l:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
