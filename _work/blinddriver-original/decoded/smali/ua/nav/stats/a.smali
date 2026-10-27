.class public final Lua/nav/stats/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lu9/t;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Lld/n;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public g:J

.field public h:Z

.field public i:Lua/nav/routing/Route;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;


# direct methods
.method public constructor <init>(Landroid/app/Application;Lu9/t;)V
    .locals 4

    const-string v0, "scope"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lua/nav/stats/a;->a:Lu9/t;

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    const-string v1, "trip_stats.json"

    invoke-direct {p2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lua/nav/stats/a;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string v2, "logs"

    invoke-direct {v0, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lua/nav/stats/a;->c:Ljava/io/File;

    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lgd/h;->c:Lia/r;

    sget-object v0, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    invoke-virtual {v0}, Lua/nav/stats/TripStatsData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/KSerializer;

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {p2, v2}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/stats/TripStatsData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    goto :goto_1

    :goto_0
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_1
    instance-of p2, p1, Lt8/l;

    if-eqz p2, :cond_1

    move-object p1, v1

    :cond_1
    check-cast p1, Lua/nav/stats/TripStatsData;

    if-eqz p1, :cond_2

    iget-object p2, p1, Lua/nav/stats/TripStatsData;->c:Ljava/lang/Long;

    if-nez p2, :cond_2

    iget-object v0, p1, Lua/nav/stats/TripStatsData;->b:Ljava/util/Map;

    iget-object p1, p1, Lua/nav/stats/TripStatsData;->d:Ljava/util/List;

    const-string v2, "cells"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "importedLogs"

    invoke-static {p1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lua/nav/stats/TripStatsData;

    sget-object v3, Lu8/r;->l:Lu8/r;

    invoke-direct {v2, v3, v0, p2, p1}, Lua/nav/stats/TripStatsData;-><init>(Ljava/util/List;Ljava/util/Map;Ljava/lang/Long;Ljava/util/List;)V

    move-object p1, v2

    :cond_2
    new-instance p2, Lld/n;

    if-nez p1, :cond_3

    new-instance p1, Lua/nav/stats/TripStatsData;

    invoke-direct {p1}, Lua/nav/stats/TripStatsData;-><init>()V

    :cond_3
    const/4 v0, 0x2

    invoke-direct {p2, p1, v1, v0}, Lld/n;-><init>(Lua/nav/stats/TripStatsData;Ljava/time/ZoneId;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lld/n;->c(J)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p2, p1}, Lld/n;->g(Ljava/time/LocalDate;)V

    iput-object p2, p0, Lua/nav/stats/a;->d:Lld/n;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/stats/a;->e:Lx9/l0;

    iput-object p1, p0, Lua/nav/stats/a;->f:Lx9/l0;

    invoke-static {v1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lua/nav/stats/a;->j:Lx9/l0;

    iput-object p1, p0, Lua/nav/stats/a;->k:Lx9/l0;

    return-void
.end method

.method public static final a(Lua/nav/stats/a;Ldd/n;Lua/nav/routing/Route;J)Z
    .locals 10

    iget-object p0, p1, Ldd/n;->c:Ldd/l0;

    const-wide/32 v0, 0xea60

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    iget-wide v3, p0, Ldd/l0;->c:J

    sub-long v3, p3, v3

    cmp-long v3, v3, v0

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_2

    iget-wide v4, p0, Ldd/l0;->d:D

    iget-wide v6, p0, Ldd/l0;->e:D

    iget-object p0, p0, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double v8, p0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    move-object v8, p0

    :goto_1
    move-object v3, p2

    goto :goto_2

    :cond_1
    move-object v8, v2

    goto :goto_1

    :goto_2
    invoke-static/range {v3 .. v8}, Ll9/a;->f(Lua/nav/routing/Route;DDLjava/lang/Double;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_2
    move-object v3, p2

    :cond_3
    iget-object p0, p1, Ldd/n;->d:Ldd/l0;

    if-eqz p0, :cond_7

    iget-wide p1, p0, Ldd/l0;->c:J

    sub-long/2addr p3, p1

    cmp-long p1, p3, v0

    if-gtz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p0, v2

    :goto_3
    if-nez p0, :cond_5

    goto :goto_4

    :cond_5
    iget-wide v4, p0, Ldd/l0;->d:D

    iget-wide v6, p0, Ldd/l0;->e:D

    iget-object p0, p0, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_6
    move-object v8, v2

    invoke-static/range {v3 .. v8}, Ll9/a;->f(Lua/nav/routing/Route;DDLjava/lang/Double;)Z

    move-result p0

    return p0

    :cond_7
    :goto_4
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 11

    iget-object v0, p0, Lua/nav/stats/a;->d:Lld/n;

    iget-object v1, v0, Lld/n;->d:Ljava/lang/Long;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    new-instance v3, Lld/o;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lld/o;-><init>(I)V

    iget-object p0, p0, Lua/nav/stats/a;->c:Ljava/io/File;

    invoke-virtual {p0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    const/4 v3, 0x0

    if-nez p0, :cond_1

    new-array p0, v3, [Ljava/io/File;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v5, p0

    :goto_1
    if-ge v3, v5, :cond_5

    aget-object v6, p0, v3

    iget-object v7, v0, Lld/n;->e:Ljava/util/Set;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_4

    :try_start_0
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyyMMdd_HHmmss"

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "getName(...)"

    invoke-static {v8, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "trip_"

    invoke-static {v8, v9}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ".csv"

    invoke-static {v8, v9}, Lr9/k;->n0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v7

    invoke-static {v7}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v7

    :goto_2
    instance-of v8, v7, Lt8/l;

    if-eqz v8, :cond_2

    const/4 v7, 0x0

    :cond_2
    check-cast v7, Ljava/lang/Long;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    cmp-long v7, v7, v1

    if-gez v7, :cond_4

    :cond_3
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    new-instance p0, Lbd/d;

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lbd/d;-><init>(I)V

    invoke-static {v4, p0}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final c()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lua/nav/stats/a;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lua/nav/stats/a;->h:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lua/nav/stats/a;->d:Lld/n;

    invoke-virtual {v2, v0, v1}, Lld/n;->c(J)Ljava/time/LocalDate;

    move-result-object v0

    invoke-virtual {v2, v0}, Lld/n;->g(Ljava/time/LocalDate;)V

    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v1, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    invoke-virtual {v1}, Lua/nav/stats/TripStatsData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v2}, Lld/n;->j()Lua/nav/stats/TripStatsData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroidx/lifecycle/i0;

    const/16 v2, 0x12

    const/4 v3, 0x0

    invoke-direct {v1, p0, v0, v3, v2}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v0, 0x3

    iget-object p0, p0, Lua/nav/stats/a;->a:Lu9/t;

    invoke-static {p0, v3, v3, v1, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lua/nav/stats/a;->b:Ljava/io/File;

    sget-object v1, Lgd/h;->c:Lia/r;

    sget-object v2, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    invoke-virtual {v2}, Lua/nav/stats/TripStatsData$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lua/nav/stats/a;->d:Lld/n;

    invoke-virtual {p0}, Lld/n;->j()Lua/nav/stats/TripStatsData;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    return-void
.end method

.method public final e(Lld/j;Ljava/lang/Double;)V
    .locals 9

    iget-object v0, p0, Lua/nav/stats/a;->d:Lld/n;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lld/n;->c:Ljava/util/HashMap;

    iget-object p1, p1, Lld/j;->l:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/stats/CongestionCell;

    if-nez v1, :cond_0

    new-instance v1, Lua/nav/stats/CongestionCell;

    invoke-direct {v1}, Lua/nav/stats/CongestionCell;-><init>()V

    :cond_0
    move-object v2, v1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    invoke-static/range {v3 .. v8}, Lg6/c1;->d(DDD)D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    move-object v6, p2

    goto :goto_0

    :cond_1
    move-object v6, v1

    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0xb

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v8}, Lua/nav/stats/CongestionCell;->a(Lua/nav/stats/CongestionCell;DILjava/lang/Double;Ljava/lang/String;I)Lua/nav/stats/CongestionCell;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lua/nav/stats/a;->e:Lx9/l0;

    invoke-virtual {p1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lua/nav/stats/a;->c()V

    return-void
.end method
