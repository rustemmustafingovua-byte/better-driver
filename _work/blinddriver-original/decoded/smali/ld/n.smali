.class public final Lld/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lld/k;


# instance fields
.field public final a:Ljava/time/ZoneId;

.field public final b:Ljava/util/TreeMap;

.field public final c:Ljava/util/HashMap;

.field public d:Ljava/lang/Long;

.field public final e:Ljava/util/Set;

.field public f:Z

.field public g:D

.field public h:D

.field public i:D

.field public j:D

.field public k:D

.field public l:D

.field public m:D

.field public n:D

.field public o:D

.field public p:D

.field public q:Z

.field public r:D

.field public s:D

.field public t:D

.field public u:D

.field public v:Z

.field public w:Lld/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lld/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lld/n;->Companion:Lld/k;

    return-void
.end method

.method public constructor <init>(Lua/nav/stats/TripStatsData;Ljava/time/ZoneId;I)V
    .locals 2

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    new-instance p1, Lua/nav/stats/TripStatsData;

    invoke-direct {p1}, Lua/nav/stats/TripStatsData;-><init>()V

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    invoke-static {}, Lsc/x0;->a()Ljava/time/ZoneId;

    move-result-object p2

    :cond_1
    const-string p3, "zone"

    invoke-static {p2, p3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lld/n;->a:Ljava/time/ZoneId;

    new-instance p2, Ljava/util/TreeMap;

    invoke-direct {p2}, Ljava/util/TreeMap;-><init>()V

    iput-object p2, p0, Lld/n;->b:Ljava/util/TreeMap;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lld/n;->c:Ljava/util/HashMap;

    iget-object p2, p1, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lua/nav/stats/DayTotals;

    :try_start_0
    iget-object v0, p3, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_1
    instance-of v1, v0, Lt8/l;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_3
    check-cast v0, Ljava/time/LocalDate;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lld/n;->b:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lld/n;->c:Ljava/util/HashMap;

    iget-object p3, p1, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget-object p2, p1, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    iput-object p2, p0, Lld/n;->d:Ljava/lang/Long;

    iget-object p1, p1, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    invoke-static {p1}, Lu8/m;->E0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lld/n;->e:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/time/LocalDate;DDD)V
    .locals 11

    iget-object p0, p0, Lld/n;->b:Ljava/util/TreeMap;

    invoke-virtual {p0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/stats/DayTotals;

    if-nez v0, :cond_0

    new-instance v1, Lua/nav/stats/DayTotals;

    invoke-virtual {p1}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "toString(...)"

    invoke-static {v2, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v3, 0x0

    invoke-direct/range {v1 .. v8}, Lua/nav/stats/DayTotals;-><init>(Ljava/lang/String;DDD)V

    move-object v0, v1

    :cond_0
    iget-wide v1, v0, Lua/nav/stats/DayTotals;->b:D

    add-double v5, v1, p2

    iget-wide p2, v0, Lua/nav/stats/DayTotals;->c:D

    add-double v7, p2, p4

    iget-wide p2, v0, Lua/nav/stats/DayTotals;->d:D

    add-double v9, p2, p6

    iget-object v4, v0, Lua/nav/stats/DayTotals;->a:Ljava/lang/String;

    const-string p2, "day"

    invoke-static {v4, p2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lua/nav/stats/DayTotals;

    invoke-direct/range {v3 .. v10}, Lua/nav/stats/DayTotals;-><init>(Ljava/lang/String;DDD)V

    invoke-virtual {p0, p1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(Lld/j;)Lua/nav/stats/CongestionCell;
    .locals 1

    const-string v0, "cell"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lld/n;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lld/j;->l:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lua/nav/stats/CongestionCell;

    if-nez p0, :cond_0

    new-instance p0, Lua/nav/stats/CongestionCell;

    invoke-direct {p0}, Lua/nav/stats/CongestionCell;-><init>()V

    :cond_0
    return-object p0
.end method

.method public final c(J)Ljava/time/LocalDate;
    .locals 0

    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object p1

    iget-object p0, p0, Lld/n;->a:Ljava/time/ZoneId;

    invoke-virtual {p1, p0}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    move-result-object p0

    const-string p1, "toLocalDate(...)"

    invoke-static {p0, p1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final d(J)Ljava/util/List;
    .locals 16

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lld/n;->q:Z

    if-nez v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, v0, Lld/n;->q:Z

    iget-wide v2, v0, Lld/n;->s:D

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    cmpg-double v4, v2, v4

    if-gtz v4, :cond_1

    iget-wide v4, v0, Lld/n;->r:D

    add-double/2addr v4, v2

    iput-wide v4, v0, Lld/n;->r:D

    :cond_1
    iget-wide v2, v0, Lld/n;->t:D

    iget-wide v4, v0, Lld/n;->u:D

    add-double/2addr v2, v4

    iget-boolean v4, v0, Lld/n;->v:Z

    if-nez v4, :cond_b

    iget-wide v4, v0, Lld/n;->r:D

    const-wide v6, 0x4066800000000000L    # 180.0

    cmpg-double v6, v4, v6

    if-ltz v6, :cond_b

    const-wide/16 v6, 0x0

    cmpg-double v6, v2, v6

    if-gtz v6, :cond_2

    goto/16 :goto_7

    :cond_2
    div-double v7, v4, v2

    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    cmpl-double v4, v7, v4

    if-lez v4, :cond_3

    goto/16 :goto_7

    :cond_3
    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    invoke-static/range {v7 .. v12}, Lg6/c1;->d(DDD)D

    move-result-wide v4

    invoke-virtual/range {p0 .. p2}, Lld/n;->c(J)Ljava/time/LocalDate;

    move-result-object v6

    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    sget-object v8, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    if-eq v7, v8, :cond_5

    invoke-virtual {v6}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v7

    sget-object v8, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    if-ne v7, v8, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    move v7, v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-wide v9, v0, Lld/n;->t:D

    div-double/2addr v9, v2

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-instance v10, Lt8/j;

    invoke-direct {v10, v1, v9}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-wide v11, v0, Lld/n;->u:D

    div-double/2addr v11, v2

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-instance v3, Lt8/j;

    invoke-direct {v3, v1, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v10, v3}, [Lt8/j;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt8/j;

    iget-object v2, v1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v1, v1, Lt8/j;->m:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v10

    const-wide v12, 0x3fd3333333333333L    # 0.3

    cmpg-double v1, v10, v12

    if-ltz v1, :cond_9

    sget-object v1, Lld/j;->q:Lb9/b;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lj9/b;

    const/4 v12, 0x5

    invoke-direct {v3, v12, v1}, Lj9/b;-><init>(ILjava/lang/Object;)V

    :goto_4
    invoke-virtual {v3}, Lj9/b;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v3}, Lj9/b;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld/j;

    iget-boolean v12, v1, Lld/j;->n:Z

    if-ne v12, v2, :cond_7

    iget-boolean v12, v1, Lld/j;->o:Z

    if-ne v12, v7, :cond_7

    iget-object v2, v0, Lld/n;->w:Lld/b;

    if-eqz v2, :cond_6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-virtual {v2, v1, v3, v6, v10}, Lld/b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    move-wide v0, v4

    move-object v4, v6

    goto :goto_5

    :cond_6
    move-wide v2, v4

    move-object v4, v6

    move-wide v5, v10

    invoke-virtual/range {v0 .. v6}, Lld/n;->e(Lld/j;DLjava/time/LocalDate;D)V

    move-wide v14, v2

    move-object v2, v1

    move-wide v0, v14

    :goto_5
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v6, v4

    move-wide v4, v0

    :goto_6
    move-object/from16 v0, p0

    goto :goto_3

    :cond_7
    move-wide v0, v4

    move-object v4, v6

    move-wide v5, v10

    move-wide v10, v5

    move-object v6, v4

    move-wide v4, v0

    move-object/from16 v0, p0

    goto :goto_4

    :cond_8
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move-wide v0, v4

    goto :goto_6

    :cond_a
    return-object v8

    :cond_b
    :goto_7
    sget-object v0, Lu8/r;->l:Lu8/r;

    return-object v0
.end method

.method public final e(Lld/j;DLjava/time/LocalDate;D)V
    .locals 17

    move-object/from16 v0, p1

    const-string v1, "cell"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "date"

    move-object/from16 v2, p4

    invoke-static {v2, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lld/j;->l:Ljava/lang/String;

    move-object/from16 v1, p0

    iget-object v1, v1, Lld/n;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/stats/CongestionCell;

    if-nez v3, :cond_0

    new-instance v3, Lua/nav/stats/CongestionCell;

    invoke-direct {v3}, Lua/nav/stats/CongestionCell;-><init>()V

    :cond_0
    iget v4, v3, Lua/nav/stats/CongestionCell;->b:I

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v5, p5

    invoke-static/range {v5 .. v10}, Lg6/c1;->d(DDD)D

    move-result-wide v5

    const/16 v7, 0x1e

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    int-to-double v7, v7

    div-double v13, v5, v7

    iget-wide v11, v3, Lua/nav/stats/CongestionCell;->a:D

    move-wide v15, v11

    move-wide/from16 v9, p2

    invoke-static/range {v9 .. v16}, Lm/a;->b(DDDD)D

    move-result-wide v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2}, Ljava/time/LocalDate;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object/from16 p5, v2

    move-object/from16 p0, v3

    move/from16 p3, v4

    move-wide/from16 p1, v5

    move/from16 p6, v7

    move-object/from16 p4, v8

    invoke-static/range {p0 .. p6}, Lua/nav/stats/CongestionCell;->a(Lua/nav/stats/CongestionCell;DILjava/lang/Double;Ljava/lang/String;I)Lua/nav/stats/CongestionCell;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final f(DD)V
    .locals 4

    iget-boolean v0, p0, Lld/n;->q:Z

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-lez v2, :cond_3

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v2, p1, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p3, p3, v2

    if-gez p3, :cond_1

    iget-wide p3, p0, Lld/n;->s:D

    add-double/2addr p3, p1

    iput-wide p3, p0, Lld/n;->s:D

    return-void

    :cond_1
    iget-wide p3, p0, Lld/n;->s:D

    const-wide/high16 v2, 0x405e000000000000L    # 120.0

    cmpg-double v2, p3, v2

    if-gtz v2, :cond_2

    iget-wide v2, p0, Lld/n;->r:D

    add-double/2addr v2, p3

    iput-wide v2, p0, Lld/n;->r:D

    :cond_2
    iput-wide v0, p0, Lld/n;->s:D

    iget-wide p3, p0, Lld/n;->r:D

    add-double/2addr p3, p1

    iput-wide p3, p0, Lld/n;->r:D

    :cond_3
    :goto_0
    return-void
.end method

.method public final g(Ljava/time/LocalDate;)V
    .locals 5

    const-wide/16 v0, 0x5a

    invoke-virtual {p1, v0, v1}, Ljava/time/LocalDate;->minusDays(J)Ljava/time/LocalDate;

    move-result-object p1

    iget-object v0, p0, Lld/n;->b:Ljava/util/TreeMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/TreeMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object p0, p0, Lld/n;->c:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/stats/CongestionCell;

    iget-object v4, v3, Lua/nav/stats/CongestionCell;->c:Ljava/lang/Double;

    if-nez v4, :cond_0

    iget-object v3, v3, Lua/nav/stats/CongestionCell;->d:Ljava/lang/String;

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {v3}, Ljava/time/LocalDate;->parse(Ljava/lang/CharSequence;)Ljava/time/LocalDate;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    invoke-static {v3}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v3

    :goto_1
    instance-of v4, v3, Lt8/l;

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :cond_1
    check-cast v3, Ljava/time/LocalDate;

    if-eqz v3, :cond_0

    invoke-virtual {v3, p1}, Ljava/time/LocalDate;->isBefore(Ljava/time/chrono/ChronoLocalDate;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lld/n;->i:D

    iput-wide v0, p0, Lld/n;->j:D

    iput-wide v0, p0, Lld/n;->k:D

    iput-wide v0, p0, Lld/n;->l:D

    iput-wide v0, p0, Lld/n;->m:D

    iput-wide v0, p0, Lld/n;->n:D

    iput-wide v0, p0, Lld/n;->o:D

    iput-wide v0, p0, Lld/n;->p:D

    return-void
.end method

.method public final i(JDDLjava/lang/Integer;Z)Lld/j;
    .locals 19

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    cmpg-double v3, p3, v1

    const/4 v4, 0x0

    if-lez v3, :cond_12

    const-wide/high16 v5, 0x4014000000000000L    # 5.0

    cmpl-double v3, p3, v5

    if-lez v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v3, v0, Lld/n;->f:Z

    if-eqz v3, :cond_11

    iget-wide v5, v0, Lld/n;->g:D

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpg-double v3, v5, v7

    if-gez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, p3

    cmpg-double v3, p5, v5

    if-gez v3, :cond_2

    iget-wide v1, v0, Lld/n;->o:D

    add-double v1, v1, p3

    iput-wide v1, v0, Lld/n;->o:D

    if-eqz p8, :cond_12

    iget-wide v1, v0, Lld/n;->p:D

    add-double v1, v1, p3

    iput-wide v1, v0, Lld/n;->p:D

    return-object v4

    :cond_2
    iget-wide v5, v0, Lld/n;->o:D

    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    cmpg-double v3, v5, v7

    if-gtz v3, :cond_3

    iget-wide v7, v0, Lld/n;->j:D

    add-double/2addr v7, v5

    iput-wide v7, v0, Lld/n;->j:D

    iget-wide v5, v0, Lld/n;->n:D

    iget-wide v7, v0, Lld/n;->p:D

    add-double/2addr v5, v7

    iput-wide v5, v0, Lld/n;->n:D

    :cond_3
    iput-wide v1, v0, Lld/n;->o:D

    iput-wide v1, v0, Lld/n;->p:D

    iget-wide v5, v0, Lld/n;->j:D

    add-double v5, v5, p3

    iput-wide v5, v0, Lld/n;->j:D

    if-eqz p8, :cond_4

    iget-wide v5, v0, Lld/n;->n:D

    add-double v5, v5, p3

    iput-wide v5, v0, Lld/n;->n:D

    :cond_4
    cmpl-double v3, p5, v1

    if-lez v3, :cond_7

    iget-wide v5, v0, Lld/n;->i:D

    add-double v5, v5, p5

    iput-wide v5, v0, Lld/n;->i:D

    if-eqz p7, :cond_6

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_6

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v5, v3

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v5, v7

    div-double v5, p5, v5

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v7, 0x46

    if-gt v3, v7, :cond_5

    iget-wide v7, v0, Lld/n;->k:D

    add-double/2addr v7, v5

    iput-wide v7, v0, Lld/n;->k:D

    goto :goto_0

    :cond_5
    iget-wide v7, v0, Lld/n;->l:D

    add-double/2addr v7, v5

    iput-wide v7, v0, Lld/n;->l:D

    goto :goto_0

    :cond_6
    iget-wide v5, v0, Lld/n;->m:D

    add-double v5, v5, p5

    iput-wide v5, v0, Lld/n;->m:D

    :cond_7
    :goto_0
    iget-wide v5, v0, Lld/n;->i:D

    const-wide v7, 0x407f400000000000L    # 500.0

    cmpg-double v3, v5, v7

    if-gez v3, :cond_8

    goto/16 :goto_5

    :cond_8
    iget-wide v7, v0, Lld/n;->m:D

    sub-double v7, v5, v7

    iget-wide v9, v0, Lld/n;->k:D

    iget-wide v11, v0, Lld/n;->l:D

    add-double v13, v9, v11

    cmpl-double v3, v9, v11

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ltz v3, :cond_9

    move v3, v10

    goto :goto_1

    :cond_9
    move v3, v9

    :goto_1
    iget-wide v11, v0, Lld/n;->j:D

    div-double v5, v7, v5

    mul-double/2addr v5, v11

    move-wide v15, v1

    iget-wide v1, v0, Lld/n;->n:D

    const-wide v17, 0x3fe6666666666666L    # 0.7

    mul-double v11, v11, v17

    cmpl-double v1, v1, v11

    if-ltz v1, :cond_a

    move v1, v10

    goto :goto_2

    :cond_a
    move v1, v9

    :goto_2
    invoke-virtual {v0}, Lld/n;->h()V

    const-wide v11, 0x4075e00000000000L    # 350.0

    cmpg-double v2, v7, v11

    if-ltz v2, :cond_12

    cmpg-double v2, v13, v15

    if-lez v2, :cond_12

    if-nez v1, :cond_b

    goto/16 :goto_5

    :cond_b
    div-double/2addr v5, v13

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    move-wide/from16 p5, v1

    move-wide/from16 p3, v5

    move-wide/from16 p7, v7

    invoke-static/range {p3 .. p8}, Lg6/c1;->d(DDD)D

    move-result-wide v1

    invoke-virtual/range {p0 .. p2}, Lld/n;->c(J)Ljava/time/LocalDate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v5

    sget-object v6, Ljava/time/DayOfWeek;->SATURDAY:Ljava/time/DayOfWeek;

    if-eq v5, v6, :cond_c

    invoke-virtual {v4}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object v5

    sget-object v6, Ljava/time/DayOfWeek;->SUNDAY:Ljava/time/DayOfWeek;

    if-ne v5, v6, :cond_d

    :cond_c
    move v9, v10

    :cond_d
    sget-object v5, Lld/j;->q:Lb9/b;

    invoke-virtual {v5}, Lu8/e;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lld/j;

    iget-boolean v7, v6, Lld/j;->n:Z

    if-ne v7, v3, :cond_f

    iget-boolean v7, v6, Lld/j;->o:Z

    if-ne v7, v9, :cond_f

    iput-boolean v10, v0, Lld/n;->v:Z

    iget-object v3, v0, Lld/n;->w:Lld/b;

    if-eqz v3, :cond_e

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v3, v6, v0, v4, v1}, Lld/b;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v6

    :cond_e
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object/from16 p1, v0

    move-wide/from16 p3, v1

    move-object/from16 p5, v4

    move-object/from16 p2, v6

    move-wide/from16 p6, v7

    invoke-virtual/range {p1 .. p7}, Lld/n;->e(Lld/j;DLjava/time/LocalDate;D)V

    return-object v6

    :cond_f
    move-wide v0, v1

    move-object v2, v4

    move-object v4, v2

    move-wide v1, v0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_10
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lld/n;->h()V

    :cond_12
    :goto_5
    return-object v4
.end method

.method public final j()Lua/nav/stats/TripStatsData;
    .locals 4

    new-instance v0, Lua/nav/stats/TripStatsData;

    iget-object v1, p0, Lld/n;->b:Ljava/util/TreeMap;

    invoke-virtual {v1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v2, "<get-values>(...)"

    invoke-static {v1, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lld/n;->c:Ljava/util/HashMap;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iget-object v3, p0, Lld/n;->d:Ljava/lang/Long;

    iget-object p0, p0, Lld/n;->e:Ljava/util/Set;

    check-cast p0, Ljava/lang/Iterable;

    invoke-static {p0}, Lu8/m;->v0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, v2, v3, p0}, Lua/nav/stats/TripStatsData;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V

    return-object v0
.end method

.method public final k(DDD)V
    .locals 4

    const-wide v0, 0x3fd999999999999aL    # 0.4

    cmpl-double p5, p5, v0

    const/4 p6, 0x0

    const-wide/16 v0, 0x0

    if-ltz p5, :cond_0

    add-double v2, p1, p3

    cmpl-double p5, v2, v0

    if-lez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p6

    :goto_0
    iput-boolean p5, p0, Lld/n;->q:Z

    iput-wide v0, p0, Lld/n;->r:D

    iput-wide v0, p0, Lld/n;->s:D

    iput-wide p1, p0, Lld/n;->t:D

    iput-wide p3, p0, Lld/n;->u:D

    iput-boolean p6, p0, Lld/n;->v:Z

    return-void
.end method

.method public final l(DDJ)Z
    .locals 11

    const-wide/16 v8, 0x0

    cmpg-double v1, p1, v8

    const/4 v2, 0x0

    if-lez v1, :cond_4

    const-wide/high16 v3, 0x4014000000000000L    # 5.0

    cmpl-double v1, p1, v3

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p5

    invoke-virtual {p0, v3, v4}, Lld/n;->c(J)Ljava/time/LocalDate;

    move-result-object v1

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    cmpl-double v3, p3, v3

    if-ltz v3, :cond_2

    iget-boolean v2, p0, Lld/n;->f:Z

    const/4 v10, 0x1

    if-nez v2, :cond_1

    iput-boolean v10, p0, Lld/n;->f:Z

    iput-wide v8, p0, Lld/n;->g:D

    iput-wide v8, p0, Lld/n;->h:D

    invoke-virtual {p0}, Lld/n;->h()V

    :cond_1
    mul-double v2, p3, p1

    iget-wide v6, p0, Lld/n;->h:D

    move-object v0, p0

    move-wide v4, p1

    invoke-virtual/range {v0 .. v7}, Lld/n;->a(Ljava/time/LocalDate;DDD)V

    iput-wide v8, p0, Lld/n;->h:D

    iget-wide v4, p0, Lld/n;->g:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lld/n;->g:D

    return v10

    :cond_2
    iget-boolean v1, p0, Lld/n;->f:Z

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    iget-wide v3, p0, Lld/n;->h:D

    add-double/2addr v3, p1

    iput-wide v3, p0, Lld/n;->h:D

    const-wide v5, 0x4082c00000000000L    # 600.0

    cmpl-double v1, v3, v5

    if-lez v1, :cond_4

    iput-boolean v2, p0, Lld/n;->f:Z

    iput-wide v8, p0, Lld/n;->h:D

    invoke-virtual {p0}, Lld/n;->h()V

    :cond_4
    :goto_0
    return v2
.end method
