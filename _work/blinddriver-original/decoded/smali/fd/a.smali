.class public final Lfd/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Z

.field public final f:Lua/nav/routing/GeoPoint;

.field public final g:I

.field public final h:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>()V
    .locals 9

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v8}, Lfd/a;-><init>(IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lfd/a;->a:I

    .line 4
    iput p2, p0, Lfd/a;->b:I

    .line 5
    iput p3, p0, Lfd/a;->c:I

    .line 6
    iput-boolean p4, p0, Lfd/a;->d:Z

    .line 7
    iput-boolean p5, p0, Lfd/a;->e:Z

    .line 8
    iput-object p6, p0, Lfd/a;->f:Lua/nav/routing/GeoPoint;

    .line 9
    iput p7, p0, Lfd/a;->g:I

    .line 10
    iput-object p8, p0, Lfd/a;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Lfd/a;IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;I)Lfd/a;
    .locals 9

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    iget p1, p0, Lfd/a;->a:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, v0, 0x2

    if-eqz p1, :cond_1

    iget p2, p0, Lfd/a;->b:I

    :cond_1
    move v2, p2

    and-int/lit8 p1, v0, 0x4

    if-eqz p1, :cond_2

    iget p3, p0, Lfd/a;->c:I

    :cond_2
    move v3, p3

    and-int/lit8 p1, v0, 0x8

    if-eqz p1, :cond_3

    iget-boolean p4, p0, Lfd/a;->d:Z

    :cond_3
    move v4, p4

    and-int/lit8 p1, v0, 0x20

    if-eqz p1, :cond_4

    iget-object p1, p0, Lfd/a;->f:Lua/nav/routing/GeoPoint;

    move-object v6, p1

    goto :goto_0

    :cond_4
    move-object v6, p6

    :goto_0
    and-int/lit8 p1, v0, 0x40

    if-eqz p1, :cond_5

    iget p1, p0, Lfd/a;->g:I

    move v7, p1

    goto :goto_1

    :cond_5
    move/from16 v7, p7

    :goto_1
    and-int/lit16 p1, v0, 0x80

    if-eqz p1, :cond_6

    iget-object p1, p0, Lfd/a;->h:Ljava/lang/String;

    move-object v8, p1

    goto :goto_2

    :cond_6
    move-object/from16 v8, p8

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lfd/a;

    move v5, p5

    invoke-direct/range {v0 .. v8}, Lfd/a;-><init>(IIIZZLua/nav/routing/GeoPoint;ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfd/a;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lfd/a;

    iget v1, p0, Lfd/a;->a:I

    iget v3, p1, Lfd/a;->a:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lfd/a;->b:I

    iget v3, p1, Lfd/a;->b:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lfd/a;->c:I

    iget v3, p1, Lfd/a;->c:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lfd/a;->d:Z

    iget-boolean v3, p1, Lfd/a;->d:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lfd/a;->e:Z

    iget-boolean v3, p1, Lfd/a;->e:Z

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lfd/a;->f:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lfd/a;->f:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lfd/a;->g:I

    iget v3, p1, Lfd/a;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Lfd/a;->h:Ljava/lang/String;

    iget-object p1, p1, Lfd/a;->h:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Lfd/a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget v2, p0, Lfd/a;->b:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget v2, p0, Lfd/a;->c:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v2, p0, Lfd/a;->d:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v2, p0, Lfd/a;->e:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    const/4 v2, 0x0

    iget-object v3, p0, Lfd/a;->f:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lfd/a;->g:I

    invoke-static {v3, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-object p0, p0, Lfd/a;->h:Ljava/lang/String;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    const-string v0, ", areaMb="

    const-string v1, ", areaPercent="

    const-string v2, "CacheStatus(routeMb="

    iget v3, p0, Lfd/a;->a:I

    iget v4, p0, Lfd/a;->b:I

    invoke-static {v2, v3, v0, v4, v1}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lfd/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", areaComplete="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfd/a;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", downloading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lfd/a;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", areaCenter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lfd/a;->f:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", areaKm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lfd/a;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lfd/a;->h:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
