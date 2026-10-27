.class public final Lad/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:I

.field public final C:Z

.field public final D:Lua/nav/routing/GeoPoint;

.field public final E:Z

.field public final F:I

.field public final G:I

.field public final a:Z

.field public final b:Lua/nav/routing/Route;

.field public final c:D

.field public final d:Lua/nav/routing/GeoPoint;

.field public final e:F

.field public final f:Lua/nav/routing/Step;

.field public final g:I

.field public final h:D

.field public final i:Lua/nav/routing/Step;

.field public final j:D

.field public final k:D

.field public final l:F

.field public final m:Z

.field public final n:Z

.field public final o:D

.field public final p:Z

.field public final q:Ljava/lang/String;

.field public final r:Z

.field public final s:Ljava/util/List;

.field public final t:Lua/nav/routing/GeoPoint;

.field public final u:Ljava/lang/Integer;

.field public final v:I

.field public final w:D

.field public final x:Z

.field public final y:Z

.field public final z:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lua/nav/routing/Route;Lua/nav/routing/Step;DLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLua/nav/routing/GeoPoint;IDZLjava/lang/String;I)V
    .locals 44

    move/from16 v0, p24

    const/16 v1, 0x32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    and-int/lit8 v2, v0, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v5, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    move v5, v2

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move-object v6, v4

    goto :goto_1

    :cond_1
    move-object/from16 v6, p1

    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_2

    move-object v11, v4

    goto :goto_2

    :cond_2
    move-object/from16 v11, p2

    :goto_2
    and-int/lit16 v2, v0, 0x80

    const-wide/16 v7, 0x0

    if-eqz v2, :cond_3

    move-wide v13, v7

    goto :goto_3

    :cond_3
    move-wide/from16 v13, p3

    :goto_3
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_4

    move-object v15, v4

    goto :goto_4

    :cond_4
    move-object/from16 v15, p5

    :goto_4
    and-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_5

    move-wide/from16 v16, v7

    goto :goto_5

    :cond_5
    move-wide/from16 v16, p6

    :goto_5
    and-int/lit16 v2, v0, 0x400

    if-eqz v2, :cond_6

    move-wide/from16 v18, v7

    goto :goto_6

    :cond_6
    move-wide/from16 v18, p8

    :goto_6
    and-int/lit16 v2, v0, 0x800

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    move/from16 v20, v2

    goto :goto_7

    :cond_7
    move/from16 v20, p10

    :goto_7
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_8

    move/from16 v21, v3

    goto :goto_8

    :cond_8
    move/from16 v21, p11

    :goto_8
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_9

    move/from16 v22, v3

    goto :goto_9

    :cond_9
    move/from16 v22, p12

    :goto_9
    and-int/lit16 v2, v0, 0x4000

    if-eqz v2, :cond_a

    move-wide/from16 v23, v7

    goto :goto_a

    :cond_a
    move-wide/from16 v23, p13

    :goto_a
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_b

    move/from16 v25, v3

    goto :goto_b

    :cond_b
    move/from16 v25, p15

    :goto_b
    const/high16 v2, 0x10000

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    .line 35
    const-string v2, "\u2014"

    move-object/from16 v26, v2

    goto :goto_c

    :cond_c
    move-object/from16 v26, p16

    :goto_c
    const/high16 v2, 0x20000

    and-int/2addr v2, v0

    if-eqz v2, :cond_d

    move/from16 v27, v3

    goto :goto_d

    :cond_d
    move/from16 v27, p17

    :goto_d
    const/high16 v2, 0x80000

    and-int/2addr v2, v0

    if-eqz v2, :cond_e

    move-object/from16 v29, v4

    goto :goto_e

    :cond_e
    move-object/from16 v29, p18

    :goto_e
    const/high16 v2, 0x100000

    and-int/2addr v2, v0

    if-eqz v2, :cond_f

    move-object/from16 v30, v4

    goto :goto_f

    :cond_f
    move-object/from16 v30, v1

    :goto_f
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move/from16 v31, v3

    goto :goto_10

    :cond_10
    move/from16 v31, p19

    :goto_10
    const/high16 v1, 0x400000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-wide/from16 v32, v7

    goto :goto_11

    :cond_11
    move-wide/from16 v32, p20

    :goto_11
    const/high16 v1, 0x800000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move/from16 v34, v3

    goto :goto_12

    :cond_12
    move/from16 v34, p22

    :goto_12
    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_13

    move-object/from16 v36, v4

    goto :goto_13

    :cond_13
    move-object/from16 v36, p23

    :goto_13
    const/16 v42, 0x0

    const/16 v43, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, -0x1

    .line 36
    sget-object v28, Lu8/r;->l:Lu8/r;

    const/16 v35, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x1

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v43}, Lad/a0;-><init>(ZLua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Lua/nav/routing/GeoPoint;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZII)V

    return-void
.end method

.method public constructor <init>(ZLua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Lua/nav/routing/GeoPoint;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZII)V
    .locals 2

    move-object/from16 v0, p22

    const-string v1, "source"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lad/a0;->a:Z

    .line 3
    iput-object p2, p0, Lad/a0;->b:Lua/nav/routing/Route;

    .line 4
    iput-wide p3, p0, Lad/a0;->c:D

    .line 5
    iput-object p5, p0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    .line 6
    iput p6, p0, Lad/a0;->e:F

    .line 7
    iput-object p7, p0, Lad/a0;->f:Lua/nav/routing/Step;

    .line 8
    iput p8, p0, Lad/a0;->g:I

    .line 9
    iput-wide p9, p0, Lad/a0;->h:D

    .line 10
    iput-object p11, p0, Lad/a0;->i:Lua/nav/routing/Step;

    .line 11
    iput-wide p12, p0, Lad/a0;->j:D

    move-wide/from16 p1, p14

    .line 12
    iput-wide p1, p0, Lad/a0;->k:D

    move/from16 p1, p16

    .line 13
    iput p1, p0, Lad/a0;->l:F

    move/from16 p1, p17

    .line 14
    iput-boolean p1, p0, Lad/a0;->m:Z

    move/from16 p1, p18

    .line 15
    iput-boolean p1, p0, Lad/a0;->n:Z

    move-wide/from16 p1, p19

    .line 16
    iput-wide p1, p0, Lad/a0;->o:D

    move/from16 p1, p21

    .line 17
    iput-boolean p1, p0, Lad/a0;->p:Z

    .line 18
    iput-object v0, p0, Lad/a0;->q:Ljava/lang/String;

    move/from16 p1, p23

    .line 19
    iput-boolean p1, p0, Lad/a0;->r:Z

    move-object/from16 p1, p24

    .line 20
    iput-object p1, p0, Lad/a0;->s:Ljava/util/List;

    move-object/from16 p1, p25

    .line 21
    iput-object p1, p0, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    move-object/from16 p1, p26

    .line 22
    iput-object p1, p0, Lad/a0;->u:Ljava/lang/Integer;

    move/from16 p1, p27

    .line 23
    iput p1, p0, Lad/a0;->v:I

    move-wide/from16 p1, p28

    .line 24
    iput-wide p1, p0, Lad/a0;->w:D

    move/from16 p1, p30

    .line 25
    iput-boolean p1, p0, Lad/a0;->x:Z

    move/from16 p1, p31

    .line 26
    iput-boolean p1, p0, Lad/a0;->y:Z

    move-object/from16 p1, p32

    .line 27
    iput-object p1, p0, Lad/a0;->z:Ljava/lang/String;

    move/from16 p1, p33

    .line 28
    iput-boolean p1, p0, Lad/a0;->A:Z

    move/from16 p1, p34

    .line 29
    iput p1, p0, Lad/a0;->B:I

    move/from16 p1, p35

    .line 30
    iput-boolean p1, p0, Lad/a0;->C:Z

    move-object/from16 p1, p36

    .line 31
    iput-object p1, p0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    move/from16 p1, p37

    .line 32
    iput-boolean p1, p0, Lad/a0;->E:Z

    move/from16 p1, p38

    .line 33
    iput p1, p0, Lad/a0;->F:I

    move/from16 p1, p39

    .line 34
    iput p1, p0, Lad/a0;->G:I

    return-void
.end method

.method public static a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p38

    iget-boolean v2, v0, Lad/a0;->a:Z

    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_0

    iget-object v3, v0, Lad/a0;->b:Lua/nav/routing/Route;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p1

    :goto_0
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1

    iget-wide v4, v0, Lad/a0;->c:D

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p2

    :goto_1
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_2

    iget-object v6, v0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    goto :goto_2

    :cond_2
    move-object/from16 v6, p4

    :goto_2
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_3

    iget v7, v0, Lad/a0;->e:F

    goto :goto_3

    :cond_3
    move/from16 v7, p5

    :goto_3
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_4

    iget-object v8, v0, Lad/a0;->f:Lua/nav/routing/Step;

    goto :goto_4

    :cond_4
    move-object/from16 v8, p6

    :goto_4
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_5

    iget v9, v0, Lad/a0;->g:I

    goto :goto_5

    :cond_5
    move/from16 v9, p7

    :goto_5
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_6

    iget-wide v10, v0, Lad/a0;->h:D

    goto :goto_6

    :cond_6
    move-wide/from16 v10, p8

    :goto_6
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_7

    iget-object v12, v0, Lad/a0;->i:Lua/nav/routing/Step;

    goto :goto_7

    :cond_7
    move-object/from16 v12, p10

    :goto_7
    and-int/lit16 v13, v1, 0x200

    if-eqz v13, :cond_8

    iget-wide v13, v0, Lad/a0;->j:D

    goto :goto_8

    :cond_8
    move-wide/from16 v13, p11

    :goto_8
    and-int/lit16 v15, v1, 0x400

    if-eqz v15, :cond_9

    move v15, v2

    move-object/from16 p1, v3

    iget-wide v2, v0, Lad/a0;->k:D

    goto :goto_9

    :cond_9
    move v15, v2

    move-object/from16 p1, v3

    move-wide/from16 v2, p13

    :goto_9
    move-wide/from16 p2, v2

    and-int/lit16 v2, v1, 0x800

    if-eqz v2, :cond_a

    iget v2, v0, Lad/a0;->l:F

    goto :goto_a

    :cond_a
    move/from16 v2, p15

    :goto_a
    and-int/lit16 v3, v1, 0x1000

    if-eqz v3, :cond_b

    iget-boolean v3, v0, Lad/a0;->m:Z

    goto :goto_b

    :cond_b
    move/from16 v3, p16

    :goto_b
    move/from16 p4, v2

    and-int/lit16 v2, v1, 0x2000

    if-eqz v2, :cond_c

    iget-boolean v2, v0, Lad/a0;->n:Z

    goto :goto_c

    :cond_c
    move/from16 v2, p17

    :goto_c
    move/from16 p5, v2

    and-int/lit16 v2, v1, 0x4000

    if-eqz v2, :cond_d

    iget-wide v1, v0, Lad/a0;->o:D

    goto :goto_d

    :cond_d
    move-wide/from16 v1, p18

    :goto_d
    const v16, 0x8000

    and-int v16, p38, v16

    move-wide/from16 p6, v1

    if-eqz v16, :cond_e

    iget-boolean v1, v0, Lad/a0;->p:Z

    goto :goto_e

    :cond_e
    move/from16 v1, p20

    :goto_e
    const/high16 v2, 0x10000

    and-int v2, p38, v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lad/a0;->q:Ljava/lang/String;

    goto :goto_f

    :cond_f
    move-object/from16 v2, p21

    :goto_f
    const/high16 v16, 0x20000

    and-int v16, p38, v16

    move/from16 p8, v1

    if-eqz v16, :cond_10

    iget-boolean v1, v0, Lad/a0;->r:Z

    goto :goto_10

    :cond_10
    move/from16 v1, p22

    :goto_10
    const/high16 v16, 0x40000

    and-int v16, p38, v16

    move/from16 p9, v1

    if-eqz v16, :cond_11

    iget-object v1, v0, Lad/a0;->s:Ljava/util/List;

    :goto_11
    move/from16 p10, v3

    goto :goto_12

    :cond_11
    move-object/from16 v1, p23

    goto :goto_11

    :goto_12
    iget-object v3, v0, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    const/high16 v16, 0x100000

    and-int v16, p38, v16

    if-eqz v16, :cond_12

    move-object/from16 v16, v3

    iget-object v3, v0, Lad/a0;->u:Ljava/lang/Integer;

    goto :goto_13

    :cond_12
    move-object/from16 v16, v3

    move-object/from16 v3, p24

    :goto_13
    const/high16 v17, 0x200000

    and-int v17, p38, v17

    move-object/from16 p11, v3

    if-eqz v17, :cond_13

    iget v3, v0, Lad/a0;->v:I

    goto :goto_14

    :cond_13
    move/from16 v3, p25

    :goto_14
    const/high16 v17, 0x400000

    and-int v17, p38, v17

    move/from16 p12, v3

    if-eqz v17, :cond_14

    move-wide/from16 v17, v4

    iget-wide v3, v0, Lad/a0;->w:D

    goto :goto_15

    :cond_14
    move-wide/from16 v17, v4

    move-wide/from16 v3, p26

    :goto_15
    const/high16 v5, 0x800000

    and-int v5, p38, v5

    if-eqz v5, :cond_15

    iget-boolean v5, v0, Lad/a0;->x:Z

    goto :goto_16

    :cond_15
    move/from16 v5, p28

    :goto_16
    const/high16 v19, 0x1000000

    and-int v19, p38, v19

    move-wide/from16 p13, v3

    if-eqz v19, :cond_16

    iget-boolean v3, v0, Lad/a0;->y:Z

    goto :goto_17

    :cond_16
    move/from16 v3, p29

    :goto_17
    const/high16 v4, 0x2000000

    and-int v4, p38, v4

    if-eqz v4, :cond_17

    iget-object v4, v0, Lad/a0;->z:Ljava/lang/String;

    goto :goto_18

    :cond_17
    move-object/from16 v4, p30

    :goto_18
    const/high16 v19, 0x4000000

    and-int v19, p38, v19

    move/from16 p15, v3

    if-eqz v19, :cond_18

    iget-boolean v3, v0, Lad/a0;->A:Z

    goto :goto_19

    :cond_18
    move/from16 v3, p31

    :goto_19
    const/high16 v19, 0x8000000

    and-int v19, p38, v19

    move/from16 p16, v3

    if-eqz v19, :cond_19

    iget v3, v0, Lad/a0;->B:I

    goto :goto_1a

    :cond_19
    move/from16 v3, p32

    :goto_1a
    const/high16 v19, 0x10000000

    and-int v19, p38, v19

    move/from16 p17, v3

    if-eqz v19, :cond_1a

    iget-boolean v3, v0, Lad/a0;->C:Z

    goto :goto_1b

    :cond_1a
    move/from16 v3, p33

    :goto_1b
    const/high16 v19, 0x20000000

    and-int v19, p38, v19

    move/from16 p18, v3

    if-eqz v19, :cond_1b

    iget-object v3, v0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    goto :goto_1c

    :cond_1b
    move-object/from16 v3, p34

    :goto_1c
    const/high16 v19, 0x40000000    # 2.0f

    and-int v19, p38, v19

    move-object/from16 p19, v3

    if-eqz v19, :cond_1c

    iget-boolean v3, v0, Lad/a0;->E:Z

    goto :goto_1d

    :cond_1c
    move/from16 v3, p35

    :goto_1d
    const/high16 v19, -0x80000000

    and-int v19, p38, v19

    move/from16 p20, v3

    if-eqz v19, :cond_1d

    iget v3, v0, Lad/a0;->F:I

    goto :goto_1e

    :cond_1d
    move/from16 v3, p36

    :goto_1e
    and-int/lit8 v19, p39, 0x1

    move/from16 p38, v3

    if-eqz v19, :cond_1e

    iget v3, v0, Lad/a0;->G:I

    goto :goto_1f

    :cond_1e
    move/from16 v3, p37

    :goto_1f
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "source"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rerouteOptions"

    invoke-static {v1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lad/a0;

    move/from16 p21, p8

    move/from16 p23, p9

    move-object/from16 p26, p11

    move/from16 p27, p12

    move-wide/from16 p28, p13

    move/from16 p31, p15

    move/from16 p33, p16

    move/from16 p34, p17

    move/from16 p35, p18

    move-object/from16 p36, p19

    move/from16 p37, p20

    move-object/from16 p0, v0

    move-object/from16 p24, v1

    move-object/from16 p22, v2

    move/from16 p39, v3

    move-object/from16 p32, v4

    move/from16 p30, v5

    move/from16 p8, v9

    move-object/from16 p11, v12

    move-wide/from16 p12, v13

    move-object/from16 p25, v16

    move-wide/from16 p14, p2

    move/from16 p16, p4

    move/from16 p18, p5

    move-wide/from16 p19, p6

    move/from16 p17, p10

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-wide/from16 p9, v10

    move-wide/from16 p3, v17

    move-object/from16 p2, p1

    move/from16 p1, v15

    invoke-direct/range {p0 .. p39}, Lad/a0;-><init>(ZLua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Lua/nav/routing/GeoPoint;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZII)V

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 0

    iget-boolean p0, p0, Lad/a0;->a:Z

    return p0
.end method

.method public final c()Lua/nav/routing/GeoPoint;
    .locals 0

    iget-object p0, p0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    return-object p0
.end method

.method public final d()F
    .locals 0

    iget p0, p0, Lad/a0;->e:F

    return p0
.end method

.method public final e()D
    .locals 2

    iget-wide v0, p0, Lad/a0;->h:D

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lad/a0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lad/a0;

    iget-boolean v1, p0, Lad/a0;->a:Z

    iget-boolean v3, p1, Lad/a0;->a:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lad/a0;->b:Lua/nav/routing/Route;

    iget-object v3, p1, Lad/a0;->b:Lua/nav/routing/Route;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lad/a0;->c:D

    iget-wide v5, p1, Lad/a0;->c:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lad/a0;->e:F

    iget v3, p1, Lad/a0;->e:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lad/a0;->f:Lua/nav/routing/Step;

    iget-object v3, p1, Lad/a0;->f:Lua/nav/routing/Step;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lad/a0;->g:I

    iget v3, p1, Lad/a0;->g:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-wide v3, p0, Lad/a0;->h:D

    iget-wide v5, p1, Lad/a0;->h:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lad/a0;->i:Lua/nav/routing/Step;

    iget-object v3, p1, Lad/a0;->i:Lua/nav/routing/Step;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    iget-wide v3, p0, Lad/a0;->j:D

    iget-wide v5, p1, Lad/a0;->j:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_b

    return v2

    :cond_b
    iget-wide v3, p0, Lad/a0;->k:D

    iget-wide v5, p1, Lad/a0;->k:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_c

    return v2

    :cond_c
    iget v1, p0, Lad/a0;->l:F

    iget v3, p1, Lad/a0;->l:F

    invoke-static {v1, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lad/a0;->m:Z

    iget-boolean v3, p1, Lad/a0;->m:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget-boolean v1, p0, Lad/a0;->n:Z

    iget-boolean v3, p1, Lad/a0;->n:Z

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget-wide v3, p0, Lad/a0;->o:D

    iget-wide v5, p1, Lad/a0;->o:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_10

    return v2

    :cond_10
    iget-boolean v1, p0, Lad/a0;->p:Z

    iget-boolean v3, p1, Lad/a0;->p:Z

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    iget-object v1, p0, Lad/a0;->q:Ljava/lang/String;

    iget-object v3, p1, Lad/a0;->q:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    :cond_12
    iget-boolean v1, p0, Lad/a0;->r:Z

    iget-boolean v3, p1, Lad/a0;->r:Z

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lad/a0;->s:Ljava/util/List;

    iget-object v3, p1, Lad/a0;->s:Ljava/util/List;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget-object v1, p0, Lad/a0;->u:Ljava/lang/Integer;

    iget-object v3, p1, Lad/a0;->u:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    return v2

    :cond_16
    iget v1, p0, Lad/a0;->v:I

    iget v3, p1, Lad/a0;->v:I

    if-eq v1, v3, :cond_17

    return v2

    :cond_17
    iget-wide v3, p0, Lad/a0;->w:D

    iget-wide v5, p1, Lad/a0;->w:D

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_18

    return v2

    :cond_18
    iget-boolean v1, p0, Lad/a0;->x:Z

    iget-boolean v3, p1, Lad/a0;->x:Z

    if-eq v1, v3, :cond_19

    return v2

    :cond_19
    iget-boolean v1, p0, Lad/a0;->y:Z

    iget-boolean v3, p1, Lad/a0;->y:Z

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-object v1, p0, Lad/a0;->z:Ljava/lang/String;

    iget-object v3, p1, Lad/a0;->z:Ljava/lang/String;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    return v2

    :cond_1b
    iget-boolean v1, p0, Lad/a0;->A:Z

    iget-boolean v3, p1, Lad/a0;->A:Z

    if-eq v1, v3, :cond_1c

    return v2

    :cond_1c
    iget v1, p0, Lad/a0;->B:I

    iget v3, p1, Lad/a0;->B:I

    if-eq v1, v3, :cond_1d

    return v2

    :cond_1d
    iget-boolean v1, p0, Lad/a0;->C:Z

    iget-boolean v3, p1, Lad/a0;->C:Z

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-object v1, p0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    iget-object v3, p1, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    invoke-static {v1, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    return v2

    :cond_1f
    iget-boolean v1, p0, Lad/a0;->E:Z

    iget-boolean v3, p1, Lad/a0;->E:Z

    if-eq v1, v3, :cond_20

    return v2

    :cond_20
    iget v1, p0, Lad/a0;->F:I

    iget v3, p1, Lad/a0;->F:I

    if-eq v1, v3, :cond_21

    return v2

    :cond_21
    iget p0, p0, Lad/a0;->G:I

    iget p1, p1, Lad/a0;->G:I

    if-eq p0, p1, :cond_22

    return v2

    :cond_22
    return v0
.end method

.method public final f()Lua/nav/routing/Step;
    .locals 0

    iget-object p0, p0, Lad/a0;->f:Lua/nav/routing/Step;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lad/a0;->s:Ljava/util/List;

    return-object p0
.end method

.method public final h()D
    .locals 2

    iget-wide v0, p0, Lad/a0;->c:D

    return-wide v0
.end method

.method public final hashCode()I
    .locals 5

    iget-boolean v0, p0, Lad/a0;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    const/4 v2, 0x0

    iget-object v3, p0, Lad/a0;->b:Lua/nav/routing/Route;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lua/nav/routing/Route;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lad/a0;->c:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-object v3, p0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lad/a0;->e:F

    invoke-static {v3, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-object v3, p0, Lad/a0;->f:Lua/nav/routing/Step;

    if-nez v3, :cond_2

    move v3, v2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lua/nav/routing/Step;->hashCode()I

    move-result v3

    :goto_2
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lad/a0;->g:I

    invoke-static {v3, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v3, p0, Lad/a0;->h:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-object v3, p0, Lad/a0;->i:Lua/nav/routing/Step;

    if-nez v3, :cond_3

    move v3, v2

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lua/nav/routing/Step;->hashCode()I

    move-result v3

    :goto_3
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lad/a0;->j:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-wide v3, p0, Lad/a0;->k:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget v3, p0, Lad/a0;->l:F

    invoke-static {v3, v0, v1}, Lm/a;->c(FII)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->m:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->n:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-wide v3, p0, Lad/a0;->o:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->p:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lad/a0;->q:Ljava/lang/String;

    invoke-static {v0, v1, v3}, La6/q;->c(IILjava/lang/String;)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->r:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lad/a0;->s:Ljava/util/List;

    invoke-static {v3, v0, v1}, Lr0/i;->d(Ljava/util/List;II)I

    move-result v0

    iget-object v3, p0, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_4

    move v3, v2

    goto :goto_4

    :cond_4
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v3

    :goto_4
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-object v3, p0, Lad/a0;->u:Ljava/lang/Integer;

    if-nez v3, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :goto_5
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lad/a0;->v:I

    invoke-static {v3, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-wide v3, p0, Lad/a0;->w:D

    invoke-static {v0, v3, v4, v1}, Lm/a;->d(IDI)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->x:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->y:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lad/a0;->z:Ljava/lang/String;

    if-nez v3, :cond_6

    move v3, v2

    goto :goto_6

    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_6
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-boolean v3, p0, Lad/a0;->A:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget v3, p0, Lad/a0;->B:I

    invoke-static {v3, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget-boolean v3, p0, Lad/a0;->C:Z

    invoke-static {v0, v1, v3}, Lm/a;->g(IIZ)I

    move-result v0

    iget-object v3, p0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v3}, Lua/nav/routing/GeoPoint;->hashCode()I

    move-result v2

    :goto_7
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-boolean v2, p0, Lad/a0;->E:Z

    invoke-static {v0, v1, v2}, Lm/a;->g(IIZ)I

    move-result v0

    iget v2, p0, Lad/a0;->F:I

    invoke-static {v2, v0, v1}, Lm/a;->e(III)I

    move-result v0

    iget p0, p0, Lad/a0;->G:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GuidanceState(active="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lad/a0;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", route="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->b:Lua/nav/routing/Route;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lad/a0;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bearingDeg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/a0;->e:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", nextStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->f:Lua/nav/routing/Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextStepIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/a0;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", distToNextM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lad/a0;->h:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", thenStep="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->i:Lua/nav/routing/Step;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", remainingM="

    const-string v2, ", remainingS="

    iget-wide v3, p0, Lad/a0;->j:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-wide v1, p0, Lad/a0;->k:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", speedKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/a0;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", speedPrecise="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offRoute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offRouteM="

    const-string v2, ", arrived="

    iget-wide v3, p0, Lad/a0;->o:D

    invoke-static {v0, v1, v3, v4, v2}, La6/q;->v(Ljava/lang/StringBuilder;Ljava/lang/String;DLjava/lang/String;)V

    iget-boolean v1, p0, Lad/a0;->p:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rerouting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->r:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rerouteOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->s:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->t:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", speedLimitKmh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->u:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", blindS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/a0;->v:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uncertaintyM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lad/a0;->w:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->x:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", recovering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", currentStreet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", blindDeviation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->A:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blindDeviationSecLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/a0;->B:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", blindDeviationAuto="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->C:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", altPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lad/a0;->D:Lua/nav/routing/GeoPoint;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", roadFilterOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lad/a0;->E:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", manualMotion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lad/a0;->F:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", undoRerouteSecLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lad/a0;->G:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
