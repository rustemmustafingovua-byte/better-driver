.class public final Lld/q;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Ljava/time/LocalDate;

.field public l:Lj9/v;

.field public m:Lua/nav/stats/a;

.field public n:Ljava/util/List;

.field public o:Ljava/time/LocalDate;

.field public p:Ljava/util/Iterator;

.field public q:Ljava/io/File;

.field public r:J

.field public s:I

.field public t:I

.field public u:I

.field public synthetic v:Ljava/lang/Object;

.field public final synthetic w:Ljava/util/List;

.field public final synthetic x:Lua/nav/stats/a;

.field public final synthetic y:Lod/y6;

.field public final synthetic z:J


# direct methods
.method public constructor <init>(Ljava/util/List;Lua/nav/stats/a;Lod/y6;JLjava/time/LocalDate;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lld/q;->w:Ljava/util/List;

    iput-object p2, p0, Lld/q;->x:Lua/nav/stats/a;

    iput-object p3, p0, Lld/q;->y:Lod/y6;

    iput-wide p4, p0, Lld/q;->z:J

    iput-object p6, p0, Lld/q;->A:Ljava/time/LocalDate;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    new-instance v0, Lld/q;

    iget-wide v4, p0, Lld/q;->z:J

    iget-object v6, p0, Lld/q;->A:Ljava/time/LocalDate;

    iget-object v1, p0, Lld/q;->w:Ljava/util/List;

    iget-object v2, p0, Lld/q;->x:Lua/nav/stats/a;

    iget-object v3, p0, Lld/q;->y:Lod/y6;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lld/q;-><init>(Ljava/util/List;Lua/nav/stats/a;Lod/y6;JLjava/time/LocalDate;Ly8/c;)V

    iput-object p1, v0, Lld/q;->v:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lld/q;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lld/q;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lld/q;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    iget-object v0, v1, Lld/q;->v:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lu9/t;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v0, v1, Lld/q;->u:I

    iget-object v4, v1, Lld/q;->w:Ljava/util/List;

    iget-object v5, v1, Lld/q;->x:Lua/nav/stats/a;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    if-ne v0, v6, :cond_0

    iget v0, v1, Lld/q;->t:I

    iget v8, v1, Lld/q;->s:I

    iget-wide v9, v1, Lld/q;->r:J

    iget-object v11, v1, Lld/q;->q:Ljava/io/File;

    iget-object v12, v1, Lld/q;->p:Ljava/util/Iterator;

    iget-object v13, v1, Lld/q;->o:Ljava/time/LocalDate;

    iget-object v14, v1, Lld/q;->n:Ljava/util/List;

    iget-object v15, v1, Lld/q;->m:Lua/nav/stats/a;

    iget-object v6, v1, Lld/q;->l:Lj9/v;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v4, p1

    :goto_0
    move v5, v0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Lj9/v;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iget-wide v8, v1, Lld/q;->z:J

    iget-object v10, v1, Lld/q;->A:Ljava/time/LocalDate;

    const/4 v11, 0x0

    move-object v14, v4

    move-object v15, v5

    move-object v12, v6

    move-object v13, v10

    move-object v6, v0

    move-wide v9, v8

    move v0, v11

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v11, v0, 0x1

    if-ltz v0, :cond_b

    check-cast v8, Ljava/io/File;

    sget-object v17, Lu9/e0;->a:Lba/e;

    move-object/from16 v17, v4

    sget-object v4, Lba/d;->n:Lba/d;

    move-object/from16 v18, v5

    new-instance v5, Lld/p;

    invoke-direct {v5, v8, v9, v10, v7}, Lld/p;-><init>(Ljava/io/File;JLy8/c;)V

    iput-object v2, v1, Lld/q;->v:Ljava/lang/Object;

    iput-object v6, v1, Lld/q;->l:Lj9/v;

    iput-object v15, v1, Lld/q;->m:Lua/nav/stats/a;

    iput-object v14, v1, Lld/q;->n:Ljava/util/List;

    iput-object v13, v1, Lld/q;->o:Ljava/time/LocalDate;

    iput-object v12, v1, Lld/q;->p:Ljava/util/Iterator;

    iput-object v8, v1, Lld/q;->q:Ljava/io/File;

    iput-wide v9, v1, Lld/q;->r:J

    iput v11, v1, Lld/q;->s:I

    iput v0, v1, Lld/q;->t:I

    const/4 v7, 0x1

    iput v7, v1, Lld/q;->u:I

    invoke-static {v4, v5, v1}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_2

    return-object v3

    :cond_2
    move v5, v11

    move-object v11, v8

    move v8, v5

    goto :goto_0

    :goto_2
    check-cast v4, Lld/g;

    if-eqz v4, :cond_a

    iget-object v0, v4, Lld/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v19, v2

    move-object v2, v0

    check-cast v2, Lua/nav/stats/DayTotals;

    :try_start_0
    iget-object v0, v2, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_4
    move-object/from16 v20, v3

    goto :goto_5

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    goto :goto_4

    :goto_5
    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    :cond_3
    check-cast v0, Ljava/time/LocalDate;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v13}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    :goto_6
    move-object/from16 v29, v7

    move/from16 p1, v8

    goto :goto_9

    :cond_4
    iget-object v3, v15, Lua/nav/stats/a;->d:Lld/n;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "d"

    invoke-static {v2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_1
    iget-object v0, v2, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_7
    move-object/from16 v21, v3

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    goto :goto_7

    :goto_8
    instance-of v3, v0, Lt8/l;

    if-eqz v3, :cond_5

    const/4 v0, 0x0

    :cond_5
    move-object/from16 v22, v0

    check-cast v22, Ljava/time/LocalDate;

    if-nez v22, :cond_6

    goto :goto_6

    :cond_6
    move-object v3, v7

    move/from16 p1, v8

    iget-wide v7, v2, Lua/nav/stats/DayTotals;->b:D

    move-wide/from16 v23, v7

    iget-wide v7, v2, Lua/nav/stats/DayTotals;->c:D

    move-object/from16 v29, v3

    iget-wide v2, v2, Lua/nav/stats/DayTotals;->d:D

    move-wide/from16 v27, v2

    move-wide/from16 v25, v7

    invoke-virtual/range {v21 .. v28}, Lld/n;->a(Ljava/time/LocalDate;DDD)V

    :goto_9
    move/from16 v8, p1

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move-object/from16 v7, v29

    goto :goto_3

    :cond_7
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 p1, v8

    iget-object v0, v4, Lld/g;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lld/e;

    iget-object v3, v2, Lld/e;->c:Ljava/time/LocalDate;

    invoke-virtual {v3, v13}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, v15, Lua/nav/stats/a;->d:Lld/n;

    iget-object v7, v2, Lld/e;->a:Lld/j;

    move-object/from16 v22, v7

    iget-wide v7, v2, Lld/e;->b:D

    move-object/from16 v28, v0

    iget-object v0, v2, Lld/e;->c:Ljava/time/LocalDate;

    move-object/from16 v21, v3

    iget-wide v2, v2, Lld/e;->d:D

    move-object/from16 v25, v0

    move-wide/from16 v26, v2

    move-wide/from16 v23, v7

    invoke-virtual/range {v21 .. v27}, Lld/n;->e(Lld/j;DLjava/time/LocalDate;D)V

    goto :goto_b

    :cond_8
    move-object/from16 v28, v0

    :goto_b
    move-object/from16 v0, v28

    goto :goto_a

    :cond_9
    iget-wide v2, v6, Lj9/v;->l:D

    iget-wide v7, v4, Lld/g;->c:D

    add-double/2addr v2, v7

    iput-wide v2, v6, Lj9/v;->l:D

    goto :goto_c

    :cond_a
    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move/from16 p1, v8

    :goto_c
    iget-object v0, v15, Lua/nav/stats/a;->d:Lld/n;

    iget-object v0, v0, Lld/n;->e:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    iget-object v0, v15, Lua/nav/stats/a;->j:Lx9/l0;

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    new-instance v3, Lt8/j;

    invoke-direct {v3, v2, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v15, Lua/nav/stats/a;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    const-wide/16 v7, 0x1

    add-long/2addr v3, v7

    new-instance v5, Ljava/lang/Long;

    invoke-direct {v5, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move/from16 v0, p1

    move-object v7, v2

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    goto/16 :goto_1

    :cond_b
    move-object v2, v7

    invoke-static {}, Lg5/f;->P()V

    throw v2

    :cond_c
    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object v2, v7

    invoke-virtual/range {v18 .. v18}, Lua/nav/stats/a;->c()V

    move-object/from16 v3, v18

    iget-object v0, v3, Lua/nav/stats/a;->j:Lx9/l0;

    invoke-virtual {v0, v2}, Lx9/l0;->j(Ljava/lang/Object;)V

    iget-wide v2, v6, Lj9/v;->l:D

    new-instance v0, Ljava/lang/Double;

    invoke-direct {v0, v2, v3}, Ljava/lang/Double;-><init>(D)V

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v1, v1, Lld/q;->y:Lod/y6;

    invoke-virtual {v1, v0, v3}, Lod/y6;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
