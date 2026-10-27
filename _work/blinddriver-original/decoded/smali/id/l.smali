.class public final Lid/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/l;->Companion:Lid/i;

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lid/k;)Ljava/lang/Object;
    .locals 3

    sget-object v0, Lgd/h;->a:Lr9/i;

    if-eqz p2, :cond_0

    const-string v0, "&timestamps="

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, ""

    :cond_1
    const-string v0, "?geometries=polyline6&overview=full&steps=true&waypoints="

    const-string v1, "&radiuses="

    const-string v2, "https://router.project-osrm.org/match/v1/driving/"

    invoke-static {v2, p0, v0, p3, v1}, La6/q;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p4}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/util/ArrayList;)Lua/nav/routing/Route;
    .locals 17

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move-object/from16 v0, p0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lua/nav/routing/Route;

    const/4 v11, 0x0

    const/16 v12, 0x3fe

    const-string v2, "match"

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v1 .. v12}, Lua/nav/routing/Route;->a(Lua/nav/routing/Route;Ljava/lang/String;DDLjava/util/List;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;I)Lua/nav/routing/Route;

    move-result-object v0

    return-object v0

    :cond_0
    move-object/from16 v0, p0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v4, 0x0

    move v6, v1

    move-wide v9, v4

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v11, v6, 0x1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lua/nav/routing/Route;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_1

    move v13, v1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    sub-int/2addr v13, v2

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v12, Lua/nav/routing/Route;->e:Ljava/util/List;

    goto :goto_2

    :cond_2
    iget-object v14, v12, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v14, v2}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v14

    :goto_2
    invoke-static {v14, v7}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    iget-object v14, v12, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lua/nav/routing/Step;

    if-lez v6, :cond_4

    iget-object v1, v15, Lua/nav/routing/Step;->a:Ljava/lang/String;

    move/from16 v16, v2

    const-string v2, "depart"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    move/from16 v2, v16

    const/4 v1, 0x0

    goto :goto_3

    :cond_4
    move/from16 v16, v2

    :goto_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v6, v1, :cond_5

    iget-object v1, v15, Lua/nav/routing/Step;->a:Ljava/lang/String;

    const-string v2, "arrive"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_5
    iget v1, v15, Lua/nav/routing/Step;->h:I

    add-int/2addr v1, v13

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v1, v2, :cond_6

    move v1, v2

    :cond_6
    invoke-static {v15, v1}, Lua/nav/routing/Step;->a(Lua/nav/routing/Step;I)Lua/nav/routing/Step;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move/from16 v16, v2

    iget-wide v1, v12, Lua/nav/routing/Route;->b:D

    add-double/2addr v4, v1

    iget-wide v1, v12, Lua/nav/routing/Route;->c:D

    add-double/2addr v9, v1

    move v6, v11

    move/from16 v2, v16

    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v1, Lua/nav/routing/Route;

    invoke-static {v0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;

    iget-object v0, v0, Lua/nav/routing/Route;->g:Ljava/lang/String;

    move-wide v3, v4

    move-wide v5, v9

    const/4 v10, 0x0

    const/16 v11, 0x388

    const-string v2, "match"

    move-object v9, v0

    invoke-direct/range {v1 .. v11}, Lua/nav/routing/Route;-><init>(Ljava/lang/String;DDLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/List;I)V

    return-object v1
.end method


# virtual methods
.method public final a(Ljava/util/List;ZLa9/c;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lid/j;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lid/j;

    iget v4, v3, Lid/j;->s:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lid/j;->s:I

    goto :goto_0

    :cond_0
    new-instance v3, Lid/j;

    invoke-direct {v3, v0, v2}, Lid/j;-><init>(Lid/l;La9/c;)V

    :goto_0
    iget-object v2, v3, Lid/j;->q:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lid/j;->s:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget v1, v3, Lid/j;->p:I

    iget-boolean v5, v3, Lid/j;->o:Z

    iget-object v7, v3, Lid/j;->n:Ljava/util/ArrayList;

    iget-object v8, v3, Lid/j;->m:Ljava/util/ArrayList;

    iget-object v9, v3, Lid/j;->l:Ljava/util/List;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    const-string v2, "track"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x2

    if-ge v2, v5, :cond_3

    move-object v2, v1

    move/from16 p3, v6

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1, v6}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lid/j1;

    invoke-static {v2}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lid/j1;

    sget-object v10, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v11, v9, Lid/j1;->a:D

    iget-wide v13, v9, Lid/j1;->b:D

    move/from16 p3, v6

    move-object v9, v7

    iget-wide v6, v8, Lid/j1;->a:D

    move-wide v15, v6

    iget-wide v5, v8, Lid/j1;->b:D

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v17, v5

    invoke-static/range {v11 .. v18}, Ldd/s0;->a(DDDD)D

    move-result-wide v5

    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    cmpl-double v5, v5, v10

    if-ltz v5, :cond_4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    move/from16 v6, p3

    move-object v7, v9

    const/4 v5, 0x2

    goto :goto_1

    :cond_5
    move/from16 p3, v6

    invoke-static {v2}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    if-eq v5, v6, :cond_6

    invoke-static {v1}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x2

    if-lt v1, v5, :cond_9

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    move-object v7, v1

    move-object v9, v2

    move/from16 v1, p2

    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v5, v2, :cond_8

    add-int/lit8 v2, v5, 0x64

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-interface {v9, v5, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iput-object v9, v3, Lid/j;->l:Ljava/util/List;

    iput-object v7, v3, Lid/j;->m:Ljava/util/ArrayList;

    iput-object v7, v3, Lid/j;->n:Ljava/util/ArrayList;

    iput-boolean v1, v3, Lid/j;->o:Z

    iput v5, v3, Lid/j;->p:I

    move/from16 v6, p3

    iput v6, v3, Lid/j;->s:I

    invoke-virtual {v0, v2, v1, v3}, Lid/l;->b(Ljava/util/List;ZLa9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_7

    return-object v4

    :cond_7
    move v8, v5

    move v5, v1

    move v1, v8

    move-object v8, v7

    :goto_4
    invoke-interface {v7, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x63

    move/from16 p3, v5

    move v5, v1

    move/from16 v1, p3

    move/from16 p3, v6

    move-object v7, v8

    goto :goto_3

    :cond_8
    invoke-static {v7}, Lid/l;->d(Ljava/util/ArrayList;)Lua/nav/routing/Route;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ld1/h;

    const-string v1, "\u0422\u0440\u0435\u043a \u043d\u0430\u0434\u0442\u043e \u043a\u043e\u0440\u043e\u0442\u043a\u0438\u0439"

    invoke-direct {v0, v1}, Ld1/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/util/List;ZLa9/c;)Ljava/lang/Object;
    .locals 17

    move/from16 v1, p2

    move-object/from16 v0, p3

    const-string v2, "https://api.mapbox.com/matching/v5/mapbox/driving/"

    instance-of v3, v0, Lid/k;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lid/k;

    iget v4, v3, Lid/k;->s:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lid/k;->s:I

    goto :goto_0

    :cond_0
    new-instance v3, Lid/k;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0}, Lid/k;-><init>(Lid/l;La9/c;)V

    :goto_0
    iget-object v0, v3, Lid/k;->q:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lid/k;->s:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget-boolean v1, v3, Lid/k;->p:Z

    iget-object v2, v3, Lid/k;->o:Ljava/lang/String;

    iget-object v5, v3, Lid/k;->n:Ljava/lang/String;

    iget-object v6, v3, Lid/k;->m:Ljava/lang/String;

    iget-object v10, v3, Lid/k;->l:Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_4
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    new-instance v15, Lgd/e;

    const/4 v0, 0x4

    invoke-direct {v15, v0}, Lgd/e;-><init>(I)V

    const/16 v16, 0x1e

    const-string v12, ";"

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v16}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v10

    new-instance v15, Lgd/e;

    const/4 v0, 0x5

    invoke-direct {v15, v0}, Lgd/e;-><init>(I)V

    const-string v12, ";"

    invoke-static/range {v11 .. v16}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v5

    new-instance v15, Lgd/e;

    const/4 v0, 0x6

    invoke-direct {v15, v0}, Lgd/e;-><init>(I)V

    const-string v12, ";"

    invoke-static/range {v11 .. v16}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v12

    if-eqz v1, :cond_5

    const-string v0, ""

    goto :goto_1

    :cond_5
    const-string v0, "&tidy=true&timestamps="

    invoke-static {v0, v12}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v8

    const-string v13, "0;"

    invoke-static {v11, v13}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v13, Lsc/i0;->A:Lp/a1;

    invoke-virtual {v13}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-static {v13}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_9

    :try_start_1
    sget-object v6, Lgd/h;->a:Lr9/i;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?geometries=polyline6&overview=full&steps=true&language=uk&waypoints="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&radiuses="

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&access_token="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v10, v3, Lid/k;->l:Ljava/lang/String;

    iput-object v5, v3, Lid/k;->m:Ljava/lang/String;

    iput-object v12, v3, Lid/k;->n:Ljava/lang/String;

    iput-object v11, v3, Lid/k;->o:Ljava/lang/String;

    iput-boolean v1, v3, Lid/k;->p:Z

    iput v8, v3, Lid/k;->s:I

    invoke-static {v0, v3}, Lgd/h;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v0, v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v6, v5

    move-object v2, v11

    move-object v5, v12

    :goto_2
    :try_start_2
    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v6, v5

    move-object v2, v11

    move-object v5, v12

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Mapbox failed: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; trying OSRM"

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v11, "MapMatcher"

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_7

    move-object v5, v9

    :cond_7
    iput-object v9, v3, Lid/k;->l:Ljava/lang/String;

    iput-object v9, v3, Lid/k;->m:Ljava/lang/String;

    iput-object v9, v3, Lid/k;->n:Ljava/lang/String;

    iput-object v9, v3, Lid/k;->o:Ljava/lang/String;

    iput-boolean v1, v3, Lid/k;->p:Z

    iput v7, v3, Lid/k;->s:I

    invoke-static {v10, v6, v5, v2, v3}, Lid/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lid/k;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    check-cast v0, Ljava/lang/String;

    goto :goto_7

    :cond_9
    if-eqz v1, :cond_a

    move-object v12, v9

    :cond_a
    iput-object v9, v3, Lid/k;->l:Ljava/lang/String;

    iput-object v9, v3, Lid/k;->m:Ljava/lang/String;

    iput-object v9, v3, Lid/k;->n:Ljava/lang/String;

    iput-object v9, v3, Lid/k;->o:Ljava/lang/String;

    iput-boolean v1, v3, Lid/k;->p:Z

    iput v6, v3, Lid/k;->s:I

    invoke-static {v10, v5, v12, v11, v3}, Lid/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lid/k;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_b

    :goto_5
    return-object v4

    :cond_b
    :goto_6
    check-cast v0, Ljava/lang/String;

    :goto_7
    sget-object v1, Lid/u;->Companion:Lid/s;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "match"

    const-string v2, "matchings"

    invoke-static {v0, v1, v2}, Lid/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v8, :cond_c

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;

    goto :goto_8

    :cond_c
    invoke-static {v0}, Lid/l;->d(Ljava/util/ArrayList;)Lua/nav/routing/Route;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_d
    new-instance v0, Ld1/h;

    const-string v1, "Map matching: \u043f\u043e\u0440\u043e\u0436\u043d\u044f \u0432\u0456\u0434\u043f\u043e\u0432\u0456\u0434\u044c"

    invoke-direct {v0, v1}, Ld1/h;-><init>(Ljava/lang/String;)V

    throw v0
.end method
