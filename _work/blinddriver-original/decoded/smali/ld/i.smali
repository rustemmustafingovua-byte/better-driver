.class public final Lld/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lld/c;

.field public static final b:Lr9/i;

.field public static final c:Lr9/i;


# instance fields
.field public final a:Ljava/time/ZoneId;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lld/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lld/i;->Companion:Lld/c;

    new-instance v0, Lr9/i;

    const-string v1, "^guide s=(-?\\d+) src=(\\S+) v=(\\d+)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lld/i;->b:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "route=(route_[0-9_]+\\.json)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lld/i;->c:Lr9/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lsc/x0;->a()Ljava/time/ZoneId;

    move-result-object v0

    const-string v1, "zone"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lld/i;->a:Ljava/time/ZoneId;

    return-void
.end method

.method public static final b(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Lua/nav/routing/Route;
    .locals 3

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v1, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    invoke-virtual {v1}, Lua/nav/routing/Route$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/KSerializer;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v2, p1}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lua/nav/routing/Route;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_0
    instance-of v0, p1, Lt8/l;

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    move-object v0, p1

    check-cast v0, Lua/nav/routing/Route;

    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    check-cast v0, Lua/nav/routing/Route;

    return-object v0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x22

    if-eqz v4, :cond_0

    if-ne v5, v6, :cond_0

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_0

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v3, v7

    goto :goto_1

    :cond_0
    if-ne v5, v6, :cond_1

    xor-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const/16 v6, 0x2c

    if-ne v5, v6, :cond_2

    if-nez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/io/File;J)Lld/g;
    .locals 50

    move-object/from16 v0, p1

    const-string v1, "file"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lu8/k;

    invoke-direct {v7}, Lu8/k;-><init>()V

    sget-object v8, Lr9/a;->a:Ljava/nio/charset/Charset;

    new-instance v9, Ljava/io/InputStreamReader;

    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    new-instance v8, Ljava/io/BufferedReader;

    const/16 v10, 0x2000

    invoke-direct {v8, v9, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    sget-object v10, Lu8/r;->l:Lu8/r;

    const-wide/16 v11, 0x0

    if-nez v9, :cond_0

    :try_start_1
    new-instance v0, Lld/g;

    invoke-direct {v0, v10, v10, v11, v12}, Lld/g;-><init>(Ljava/util/List;Ljava/util/List;D)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v8}, Ljava/io/Closeable;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v18, v8

    goto/16 :goto_3e

    :cond_0
    :try_start_2
    invoke-static {v9}, Lld/i;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string v13, "t_wall_ms"

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    const-string v14, "type"

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v14

    const-string v15, "src"

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v15

    const-string v11, "lat"

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    const-string v12, "lon"

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v18, v8

    :try_start_3
    const-string v8, "speed"

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    const-string v0, "acc"

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    move-object/from16 v19, v1

    const-string v1, "verdict"

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    move-object/from16 v20, v7

    const-string v7, "note"

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v13, :cond_1

    if-gez v14, :cond_2

    :cond_1
    move-object/from16 v33, v10

    goto/16 :goto_3d

    :cond_2
    const/16 v22, 0x0

    const/16 v30, 0x0

    :goto_0
    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-wide v23, 0x408f400000000000L    # 1000.0

    move/from16 v32, v7

    const/4 v7, 0x1

    if-nez v9, :cond_34

    invoke-interface/range {v18 .. v18}, Ljava/io/Closeable;->close()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v2, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_3

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lld/h;

    iget-wide v11, v11, Lld/h;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v9, :cond_4

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lld/h;

    iget-wide v12, v12, Lld/h;->a:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-static {v0, v8}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-static {v4, v1}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v1, :cond_5

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v9, v9, 0x1

    check-cast v11, Lld/d;

    iget-wide v11, v11, Lld/d;->a:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-static {v0, v8}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lld/g;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v10, v10, v1, v2}, Lld/g;-><init>(Ljava/util/List;Ljava/util/List;D)V

    return-object v0

    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Comparable;

    :cond_7
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Comparable;

    invoke-interface {v8, v9}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v10

    if-lez v10, :cond_7

    move-object v8, v9

    goto :goto_4

    :cond_8
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Comparable;

    invoke-interface {v1, v10}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_9

    move-object v1, v10

    goto :goto_5

    :cond_a
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Lld/n;

    move-object/from16 v12, p0

    iget-object v12, v12, Lld/i;->a:Ljava/time/ZoneId;

    const/4 v13, 0x0

    invoke-direct {v11, v13, v12, v7}, Lld/n;-><init>(Lua/nav/stats/TripStatsData;Ljava/time/ZoneId;I)V

    new-instance v12, Lld/b;

    const/4 v14, 0x0

    invoke-direct {v12, v14, v10}, Lld/b;-><init>(ILjava/lang/Object;)V

    iput-object v12, v11, Lld/n;->w:Lld/b;

    move/from16 v26, v7

    move-object v7, v13

    move-object/from16 v20, v7

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_6
    cmp-long v22, v8, v0

    if-gtz v22, :cond_30

    :goto_7
    move-wide/from16 p1, v0

    add-int/lit8 v0, v12, 0x1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld/d;

    move/from16 p0, v14

    move/from16 p3, v15

    iget-wide v14, v1, Lld/d;->a:J

    cmp-long v1, v14, v8

    if-gtz v1, :cond_c

    move/from16 v14, p0

    move/from16 v15, p3

    move v12, v0

    move-wide/from16 v0, p1

    goto :goto_7

    :cond_b
    move/from16 p0, v14

    move/from16 p3, v15

    :cond_c
    move/from16 v14, p0

    :goto_8
    add-int/lit8 v1, v14, 0x1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v1, v15, :cond_d

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lld/h;

    move-object/from16 v22, v10

    move-object/from16 v32, v11

    iget-wide v10, v15, Lld/h;->a:J

    cmp-long v10, v10, v8

    if-gtz v10, :cond_e

    move v14, v1

    move-object/from16 v10, v22

    move-object/from16 v11, v32

    goto :goto_8

    :cond_d
    move-object/from16 v22, v10

    move-object/from16 v32, v11

    :cond_e
    move/from16 v15, p3

    :goto_9
    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v1, v10, :cond_f

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lld/h;

    iget-wide v10, v10, Lld/h;->a:J

    cmp-long v10, v10, v8

    if-gtz v10, :cond_f

    move v15, v1

    goto :goto_9

    :cond_f
    invoke-static {v12, v4}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lld/d;

    if-eqz v1, :cond_13

    iget-wide v10, v1, Lld/d;->a:J

    cmp-long v27, v10, v8

    if-gtz v27, :cond_13

    sub-long v27, v8, v10

    const-wide/16 v29, 0x1b58

    cmp-long v27, v27, v29

    if-gtz v27, :cond_13

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_10

    move-object/from16 p0, v1

    goto :goto_a

    :cond_10
    move-object/from16 p0, v1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-wide/from16 v27, v10

    const/4 v10, 0x0

    :cond_11
    if-ge v10, v1, :cond_12

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v29

    cmp-long v11, v27, v29

    if-gtz v11, :cond_11

    cmp-long v11, v29, v8

    if-gtz v11, :cond_11

    goto :goto_b

    :cond_12
    :goto_a
    move-object/from16 v1, p0

    goto :goto_c

    :cond_13
    :goto_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_14

    iget-wide v10, v1, Lld/d;->c:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_d

    :cond_14
    invoke-static {v14, v2}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lld/h;

    if-eqz v10, :cond_15

    iget-wide v10, v10, Lld/h;->a:J

    cmp-long v27, v10, v8

    if-gtz v27, :cond_15

    sub-long v10, v8, v10

    const-wide/16 v27, 0x9c4

    cmp-long v10, v10, v27

    if-gtz v10, :cond_15

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lld/h;

    iget-wide v10, v10, Lld/h;->b:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_d

    :cond_15
    invoke-static {v15, v3}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lld/h;

    if-eqz v10, :cond_16

    iget-wide v10, v10, Lld/h;->a:J

    cmp-long v27, v10, v8

    if-gtz v27, :cond_16

    sub-long v10, v8, v10

    const-wide/16 v27, 0x3a98

    cmp-long v10, v10, v27

    if-gtz v10, :cond_16

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lld/h;

    iget-wide v10, v10, Lld/h;->b:D

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    goto :goto_d

    :cond_16
    const/4 v10, 0x0

    :goto_d
    if-eqz v1, :cond_17

    iget-object v11, v1, Lld/d;->d:Lua/nav/routing/Route;

    if-eqz v11, :cond_17

    if-eq v11, v13, :cond_17

    move/from16 p0, v12

    iget-wide v12, v1, Lld/d;->b:D

    invoke-static {v11, v12, v13}, Ll9/a;->j(Lua/nav/routing/Route;D)Lld/a;

    move-result-object v12

    move-object/from16 p3, v10

    move-object/from16 v27, v11

    iget-wide v10, v12, Lld/a;->a:D

    move-wide/from16 v33, v10

    iget-wide v10, v12, Lld/a;->b:D

    iget-wide v12, v12, Lld/a;->c:D

    move-wide/from16 v35, v10

    move-wide/from16 v37, v12

    invoke-virtual/range {v32 .. v38}, Lld/n;->k(DDD)V

    move-object/from16 v10, v32

    move-object/from16 v32, v27

    goto :goto_e

    :cond_17
    move-object/from16 p3, v10

    move/from16 p0, v12

    move-object/from16 v10, v32

    move-object/from16 v32, v13

    :goto_e
    if-eqz v1, :cond_19

    if-eqz p3, :cond_18

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    :goto_f
    move/from16 v27, v14

    goto :goto_10

    :cond_18
    const-wide/16 v11, 0x0

    goto :goto_f

    :goto_10
    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v10, v13, v14, v11, v12}, Lld/n;->f(DD)V

    goto :goto_11

    :cond_19
    move/from16 v27, v14

    :goto_11
    const-string v12, "get(...)"

    if-eqz v32, :cond_1d

    iget-boolean v13, v10, Lld/n;->q:Z

    if-eqz v13, :cond_1d

    :goto_12
    move/from16 v13, v18

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v13, v14, :cond_1c

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lld/f;

    move-object/from16 v29, v12

    iget-wide v11, v14, Lld/f;->a:J

    cmp-long v11, v11, v8

    if-gtz v11, :cond_1b

    invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v12, v29

    invoke-static {v11, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v11, Lld/f;

    add-int/lit8 v13, v13, 0x1

    move/from16 v18, v13

    iget-wide v13, v11, Lld/f;->a:J

    move-wide/from16 v29, v13

    move/from16 v31, v15

    const/16 v13, 0x3e8

    int-to-long v14, v13

    sub-long v13, v8, v14

    cmp-long v13, v29, v13

    if-lez v13, :cond_1a

    iget-wide v13, v11, Lld/f;->b:D

    move-wide/from16 v33, v13

    iget-wide v13, v11, Lld/f;->c:D

    move-wide/from16 v35, v13

    iget-wide v13, v11, Lld/f;->d:D

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v37

    invoke-static/range {v32 .. v37}, Ll9/a;->f(Lua/nav/routing/Route;DDLjava/lang/Double;)Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-virtual {v10, v8, v9}, Lld/n;->d(J)Ljava/util/List;

    :goto_13
    move/from16 v11, v19

    goto :goto_15

    :cond_1a
    move/from16 v15, v31

    goto :goto_12

    :cond_1b
    move-object/from16 v12, v29

    :cond_1c
    move/from16 v31, v15

    move/from16 v18, v13

    goto :goto_13

    :cond_1d
    move/from16 v31, v15

    move/from16 v11, v18

    :goto_14
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_1e

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lld/f;

    iget-wide v13, v13, Lld/f;->a:J

    cmp-long v13, v13, v8

    if-gtz v13, :cond_1e

    add-int/lit8 v11, v11, 0x1

    goto :goto_14

    :cond_1e
    move/from16 v18, v11

    goto :goto_13

    :goto_15
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v11, v13, :cond_24

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    cmp-long v13, v13, v8

    if-gtz v13, :cond_24

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v12}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->longValue()J

    move-result-wide v13

    add-int/lit8 v11, v11, 0x1

    if-eqz v32, :cond_23

    iget-boolean v15, v10, Lld/n;->q:Z

    if-eqz v15, :cond_23

    const v15, 0xea60

    move/from16 v19, v11

    move-object/from16 v29, v12

    int-to-long v11, v15

    sub-long v11, v13, v11

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_1f

    goto :goto_17

    :cond_1f
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v15

    move-wide/from16 v38, v11

    const/4 v11, 0x0

    :goto_16
    if-ge v11, v15, :cond_20

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    add-int/lit8 v11, v11, 0x1

    check-cast v12, Lld/f;

    move-wide/from16 v40, v13

    iget-wide v13, v12, Lld/f;->a:J

    cmp-long v30, v38, v13

    if-gtz v30, :cond_21

    cmp-long v13, v13, v40

    if-gtz v13, :cond_21

    iget-wide v13, v12, Lld/f;->b:D

    move-wide/from16 v33, v13

    iget-wide v13, v12, Lld/f;->c:D

    move/from16 v30, v11

    iget-wide v11, v12, Lld/f;->d:D

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v37

    move-wide/from16 v35, v13

    invoke-static/range {v32 .. v37}, Ll9/a;->f(Lua/nav/routing/Route;DDLjava/lang/Double;)Z

    move-result v11

    move-object/from16 v13, v32

    if-eqz v11, :cond_22

    invoke-virtual {v10, v8, v9}, Lld/n;->d(J)Ljava/util/List;

    :cond_20
    :goto_17
    const/4 v11, 0x0

    goto :goto_18

    :cond_21
    move/from16 v30, v11

    move-object/from16 v13, v32

    :cond_22
    move-object/from16 v32, v13

    move/from16 v11, v30

    move-wide/from16 v13, v40

    goto :goto_16

    :cond_23
    move/from16 v19, v11

    move-object/from16 v29, v12

    goto :goto_17

    :goto_18
    iput-boolean v11, v10, Lld/n;->q:Z

    move/from16 v11, v19

    move-object/from16 v12, v29

    const/16 v32, 0x0

    goto/16 :goto_15

    :cond_24
    move-object/from16 v13, v32

    if-eqz p3, :cond_2f

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v35

    move-wide/from16 v37, v8

    move-object/from16 v32, v10

    invoke-virtual/range {v32 .. v38}, Lld/n;->l(DDJ)Z

    move-wide/from16 v33, v37

    if-eqz v1, :cond_2e

    iget-wide v8, v1, Lld/d;->b:D

    iget-wide v14, v1, Lld/d;->a:J

    iget-object v10, v1, Lld/d;->d:Lua/nav/routing/Route;

    if-eqz v10, :cond_2e

    invoke-static {v0, v4}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lld/d;

    if-eqz v0, :cond_26

    iget-object v12, v0, Lld/d;->d:Lua/nav/routing/Route;

    move-wide/from16 v29, v8

    if-ne v12, v10, :cond_25

    iget-wide v8, v0, Lld/d;->a:J

    cmp-long v8, v8, v14

    if-lez v8, :cond_25

    goto :goto_1a

    :cond_25
    :goto_19
    const/4 v0, 0x0

    goto :goto_1a

    :cond_26
    move-wide/from16 v29, v8

    goto :goto_19

    :goto_1a
    if-eqz v0, :cond_27

    iget-wide v8, v0, Lld/d;->b:D

    sub-double v8, v8, v29

    move-wide/from16 v35, v8

    sub-long v8, v33, v14

    long-to-double v8, v8

    move-wide/from16 v37, v8

    iget-wide v8, v0, Lld/d;->a:J

    sub-long/2addr v8, v14

    long-to-double v8, v8

    div-double v8, v37, v8

    mul-double v8, v8, v35

    :goto_1b
    add-double v8, v8, v29

    goto :goto_1c

    :cond_27
    iget-wide v8, v1, Lld/d;->c:D

    sub-long v14, v33, v14

    long-to-double v14, v14

    mul-double/2addr v8, v14

    div-double v8, v8, v23

    goto :goto_1b

    :goto_1c
    if-eqz v20, :cond_28

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    sub-double v14, v8, v14

    invoke-static {v14, v15}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1d

    :cond_28
    const/4 v0, 0x0

    :goto_1d
    if-ne v7, v10, :cond_2d

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmpg-double v7, v14, v16

    if-ltz v7, :cond_2d

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    const-wide/high16 v29, 0x404e000000000000L    # 60.0

    add-double v19, v19, v29

    cmpl-double v7, v14, v19

    if-lez v7, :cond_29

    goto :goto_21

    :cond_29
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v37

    invoke-virtual {v10}, Lua/nav/routing/Route;->b()[D

    move-result-object v0

    array-length v7, v0

    const/4 v12, 0x2

    if-ge v7, v12, :cond_2a

    const/16 v39, 0x0

    goto :goto_20

    :cond_2a
    array-length v7, v0

    add-int/lit8 v7, v7, -0x1

    const/4 v14, 0x0

    :goto_1e
    sub-int v15, v7, v14

    move/from16 v25, v12

    move/from16 v12, v26

    if-le v15, v12, :cond_2c

    add-int v12, v14, v7

    div-int/lit8 v12, v12, 0x2

    aget-wide v19, v0, v12

    cmpg-double v15, v19, v8

    if-gtz v15, :cond_2b

    move v14, v12

    :goto_1f
    const/4 v12, 0x2

    const/16 v26, 0x1

    goto :goto_1e

    :cond_2b
    move v7, v12

    goto :goto_1f

    :cond_2c
    invoke-virtual {v10, v14}, Lua/nav/routing/Route;->d(I)Ljava/lang/Integer;

    move-result-object v0

    move-object/from16 v39, v0

    :goto_20
    iget-boolean v0, v1, Lld/d;->e:Z

    const-wide/high16 v35, 0x3ff0000000000000L    # 1.0

    move/from16 v40, v0

    invoke-virtual/range {v32 .. v40}, Lld/n;->i(JDDLjava/lang/Integer;Z)Lld/j;

    goto :goto_22

    :cond_2d
    :goto_21
    invoke-virtual/range {v32 .. v32}, Lld/n;->h()V

    :goto_22
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v20, v0

    move-object v7, v10

    const/16 v0, 0x3e8

    goto :goto_24

    :cond_2e
    :goto_23
    const/16 v0, 0x3e8

    const/4 v7, 0x0

    const/16 v20, 0x0

    goto :goto_24

    :cond_2f
    move-wide/from16 v33, v8

    move-object/from16 v32, v10

    goto :goto_23

    :goto_24
    int-to-long v0, v0

    add-long v8, v33, v0

    move/from16 v12, p0

    move-wide/from16 v0, p1

    move/from16 v19, v11

    move-object/from16 v10, v22

    move/from16 v14, v27

    move/from16 v15, v31

    move-object/from16 v11, v32

    const/16 v26, 0x1

    goto/16 :goto_6

    :cond_30
    move-object/from16 v22, v10

    move-object/from16 v32, v11

    invoke-virtual/range {v32 .. v32}, Lld/n;->j()Lua/nav/stats/TripStatsData;

    move-result-object v0

    iget-object v0, v0, Lua/nav/stats/TripStatsData;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v11, 0x0

    :goto_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/stats/DayTotals;

    iget-wide v2, v2, Lua/nav/stats/DayTotals;->b:D

    add-double/2addr v11, v2

    goto :goto_25

    :cond_31
    new-instance v1, Lld/g;

    move-object/from16 v2, v22

    invoke-direct {v1, v0, v2, v11, v12}, Lld/g;-><init>(Ljava/util/List;Ljava/util/List;D)V

    return-object v1

    :cond_32
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_33
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_34
    const/16 v21, 0x0

    :try_start_4
    const-string v7, ",SENS,"

    move-object/from16 v33, v10

    const/4 v10, 0x0

    invoke-static {v9, v7, v10}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-nez v7, :cond_51

    const-string v7, ",GNSS,"

    invoke-static {v9, v7, v10}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v7

    if-eqz v7, :cond_35

    goto/16 :goto_3a

    :cond_35
    invoke-static {v9}, Lld/i;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-static {v13, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-eqz v9, :cond_50

    invoke-static {v9}, Lr9/r;->V(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_50

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v41

    cmp-long v10, v41, p2

    if-gtz v10, :cond_50

    invoke-static {v14, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move/from16 v43, v13

    const-string v13, "FIX"

    invoke-static {v10, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move/from16 v27, v13

    const-string v13, "GPS"

    if-eqz v27, :cond_47

    :try_start_5
    invoke-static {v15, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v11, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-eqz v10, :cond_36

    invoke-static {v10}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v10

    goto :goto_27

    :catchall_1
    move-exception v0

    :goto_26
    move-object v1, v0

    goto/16 :goto_3e

    :cond_36
    move-object/from16 v10, v21

    :goto_27
    invoke-static {v12, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    if-eqz v25, :cond_37

    invoke-static/range {v25 .. v25}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v25

    goto :goto_28

    :cond_37
    move-object/from16 v25, v21

    :goto_28
    invoke-static {v0, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    if-eqz v26, :cond_38

    invoke-static/range {v26 .. v26}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_29

    :cond_38
    move-object/from16 v26, v21

    :goto_29
    const-wide v44, 0x407f400000000000L    # 500.0

    move-object/from16 v27, v10

    const-string v10, "GOOD"

    move/from16 v46, v11

    const-string v11, "NET"

    if-eqz v27, :cond_3a

    if-eqz v25, :cond_3a

    :try_start_6
    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_3b

    invoke-static {v9, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_3a

    move/from16 v47, v12

    invoke-static {v1, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_39

    goto :goto_2b

    :cond_39
    :goto_2a
    move/from16 v49, v14

    move/from16 v48, v15

    move-wide/from16 v14, v41

    goto :goto_2d

    :cond_3a
    move/from16 v47, v12

    goto :goto_2a

    :cond_3b
    move/from16 v47, v12

    :goto_2b
    new-instance v34, Lld/f;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v37

    if-eqz v26, :cond_3c

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v39

    goto :goto_2c

    :cond_3c
    move-wide/from16 v39, v44

    :goto_2c
    invoke-direct/range {v34 .. v42}, Lld/f;-><init>(DDDJ)V

    move/from16 v49, v14

    move/from16 v48, v15

    move-object/from16 v12, v34

    move-wide/from16 v14, v41

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2d
    invoke-static {v9, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3e

    invoke-static {v1, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v10}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3e

    invoke-static {v8, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3d

    invoke-static {v7}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_3d

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    new-instance v7, Lld/h;

    invoke-direct {v7, v9, v10, v14, v15}, Lld/h;-><init>(DJ)V

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3d
    move/from16 v34, v1

    move-object v12, v6

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    const/4 v10, 0x0

    move-object/from16 v6, p1

    move/from16 v20, v0

    move/from16 v0, v32

    goto/16 :goto_3c

    :cond_3e
    invoke-static {v9, v11}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    if-eqz v27, :cond_46

    if-eqz v25, :cond_46

    invoke-static {v0, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_3f

    invoke-static {v7}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v7

    if-eqz v7, :cond_3f

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v44

    :cond_3f
    move-wide/from16 v39, v44

    const-wide v9, 0x4062c00000000000L    # 150.0

    cmpg-double v7, v39, v9

    if-gtz v7, :cond_46

    new-instance v34, Lld/f;

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v35

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v37

    move-wide/from16 v41, v14

    invoke-direct/range {v34 .. v42}, Lld/f;-><init>(DDDJ)V

    move-object/from16 v7, v34

    move-wide/from16 v9, v39

    move-wide/from16 v14, v41

    move-object/from16 v11, v20

    invoke-virtual {v11, v7}, Lu8/k;->addLast(Ljava/lang/Object;)V

    :goto_2e
    invoke-virtual {v11}, Lu8/k;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_40

    invoke-virtual {v11}, Lu8/k;->first()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lld/f;

    iget-wide v12, v7, Lld/f;->a:J

    sub-long v12, v14, v12

    long-to-double v12, v12

    div-double v12, v12, v23

    const-wide v34, 0x4056800000000000L    # 90.0

    cmpl-double v7, v12, v34

    if-lez v7, :cond_40

    invoke-virtual {v11}, Lu8/k;->removeFirst()Ljava/lang/Object;

    goto :goto_2e

    :cond_40
    invoke-virtual {v11}, Ljava/util/AbstractList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_42

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object v12, v13

    check-cast v12, Lld/f;

    move/from16 v20, v0

    move/from16 v34, v1

    iget-wide v0, v12, Lld/f;->a:J

    sub-long v0, v14, v0

    long-to-double v0, v0

    div-double v0, v0, v23

    const-wide/high16 v35, 0x403e000000000000L    # 30.0

    cmpl-double v0, v0, v35

    if-ltz v0, :cond_41

    goto :goto_30

    :cond_41
    move/from16 v0, v20

    move/from16 v1, v34

    goto :goto_2f

    :cond_42
    move/from16 v20, v0

    move/from16 v34, v1

    move-object/from16 v13, v21

    :goto_30
    check-cast v13, Lld/f;

    if-eqz v13, :cond_45

    iget-wide v0, v13, Lld/f;->a:J

    sub-long v0, v14, v0

    long-to-double v0, v0

    div-double v0, v0, v23

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    move-wide/from16 v35, v0

    iget-wide v0, v13, Lld/f;->b:D

    sub-double v23, v23, v0

    const-wide v0, 0x40fafcc000000000L    # 110540.0

    mul-double v0, v0, v23

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v23

    move-object v12, v6

    iget-wide v6, v13, Lld/f;->c:D

    sub-double v23, v23, v6

    const-wide v6, 0x40fb2d8000000000L    # 111320.0

    mul-double v23, v23, v6

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double v6, v6, v23

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    new-instance v6, Lld/h;

    move-wide/from16 v23, v0

    const/4 v7, 0x3

    int-to-double v0, v7

    move-wide/from16 v25, v0

    iget-wide v0, v13, Lld/f;->d:D

    invoke-static {v9, v10, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    mul-double v0, v0, v25

    cmpl-double v0, v23, v0

    if-lez v0, :cond_43

    div-double v0, v23, v35

    goto :goto_31

    :cond_43
    const-wide/16 v0, 0x0

    :goto_31
    invoke-direct {v6, v0, v1, v14, v15}, Lld/h;-><init>(DJ)V

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    :goto_32
    move-object/from16 v6, p1

    move-object/from16 v9, v19

    move/from16 v0, v32

    :goto_33
    const/4 v10, 0x0

    goto/16 :goto_3c

    :cond_45
    move-object v12, v6

    goto :goto_32

    :cond_46
    move/from16 v34, v1

    move-object v12, v6

    move-object/from16 v11, v20

    move/from16 v20, v0

    goto :goto_32

    :cond_47
    move/from16 v34, v1

    move/from16 v46, v11

    move/from16 v47, v12

    move/from16 v49, v14

    move/from16 v48, v15

    move-object/from16 v11, v20

    move-wide/from16 v14, v41

    move/from16 v20, v0

    move-object v12, v6

    const-string v0, "NOTE"

    invoke-static {v10, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    move/from16 v0, v32

    invoke-static {v0, v7}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_48

    goto/16 :goto_34

    :cond_48
    const-string v6, "nav_start "

    const/4 v10, 0x0

    invoke-static {v1, v6, v10}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4d

    const-string v6, "rerouted "

    invoke-static {v1, v6, v10}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_49

    goto/16 :goto_36

    :cond_49
    const-string v6, "nav_stop"

    invoke-static {v1, v6, v10}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v6, p1

    move/from16 v22, v10

    goto :goto_35

    :cond_4a
    const-string v6, "guide s="

    invoke-static {v1, v6, v10}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_4c

    if-eqz v22, :cond_4c

    sget-object v6, Lld/i;->b:Lr9/i;

    invoke-virtual {v6, v1, v10}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v1

    if-eqz v1, :cond_4b

    new-instance v23, Lld/d;

    invoke-virtual {v1}, Lr9/g;->a()Ljava/util/List;

    move-result-object v6

    check-cast v6, Lr9/e;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v26

    invoke-virtual {v1}, Lr9/g;->a()Ljava/util/List;

    move-result-object v6

    check-cast v6, Lr9/e;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v9, 0x400ccccccccccccdL    # 3.6

    div-double v28, v6, v9

    invoke-virtual {v1}, Lr9/g;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lr9/e;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v13, v10}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v31

    move-wide/from16 v24, v14

    invoke-direct/range {v23 .. v31}, Lld/d;-><init>(JDDLua/nav/routing/Route;Z)V

    move-object/from16 v1, v23

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4b
    :goto_34
    move-object/from16 v6, p1

    move-object/from16 v9, v19

    goto/16 :goto_33

    :cond_4c
    move-object/from16 v6, p1

    :goto_35
    move-object/from16 v9, v19

    goto/16 :goto_3c

    :cond_4d
    :goto_36
    sget-object v6, Lld/i;->c:Lr9/i;

    const/4 v10, 0x0

    invoke-virtual {v6, v1, v10}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v1

    if-eqz v1, :cond_4f

    invoke-virtual {v1}, Lr9/g;->a()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lr9/e;

    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4e

    move-object/from16 v6, p1

    move-object/from16 v9, v19

    invoke-static {v9, v6, v1}, Lld/i;->b(Ljava/util/HashMap;Ljava/io/File;Ljava/lang/String;)Lua/nav/routing/Route;

    move-result-object v1

    move-object/from16 v30, v1

    goto :goto_39

    :cond_4e
    :goto_37
    move-object/from16 v6, p1

    move-object/from16 v9, v19

    goto :goto_38

    :cond_4f
    const/4 v7, 0x1

    goto :goto_37

    :goto_38
    move-object/from16 v30, v21

    :goto_39
    move/from16 v22, v7

    goto :goto_3c

    :cond_50
    :goto_3a
    move/from16 v34, v1

    move/from16 v46, v11

    move/from16 v47, v12

    move/from16 v43, v13

    move/from16 v49, v14

    move/from16 v48, v15

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    const/4 v10, 0x0

    :goto_3b
    move/from16 v20, v0

    move-object v12, v6

    move/from16 v0, v32

    move-object/from16 v6, p1

    goto :goto_3c

    :cond_51
    move/from16 v34, v1

    move/from16 v46, v11

    move/from16 v47, v12

    move/from16 v43, v13

    move/from16 v49, v14

    move/from16 v48, v15

    move-object/from16 v9, v19

    move-object/from16 v11, v20

    goto :goto_3b

    :goto_3c
    move v7, v0

    move-object/from16 v19, v9

    move-object v6, v12

    move/from16 v0, v20

    move-object/from16 v10, v33

    move/from16 v1, v34

    move/from16 v13, v43

    move/from16 v12, v47

    move/from16 v15, v48

    move/from16 v14, v49

    move-object/from16 v20, v11

    move/from16 v11, v46

    goto/16 :goto_0

    :goto_3d
    new-instance v0, Lld/g;

    move-object/from16 v1, v33

    const-wide/16 v2, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lld/g;-><init>(Ljava/util/List;Ljava/util/List;D)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface/range {v18 .. v18}, Ljava/io/Closeable;->close()V

    return-object v0

    :catchall_2
    move-exception v0

    move-object/from16 v18, v8

    goto/16 :goto_26

    :goto_3e
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object/from16 v2, v18

    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
