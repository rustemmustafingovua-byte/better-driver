.class public final Ltc/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Ltc/b;


# instance fields
.field public final a:Landroid/app/Application;

.field public final b:Lgd/d;

.field public final c:Lu9/t;

.field public final d:Lp/a1;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public i:Lod/y6;

.field public j:Ltc/a;

.field public k:Ltc/l;

.field public l:Ltc/i;

.field public m:Lua/nav/routing/GeoPoint;

.field public n:Lua/nav/alerts/AlertsDto;

.field public o:J

.field public volatile p:Z

.field public q:Lp2/y;

.field public r:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ltc/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ltc/e;->Companion:Ltc/b;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;Lgd/d;Lu9/t;Lp/a1;)V
    .locals 1

    const-string v0, "scope"

    invoke-static {p3, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/e;->a:Landroid/app/Application;

    iput-object p2, p0, Ltc/e;->b:Lgd/d;

    iput-object p3, p0, Ltc/e;->c:Lu9/t;

    iput-object p4, p0, Ltc/e;->d:Lp/a1;

    const/4 p1, 0x0

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p2

    iput-object p2, p0, Ltc/e;->e:Lx9/l0;

    iput-object p2, p0, Ltc/e;->f:Lx9/l0;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Ltc/e;->g:Lx9/l0;

    iput-object p1, p0, Ltc/e;->h:Lx9/l0;

    return-void
.end method

.method public static final a(Ltc/e;La9/c;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    instance-of v2, v0, Ltc/c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Ltc/c;

    iget v3, v2, Ltc/c;->p:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Ltc/c;->p:I

    goto :goto_0

    :cond_0
    new-instance v2, Ltc/c;

    invoke-direct {v2, v1, v0}, Ltc/c;-><init>(Ltc/e;La9/c;)V

    :goto_0
    iget-object v0, v2, Ltc/c;->n:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Ltc/c;->p:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v2, v2, Ltc/c;->m:Lua/nav/alerts/AlertsDto;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-wide v8, v2, Ltc/c;->l:J

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-object v0, v1, Ltc/e;->n:Lua/nav/alerts/AlertsDto;

    if-eqz v0, :cond_4

    iget-wide v10, v1, Ltc/e;->o:J

    sub-long v10, v8, v10

    const-wide/16 v12, 0x6d60

    cmp-long v0, v10, v12

    if-ltz v0, :cond_7

    :cond_4
    iget-object v0, v1, Ltc/e;->b:Lgd/d;

    iput-wide v8, v2, Ltc/c;->l:J

    iput v6, v2, Ltc/c;->p:I

    sget-object v4, Lu9/e0;->a:Lba/e;

    sget-object v4, Lba/d;->n:Lba/d;

    new-instance v10, Lgd/b;

    invoke-direct {v10, v0, v7}, Lgd/b;-><init>(Lgd/d;Ly8/c;)V

    invoke-static {v4, v10, v2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    goto :goto_2

    :cond_5
    :goto_1
    check-cast v0, Lua/nav/alerts/AlertsDto;

    if-nez v0, :cond_6

    iput-boolean v6, v1, Ltc/e;->p:Z

    iget-object v0, v1, Ltc/e;->b:Lgd/d;

    iget-object v0, v0, Lgd/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "fetch_failed "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ltc/e;->b(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_6
    iput-object v0, v1, Ltc/e;->n:Lua/nav/alerts/AlertsDto;

    iput-wide v8, v1, Ltc/e;->o:J

    :cond_7
    iget-object v0, v1, Ltc/e;->n:Lua/nav/alerts/AlertsDto;

    if-nez v0, :cond_8

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_8
    iget-object v4, v1, Ltc/e;->d:Lp/a1;

    invoke-virtual {v4}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    if-nez v4, :cond_9

    const-string v0, "no_position"

    invoke-virtual {v1, v0}, Ltc/e;->b(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0

    :cond_9
    sget-object v10, Lu9/e0;->a:Lba/e;

    new-instance v11, Lad/t0;

    const/16 v12, 0xb

    invoke-direct {v11, v1, v4, v7, v12}, Lad/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput-object v0, v2, Ltc/c;->m:Lua/nav/alerts/AlertsDto;

    iput-wide v8, v2, Ltc/c;->l:J

    iput v5, v2, Ltc/c;->p:I

    invoke-static {v10, v11, v2}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_a

    :goto_2
    return-object v3

    :cond_a
    move-object/from16 v18, v2

    move-object v2, v0

    move-object/from16 v0, v18

    :goto_3
    move-object v10, v0

    check-cast v10, Ltc/i;

    if-nez v10, :cond_b

    const-string v0, "outside_raions"

    invoke-virtual {v1, v0}, Ltc/e;->b(Ljava/lang/String;)V

    iget-object v0, v1, Ltc/e;->e:Lx9/l0;

    invoke-virtual {v0, v7}, Lx9/l0;->j(Ljava/lang/Object;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_b
    iget-boolean v0, v2, Lua/nav/alerts/AlertsDto;->a:Z

    if-eqz v0, :cond_2f

    sget-object v0, Ltc/h;->a:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, v10, Ltc/i;->b:Ljava/lang/String;

    invoke-static {v0}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v5, v10, Ltc/i;->a:Ljava/lang/String;

    invoke-static {v5}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v10, Ltc/i;->c:Ljava/util/ArrayList;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v11, 0xa

    invoke-static {v8, v11}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v12, :cond_c

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lt8/j;

    sget-object v15, Ltc/h;->a:Ljava/lang/Object;

    iget-object v15, v14, Lt8/j;->l:Ljava/lang/Object;

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iget-object v14, v14, Lt8/j;->m:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    new-instance v3, Lt8/j;

    invoke-direct {v3, v15, v14}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v12, v2, Lua/nav/alerts/AlertsDto;->c:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lua/nav/alerts/AlertRegion;

    iget-object v14, v13, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    invoke-static {v14}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v13, Lua/nav/alerts/AlertRegion;->d:Ljava/lang/String;

    invoke-static {v15}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move/from16 v17, v6

    iget-object v6, v13, Lua/nav/alerts/AlertRegion;->e:Ljava/lang/String;

    invoke-static {v6}, Ltc/h;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v13, Lua/nav/alerts/AlertRegion;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v4, 0x4c7d471

    if-eq v11, v4, :cond_1a

    const v4, 0x151397ae

    if-eq v11, v4, :cond_12

    const v4, 0x1f374fc9

    if-eq v11, v4, :cond_d

    goto :goto_6

    :cond_d
    const-string v4, "Community"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    :cond_e
    :goto_6
    move/from16 v6, v17

    const/4 v7, 0x0

    const/16 v11, 0xa

    goto :goto_5

    :cond_f
    invoke-static {v6, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    :goto_7
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_11
    invoke-static {v15, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_12
    const-string v4, "District"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto :goto_6

    :cond_13
    invoke-static {v14, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v15, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :goto_8
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_17
    if-ge v6, v4, :cond_19

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lt8/j;

    iget-object v11, v7, Lt8/j;->l:Ljava/lang/Object;

    invoke-static {v11, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_18

    goto :goto_9

    :cond_18
    iget-object v7, v7, Lt8/j;->m:Ljava/lang/Object;

    invoke-static {v7, v15}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    :goto_9
    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_19
    :goto_a
    invoke-static {v15, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1a
    const-string v4, "State"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_6

    :cond_1b
    invoke-static {v14, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1c
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1d

    goto/16 :goto_6

    :cond_1d
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :cond_1e
    if-ge v6, v4, :cond_e

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lt8/j;

    iget-object v7, v7, Lt8/j;->m:Ljava/lang/Object;

    invoke-static {v7, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_1f
    move/from16 v17, v6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_20
    :goto_b
    if-ge v5, v4, :cond_21

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Lua/nav/alerts/AlertRegion;

    iget-object v7, v7, Lua/nav/alerts/AlertRegion;->h:Ljava/lang/String;

    const-string v9, "Yellow"

    invoke-static {v7, v9}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    move-object v8, v0

    goto :goto_c

    :cond_22
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    move-object v8, v3

    :cond_23
    :goto_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24

    sget-object v0, Ltc/f;->n:Ltc/f;

    :goto_d
    move-object v9, v0

    goto :goto_e

    :cond_24
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Ltc/f;->m:Ltc/f;

    goto :goto_d

    :cond_25
    sget-object v0, Ltc/f;->l:Ltc/f;

    goto :goto_d

    :goto_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :cond_26
    :goto_f
    if-ge v5, v4, :cond_27

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lua/nav/alerts/AlertRegion;

    iget-object v6, v6, Lua/nav/alerts/AlertRegion;->g:Ljava/lang/Long;

    if-eqz v6, :cond_26

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_27
    invoke-static {v0}, Lu8/m;->n0(Ljava/util/ArrayList;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/16 v0, 0x3e8

    int-to-long v6, v0

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v11, v0

    goto :goto_10

    :cond_28
    const/4 v11, 0x0

    :goto_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_11
    if-ge v5, v4, :cond_29

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lua/nav/alerts/AlertRegion;

    iget-object v6, v6, Lua/nav/alerts/AlertRegion;->i:Ljava/util/List;

    invoke-static {v6, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_11

    :cond_29
    invoke-static {v0}, Lu8/m;->b0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_2a

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lua/nav/alerts/AlertRegion;

    iget-object v6, v6, Lua/nav/alerts/AlertRegion;->f:Ljava/util/List;

    invoke-static {v6, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto :goto_12

    :cond_2a
    invoke-static {v0}, Lu8/m;->b0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v0, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ltc/h;->a:Ljava/lang/Object;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_2b

    goto :goto_14

    :cond_2b
    move-object v5, v6

    :goto_14
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_2c
    move-object v12, v4

    goto :goto_15

    :cond_2d
    move-object v12, v0

    :goto_15
    new-instance v0, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v8, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_16
    if-ge v5, v4, :cond_2e

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lua/nav/alerts/AlertRegion;

    iget-object v6, v6, Lua/nav/alerts/AlertRegion;->c:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_2e
    invoke-static {v0}, Lu8/m;->b0(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v13

    iget-wide v4, v2, Lua/nav/alerts/AlertsDto;->b:J

    const/16 v0, 0x3e8

    int-to-long v6, v0

    mul-long v14, v4, v6

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v16, v0, 0x1

    new-instance v8, Ltc/a;

    invoke-direct/range {v8 .. v16}, Ltc/a;-><init>(Ltc/f;Ltc/i;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;JZ)V

    goto :goto_17

    :cond_2f
    move/from16 v17, v6

    const/4 v8, 0x0

    :goto_17
    if-nez v8, :cond_31

    iget-boolean v0, v2, Lua/nav/alerts/AlertsDto;->a:Z

    iget-wide v3, v2, Lua/nav/alerts/AlertsDto;->b:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/16 v5, 0x3e8

    int-to-long v5, v5

    div-long/2addr v3, v5

    iget-wide v5, v2, Lua/nav/alerts/AlertsDto;->b:J

    sub-long/2addr v3, v5

    goto :goto_18

    :cond_30
    const-wide/16 v3, -0x1

    :goto_18
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "server_no_data ok="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " updated_age_s="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_31
    iget-object v0, v8, Ltc/a;->a:Ltc/f;

    iget-boolean v3, v8, Ltc/a;->g:Z

    iget-object v2, v2, Lua/nav/alerts/AlertsDto;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v4, v10, Ltc/i;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ok level="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " here="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " regions="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " place="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_19
    invoke-virtual {v1, v0}, Ltc/e;->b(Ljava/lang/String;)V

    iget-object v0, v1, Ltc/e;->e:Lx9/l0;

    invoke-virtual {v0, v8}, Lx9/l0;->j(Ljava/lang/Object;)V

    if-eqz v8, :cond_48

    sget-object v0, Ltc/h;->a:Ljava/lang/Object;

    iget-object v0, v1, Ltc/e;->j:Ltc/a;

    iget-object v2, v8, Ltc/a;->e:Ljava/util/List;

    iget-boolean v3, v8, Ltc/a;->g:Z

    iget-object v4, v8, Ltc/a;->a:Ltc/f;

    if-eqz v0, :cond_33

    iget-object v5, v0, Ltc/a;->a:Ltc/f;

    if-ne v5, v4, :cond_33

    iget-boolean v5, v0, Ltc/a;->g:Z

    if-ne v5, v3, :cond_33

    :cond_32
    :goto_1a
    const/4 v7, 0x0

    goto/16 :goto_21

    :cond_33
    iget-object v5, v8, Ltc/a;->d:Ljava/util/List;

    invoke-static {v5}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_34

    const-string v5, "\u041f\u043e\u0432\u0456\u0442\u0440\u044f\u043d\u0430 \u0442\u0440\u0438\u0432\u043e\u0433\u0430"

    :cond_34
    invoke-static {v5}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v0, :cond_35

    iget-object v6, v0, Ltc/a;->a:Ltc/f;

    sget-object v7, Ltc/f;->l:Ltc/f;

    if-eq v6, v7, :cond_35

    iget-boolean v6, v0, Ltc/a;->g:Z

    if-eqz v6, :cond_35

    move/from16 v6, v17

    goto :goto_1b

    :cond_35
    const/4 v6, 0x0

    :goto_1b
    sget-object v7, Lcd/a;->a:Lcd/b;

    invoke-static {}, Lcd/a;->b()Z

    move-result v7

    const-string v9, ""

    const-string v10, ": "

    if-eqz v7, :cond_3e

    sget-object v7, Ltc/f;->l:Ltc/f;

    if-ne v4, v7, :cond_37

    if-eqz v0, :cond_32

    iget-object v0, v0, Ltc/a;->a:Ltc/f;

    if-ne v0, v7, :cond_36

    goto :goto_1a

    :cond_36
    const-string v7, "All clear"

    goto/16 :goto_21

    :cond_37
    if-eqz v3, :cond_39

    if-eqz v0, :cond_38

    iget-object v7, v0, Ltc/a;->a:Ltc/f;

    goto :goto_1c

    :cond_38
    const/4 v7, 0x0

    :goto_1c
    sget-object v4, Ltc/f;->n:Ltc/f;

    if-ne v7, v4, :cond_39

    iget-boolean v0, v0, Ltc/a;->g:Z

    if-eqz v0, :cond_39

    const-string v0, "The alert level in your area has been lowered: "

    :goto_1d
    invoke-static {v0, v5}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_21

    :cond_39
    if-eqz v3, :cond_3a

    const-string v0, "Attention! In your area: "

    goto :goto_1d

    :cond_3a
    if-eqz v6, :cond_3b

    const-string v7, "All clear in your area. The alert continues nearby"

    goto/16 :goto_21

    :cond_3b
    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3d

    invoke-static {v0}, Lcd/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3c

    goto :goto_1e

    :cond_3c
    move-object v9, v0

    :cond_3d
    :goto_1e
    const-string v0, "Alert nearby"

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_21

    :cond_3e
    sget-object v7, Ltc/f;->l:Ltc/f;

    if-ne v4, v7, :cond_40

    if-eqz v0, :cond_32

    iget-object v0, v0, Ltc/a;->a:Ltc/f;

    if-ne v0, v7, :cond_3f

    goto/16 :goto_1a

    :cond_3f
    const-string v7, "\u0412\u0456\u0434\u0431\u0456\u0439 \u0442\u0440\u0438\u0432\u043e\u0433\u0438"

    goto :goto_21

    :cond_40
    if-eqz v3, :cond_42

    if-eqz v0, :cond_41

    iget-object v7, v0, Ltc/a;->a:Ltc/f;

    goto :goto_1f

    :cond_41
    const/4 v7, 0x0

    :goto_1f
    sget-object v4, Ltc/f;->n:Ltc/f;

    if-ne v7, v4, :cond_42

    iget-boolean v0, v0, Ltc/a;->g:Z

    if-eqz v0, :cond_42

    const-string v0, "\u0423 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456 \u0440\u0456\u0432\u0435\u043d\u044c \u0437\u043d\u0438\u0436\u0435\u043d\u043e: "

    goto :goto_1d

    :cond_42
    if-eqz v3, :cond_43

    const-string v0, "\u0423\u0432\u0430\u0433\u0430! \u0423 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456: "

    goto :goto_1d

    :cond_43
    if-eqz v6, :cond_44

    const-string v7, "\u0412\u0456\u0434\u0431\u0456\u0439 \u0442\u0440\u0438\u0432\u043e\u0433\u0438 \u0443 \u0432\u0430\u0448\u043e\u043c\u0443 \u0440\u0430\u0439\u043e\u043d\u0456. \u041f\u043e\u0440\u0443\u0447 \u0442\u0440\u0438\u0432\u043e\u0433\u0430 \u0442\u0440\u0438\u0432\u0430\u0454"

    goto :goto_21

    :cond_44
    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_46

    invoke-virtual {v10, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_45

    goto :goto_20

    :cond_45
    move-object v9, v0

    :cond_46
    :goto_20
    const-string v0, "\u0422\u0440\u0438\u0432\u043e\u0433\u0430 \u043f\u043e\u0440\u0443\u0447"

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :goto_21
    if-eqz v7, :cond_47

    :try_start_0
    iget-object v0, v1, Ltc/e;->i:Lod/y6;

    if-eqz v0, :cond_47

    invoke-virtual {v0, v7, v8}, Lod/y6;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_22

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_47
    :goto_22
    iput-object v8, v1, Ltc/e;->j:Ltc/a;

    :cond_48
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 6

    const-string v0, "alerts "

    const-string v1, "regions=\\d+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "replaceAll(...)"

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "updated_age_s=-?\\d+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    invoke-static {v5, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Ltc/e;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ltc/e;->r:Ljava/lang/String;

    :try_start_0
    iget-object p0, p0, Ltc/e;->q:Lp2/y;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lp2/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method
