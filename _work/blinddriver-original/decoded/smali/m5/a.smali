.class public final Lm5/a;
.super Lb6/u;
.source "SourceFile"


# direct methods
.method public static c(Ls5/g;Lpb/i;)V
    .locals 8

    instance-of v0, p1, Lpb/x;

    const/4 v1, 0x0

    const-string v2, "coordinates"

    const-string v3, "type"

    if-eqz v0, :cond_1

    check-cast p1, Lpb/x;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "Polygon"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/g;->k0()V

    iget-object v0, p1, Lpb/x;->o:Lpb/s;

    invoke-static {p0, v0}, Lm5/a;->d(Ls5/g;Lpb/q;)V

    :goto_0
    iget-object v0, p1, Lpb/x;->p:[Lpb/s;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lm5/a;->d(Ls5/g;Lpb/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls5/g;->P()V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_1
    instance-of v0, p1, Lpb/w;

    if-eqz v0, :cond_2

    check-cast p1, Lpb/w;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "Point"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm5/a;->e(Ls5/g;Lpb/w;)V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_2
    instance-of v0, p1, Lpb/u;

    if-eqz v0, :cond_4

    check-cast p1, Lpb/u;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "MultiPoint"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/g;->k0()V

    :goto_1
    iget-object v0, p1, Lpb/j;->o:[Lpb/i;

    array-length v2, v0

    if-eq v1, v2, :cond_3

    aget-object v0, v0, v1

    check-cast v0, Lpb/w;

    invoke-static {p0, v0}, Lm5/a;->e(Ls5/g;Lpb/w;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Ls5/g;->P()V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_4
    instance-of v0, p1, Lpb/v;

    if-eqz v0, :cond_7

    check-cast p1, Lpb/v;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "MultiPolygon"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/g;->k0()V

    move v0, v1

    :goto_2
    iget-object v2, p1, Lpb/j;->o:[Lpb/i;

    array-length v3, v2

    if-eq v0, v3, :cond_6

    aget-object v2, v2, v0

    check-cast v2, Lpb/x;

    invoke-virtual {p0}, Ls5/g;->k0()V

    iget-object v3, v2, Lpb/x;->o:Lpb/s;

    invoke-static {p0, v3}, Lm5/a;->d(Ls5/g;Lpb/q;)V

    move v3, v1

    :goto_3
    iget-object v4, v2, Lpb/x;->p:[Lpb/s;

    array-length v5, v4

    if-ge v3, v5, :cond_5

    aget-object v4, v4, v3

    invoke-static {p0, v4}, Lm5/a;->d(Ls5/g;Lpb/q;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p0}, Ls5/g;->P()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ls5/g;->P()V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_7
    instance-of v0, p1, Lpb/q;

    if-eqz v0, :cond_8

    check-cast p1, Lpb/q;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "LineString"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lm5/a;->d(Ls5/g;Lpb/q;)V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_8
    instance-of v0, p1, Lpb/t;

    if-eqz v0, :cond_a

    check-cast p1, Lpb/t;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "MultiLineString"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/g;->k0()V

    :goto_4
    iget-object v0, p1, Lpb/j;->o:[Lpb/i;

    array-length v2, v0

    if-eq v1, v2, :cond_9

    aget-object v0, v0, v1

    check-cast v0, Lpb/q;

    invoke-static {p0, v0}, Lm5/a;->d(Ls5/g;Lpb/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0}, Ls5/g;->P()V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_a
    instance-of v0, p1, Lpb/j;

    if-eqz v0, :cond_c

    check-cast p1, Lpb/j;

    invoke-virtual {p0}, Ls5/g;->n0()V

    const-string v0, "GeometryCollection"

    invoke-virtual {p0, v3, v0}, Ls5/g;->t0(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "geometries"

    invoke-virtual {p0, v0}, Ls5/g;->S(Ljava/lang/String;)V

    invoke-virtual {p0}, Ls5/g;->k0()V

    :goto_5
    iget-object v0, p1, Lpb/j;->o:[Lpb/i;

    array-length v2, v0

    if-eq v1, v2, :cond_b

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lm5/a;->c(Ls5/g;Lpb/i;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    invoke-virtual {p0}, Ls5/g;->P()V

    invoke-virtual {p0}, Ls5/g;->R()V

    return-void

    :cond_c
    new-instance p0, Lb6/p;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Geometry type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot be serialized as GeoJSON.Supported types are: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lpb/w;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class p1, Lpb/q;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-class p1, Lpb/x;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-class p1, Lpb/u;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-class p1, Lpb/t;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-class p1, Lpb/v;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-class p1, Lpb/j;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Ls5/g;Lpb/q;)V
    .locals 3

    invoke-virtual {p0}, Ls5/g;->k0()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v1}, Lpb/d;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Lpb/i;->m:Lpb/m;

    iget-object v2, p1, Lpb/q;->o:Lpb/d;

    invoke-interface {v2, v0}, Lpb/d;->b(I)Lpb/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lpb/m;->d(Lpb/a;)Lpb/w;

    move-result-object v1

    invoke-static {p0, v1}, Lm5/a;->e(Ls5/g;Lpb/w;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls5/g;->P()V

    return-void
.end method

.method public static e(Ls5/g;Lpb/w;)V
    .locals 2

    invoke-virtual {p0}, Ls5/g;->k0()V

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object v0

    iget-wide v0, v0, Lpb/a;->l:D

    invoke-virtual {p0, v0, v1}, Ls5/g;->V(D)V

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object v0

    iget-wide v0, v0, Lpb/a;->m:D

    invoke-virtual {p0, v0, v1}, Ls5/g;->V(D)V

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object v0

    iget-wide v0, v0, Lpb/a;->n:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object p1

    iget-wide v0, p1, Lpb/a;->n:D

    invoke-virtual {p0, v0, v1}, Ls5/g;->V(D)V

    :cond_0
    invoke-virtual {p0}, Ls5/g;->P()V

    return-void
.end method


# virtual methods
.method public final handledType()Ljava/lang/Class;
    .locals 0

    const-class p0, Lpb/i;

    return-object p0
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    check-cast p1, Lpb/i;

    invoke-static {p2, p1}, Lm5/a;->c(Ls5/g;Lpb/i;)V

    return-void
.end method
