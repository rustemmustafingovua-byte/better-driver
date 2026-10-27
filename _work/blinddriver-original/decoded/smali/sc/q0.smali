.class public final Lsc/q0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lua/nav/routing/GeoPoint;

.field public final b:Ljava/lang/String;

.field public final c:Lua/nav/routing/GeoPoint;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/List;

.field public final f:Lsc/d;

.field public final g:Lsc/d;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/util/List;

.field public final j:Z

.field public final k:Ljava/util/List;

.field public final l:I

.field public final m:Z

.field public final n:Ljava/lang/String;

.field public final o:Z

.field public final p:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 17

    .line 1
    sget-object v6, Lsc/d;->m:Lsc/d;

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x0

    sget-object v5, Lu8/r;->l:Lu8/r;

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object v4, v2

    move-object v8, v2

    move-object v9, v5

    move-object v11, v5

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v16}, Lsc/q0;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "active"

    invoke-static {p6, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    .line 4
    iput-object p2, p0, Lsc/q0;->b:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    .line 6
    iput-object p4, p0, Lsc/q0;->d:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lsc/q0;->e:Ljava/util/List;

    .line 8
    iput-object p6, p0, Lsc/q0;->f:Lsc/d;

    .line 9
    iput-object p7, p0, Lsc/q0;->g:Lsc/d;

    .line 10
    iput-object p8, p0, Lsc/q0;->h:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lsc/q0;->i:Ljava/util/List;

    .line 12
    iput-boolean p10, p0, Lsc/q0;->j:Z

    .line 13
    iput-object p11, p0, Lsc/q0;->k:Ljava/util/List;

    .line 14
    iput p12, p0, Lsc/q0;->l:I

    .line 15
    iput-boolean p13, p0, Lsc/q0;->m:Z

    .line 16
    iput-object p14, p0, Lsc/q0;->n:Ljava/lang/String;

    move/from16 p1, p15

    .line 17
    iput-boolean p1, p0, Lsc/q0;->o:Z

    move-object/from16 p1, p16

    .line 18
    iput-object p1, p0, Lsc/q0;->p:Ljava/lang/String;

    return-void
.end method

.method public static a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p17

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lsc/q0;->b:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lsc/q0;->d:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lsc/q0;->e:Ljava/util/List;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lsc/q0;->f:Lsc/d;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lsc/q0;->g:Lsc/d;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lsc/q0;->h:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lsc/q0;->i:Ljava/util/List;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-boolean v11, v0, Lsc/q0;->j:Z

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lsc/q0;->k:Ljava/util/List;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget v13, v0, Lsc/q0;->l:I

    goto :goto_b

    :cond_b
    move/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lsc/q0;->m:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lsc/q0;->n:Ljava/lang/String;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p1, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_e

    iget-boolean v2, v0, Lsc/q0;->o:Z

    goto :goto_e

    :cond_e
    move/from16 v2, p15

    :goto_e
    const v16, 0x8000

    and-int v1, v1, v16

    if-eqz v1, :cond_f

    iget-object v1, v0, Lsc/q0;->p:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v1, p16

    :goto_f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "aLabel"

    invoke-static {v3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bLabel"

    invoke-static {v5, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "via"

    invoke-static {v6, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "active"

    invoke-static {v7, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {v9, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestions"

    invoke-static {v10, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "routes"

    invoke-static {v12, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lsc/q0;

    move-object/from16 p0, v0

    move-object/from16 p16, v1

    move/from16 p15, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v14

    move-object/from16 p14, v15

    invoke-direct/range {p0 .. p16}, Lsc/q0;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b()Lsc/d;
    .locals 0

    iget-object p0, p0, Lsc/q0;->f:Lsc/d;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc/q0;->n:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc/q0;->p:Ljava/lang/String;

    return-object p0
.end method

.method public final e()Lsc/d;
    .locals 0

    iget-object p0, p0, Lsc/q0;->g:Lsc/d;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lsc/q0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lsc/q0;

    iget-object v1, p0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lsc/q0;->b:Ljava/lang/String;

    iget-object v3, p1, Lsc/q0;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lsc/q0;->d:Ljava/lang/String;

    iget-object v3, p1, Lsc/q0;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lsc/q0;->e:Ljava/util/List;

    iget-object v3, p1, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lsc/q0;->f:Lsc/d;

    iget-object v3, p1, Lsc/q0;->f:Lsc/d;

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lsc/q0;->g:Lsc/d;

    iget-object v3, p1, Lsc/q0;->g:Lsc/d;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lsc/q0;->h:Ljava/lang/String;

    iget-object v3, p1, Lsc/q0;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lsc/q0;->i:Ljava/util/List;

    iget-object v3, p1, Lsc/q0;->i:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-boolean v1, p0, Lsc/q0;->j:Z

    iget-boolean v3, p1, Lsc/q0;->j:Z

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lsc/q0;->k:Ljava/util/List;

    iget-object v3, p1, Lsc/q0;->k:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lsc/q0;->l:I

    iget v3, p1, Lsc/q0;->l:I

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lsc/q0;->m:Z

    iget-boolean v3, p1, Lsc/q0;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-object v1, p0, Lsc/q0;->n:Ljava/lang/String;

    iget-object v3, p1, Lsc/q0;->n:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    iget-boolean v1, p0, Lsc/q0;->o:Z

    iget-boolean v3, p1, Lsc/q0;->o:Z

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-object p0, p0, Lsc/q0;->p:Ljava/lang/String;

    iget-object p1, p1, Lsc/q0;->p:Ljava/lang/String;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    return v2

    :cond_11
    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lsc/q0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lsc/q0;->k:Ljava/util/List;

    return-object p0
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x1f

    mul-int/2addr v1, v2

    iget-object v3, p0, Lsc/q0;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-object v3, p0, Lsc/q0;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v3, v1, v2}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v1

    iget-object v3, p0, Lsc/q0;->f:Lsc/d;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lsc/q0;->g:Lsc/d;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v3, v1

    mul-int/2addr v3, v2

    iget-object v1, p0, Lsc/q0;->h:Ljava/lang/String;

    invoke-static {v3, v2, v1}, La6/q;->c(IILjava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lsc/q0;->i:Ljava/util/List;

    invoke-static {v3, v1, v2}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v1

    iget-boolean v3, p0, Lsc/q0;->j:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object v3, p0, Lsc/q0;->k:Ljava/util/List;

    invoke-static {v3, v1, v2}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v1

    iget v3, p0, Lsc/q0;->l:I

    invoke-static {v3, v1, v2}, Lm/a;->e(III)I

    move-result v1

    iget-boolean v3, p0, Lsc/q0;->m:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object v3, p0, Lsc/q0;->n:Ljava/lang/String;

    if-nez v3, :cond_3

    move v3, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v1, v3

    mul-int/2addr v1, v2

    iget-boolean v3, p0, Lsc/q0;->o:Z

    invoke-static {v1, v2, v3}, Lm/a;->g(IIZ)I

    move-result v1

    iget-object p0, p0, Lsc/q0;->p:Ljava/lang/String;

    if-nez p0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlanState(a="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", aLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", b="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bLabel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", via="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", active="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->f:Lsc/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", moving="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->g:Lsc/d;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", query="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", suggestions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->i:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", searching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsc/q0;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", routes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->k:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lsc/q0;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", routing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsc/q0;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsc/q0;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", matching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lsc/q0;->o:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsc/q0;->p:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
