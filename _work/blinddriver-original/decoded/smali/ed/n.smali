.class public abstract Led/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr9/i;

.field public static final b:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr9/i;

    const-string v1, "\\b\\d{2}\\.\\d{4,}\\b"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/n;->a:Lr9/i;

    new-instance v0, Lr9/i;

    const-string v1, "route=(route_\\d{8}_\\d{6}\\.json)"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Led/n;->b:Lr9/i;

    return-void
.end method

.method public static a(Ljava/lang/String;)Led/m;
    .locals 9

    const/16 v0, 0xa

    invoke-static {v0, p0}, Led/n;->d(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FIX"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    new-instance v3, Led/m;

    const/16 v0, 0x9

    invoke-static {v0, p0}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    :cond_1
    move-object v8, v2

    invoke-direct/range {v3 .. v8}, Led/m;-><init>(DDLjava/lang/Double;)V

    return-object v3

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static b(Ljava/lang/String;Lg5/m;D)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "line"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    cmpg-double v2, p2, v2

    const/4 v3, 0x1

    if-gtz v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-static {v0}, Led/n;->a(Ljava/lang/String;)Led/m;

    move-result-object v2

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    iget-object v0, v1, Lg5/m;->m:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    iget-object v1, v1, Lg5/m;->n:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    filled-new-array {v0, v1}, [Lua/nav/routing/GeoPoint;

    move-result-object v0

    move v1, v5

    :goto_0
    if-ge v1, v4, :cond_8

    aget-object v6, v0, v1

    if-eqz v6, :cond_1

    sget-object v7, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v8, v2, Led/m;->a:D

    iget-wide v10, v2, Led/m;->b:D

    iget-wide v12, v6, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v14, v6, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v8 .. v15}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    cmpg-double v6, v6, p2

    if-gtz v6, :cond_1

    goto/16 :goto_3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    invoke-static {v1, v0}, Led/n;->d(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x3

    if-lt v2, v6, :cond_8

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "NOTE"

    invoke-static {v1, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move v6, v5

    move v7, v6

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v6, v8, :cond_6

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eqz v7, :cond_3

    if-ne v8, v2, :cond_3

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_3

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v2, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v6, v9

    goto :goto_2

    :cond_3
    if-ne v8, v2, :cond_4

    xor-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/16 v9, 0x2c

    if-ne v8, v9, :cond_5

    if-nez v7, :cond_5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/2addr v6, v3

    goto :goto_1

    :cond_6
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x1c

    invoke-static {v0, v1}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    sget-object v1, Led/n;->a:Lr9/i;

    invoke-virtual {v1, v0}, Lr9/i;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_3
    return v5

    :cond_8
    :goto_4
    return v3
.end method

.method public static c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D
    .locals 9

    sget-object v0, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v1, p0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v3, p0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v5, p1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v7, p1, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v1 .. v8}, Ldd/s0;->a(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static d(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p0, :cond_1

    const/16 v2, 0x2c

    const/4 v3, 0x4

    invoke-static {p1, v2, v1, v3}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v2

    const-string v3, "substring(...)"

    if-gez v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static e(Lq9/h;)Lg5/m;
    .locals 10

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p0}, Lq9/h;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Led/n;->a(Ljava/lang/String;)Led/m;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v4, v5, Led/m;->c:Ljava/lang/Double;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    const-wide v8, 0x407f400000000000L    # 500.0

    cmpg-double v4, v6, v8

    if-gtz v4, :cond_0

    :cond_1
    if-nez v2, :cond_2

    move-object v2, v5

    :cond_2
    move-object v3, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x28

    if-le v5, v6, :cond_0

    const-string v5, "nav_start "

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "rerouted "

    invoke-static {v4, v5, v6}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_4
    const-string v5, "route="

    invoke-static {v4, v5, v6}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Led/n;->b:Lr9/i;

    invoke-virtual {v5, v4, v6}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lr9/g;->a()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    check-cast v4, Lr9/e;

    invoke-virtual {v4, v5}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    if-eqz v2, :cond_6

    new-instance p0, Lua/nav/routing/GeoPoint;

    iget-wide v4, v2, Led/m;->a:D

    iget-wide v6, v2, Led/m;->b:D

    invoke-direct {p0, v4, v5, v6, v7}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_1

    :cond_6
    move-object p0, v1

    :goto_1
    if-eqz v3, :cond_7

    new-instance v1, Lua/nav/routing/GeoPoint;

    iget-wide v4, v3, Led/m;->a:D

    iget-wide v2, v3, Led/m;->b:D

    invoke-direct {v1, v4, v5, v2, v3}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_7
    invoke-static {v0}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Lg5/m;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v1, v0, v3}, Lg5/m;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    return-object v2
.end method

.method public static f(Ljava/lang/String;D)Ljava/lang/String;
    .locals 21

    move-object/from16 v1, p0

    :try_start_0
    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v2, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    invoke-virtual {v2}, Lua/nav/routing/Route$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0, v1, v2}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_0
    instance-of v2, v0, Lt8/l;

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :cond_0
    move-object v4, v0

    check-cast v4, Lua/nav/routing/Route;

    if-nez v4, :cond_1

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_1
    iget-wide v5, v4, Lua/nav/routing/Route;->c:D

    const-wide/16 v7, 0x0

    cmpg-double v0, p1, v7

    if-gtz v0, :cond_2

    return-object v1

    :cond_2
    iget-object v0, v4, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lua/nav/routing/Route;->b()[D

    move-result-object v1

    invoke-static {v1}, Lu8/l;->z0([D)D

    move-result-wide v9

    invoke-static {v0}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/GeoPoint;

    invoke-static {v0}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    const/4 v12, 0x0

    move v13, v12

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_5

    aget-wide v14, v1, v13

    cmpg-double v14, v14, p1

    if-ltz v14, :cond_4

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lua/nav/routing/GeoPoint;

    invoke-static {v14, v2}, Led/n;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v14

    cmpg-double v14, v14, p1

    if-gez v14, :cond_5

    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    :goto_3
    if-ltz v14, :cond_7

    aget-wide v15, v1, v14

    sub-double v15, v9, v15

    cmpg-double v15, v15, p1

    if-ltz v15, :cond_6

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lua/nav/routing/GeoPoint;

    invoke-static {v15, v11}, Led/n;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v15

    cmpg-double v15, v15, p1

    if-gez v15, :cond_7

    :cond_6
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    :cond_7
    sub-int v15, v14, v13

    const/16 v16, 0x0

    const/4 v3, 0x2

    if-ge v15, v3, :cond_8

    :goto_4
    return-object v16

    :cond_8
    add-int/lit8 v3, v14, 0x1

    invoke-interface {v0, v13, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    aget-wide v17, v1, v14

    aget-wide v19, v1, v13

    sub-double v17, v17, v19

    cmpl-double v1, v9, v7

    if-lez v1, :cond_9

    mul-double v5, v5, v17

    div-double/2addr v5, v9

    :cond_9
    move-wide v8, v5

    iget-object v1, v4, Lua/nav/routing/Route;->f:Ljava/util/List;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_a
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lua/nav/routing/Step;

    iget v10, v7, Lua/nav/routing/Step;->h:I

    iget-object v7, v7, Lua/nav/routing/Step;->d:Lua/nav/routing/GeoPoint;

    if-gt v13, v10, :cond_a

    if-gt v10, v14, :cond_a

    invoke-static {v7, v2}, Led/n;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v19

    cmpl-double v10, v19, p1

    if-lez v10, :cond_a

    invoke-static {v7, v11}, Led/n;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v19

    cmpl-double v7, v19, p1

    if-lez v7, :cond_a

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v5, v6}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v1, v6}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_6
    if-ge v12, v6, :cond_c

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v12, v12, 0x1

    check-cast v7, Lua/nav/routing/Step;

    iget v10, v7, Lua/nav/routing/Step;->h:I

    sub-int/2addr v10, v13

    invoke-static {v7, v10}, Lua/nav/routing/Step;->a(Lua/nav/routing/Step;I)Lua/nav/routing/Step;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    iget-object v5, v4, Lua/nav/routing/Route;->h:Ljava/util/List;

    if-eqz v5, :cond_e

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v6, v7, :cond_d

    goto :goto_7

    :cond_d
    move-object/from16 v5, v16

    :goto_7
    if-eqz v5, :cond_e

    invoke-interface {v5, v13, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    move-object v12, v5

    goto :goto_8

    :cond_e
    move-object/from16 v12, v16

    :goto_8
    iget-object v5, v4, Lua/nav/routing/Route;->i:Ljava/util/List;

    if-eqz v5, :cond_10

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v6, v0, :cond_f

    goto :goto_9

    :cond_f
    move-object/from16 v5, v16

    :goto_9
    if-eqz v5, :cond_10

    invoke-interface {v5, v13, v14}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    move-object v13, v0

    goto :goto_a

    :cond_10
    move-object/from16 v13, v16

    :goto_a
    iget-object v0, v4, Lua/nav/routing/Route;->j:Ljava/util/List;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lua/nav/routing/GeoPoint;

    invoke-static {v6, v2}, Led/n;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v15

    cmpl-double v7, v15, p1

    if-lez v7, :cond_11

    invoke-static {v6, v11}, Led/n;->c(Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)D

    move-result-wide v6

    cmpl-double v6, v6, p1

    if-lez v6, :cond_11

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_12
    const/16 v15, 0x9

    const/4 v5, 0x0

    move-object v11, v1

    move-object v10, v3

    move-wide/from16 v6, v17

    invoke-static/range {v4 .. v15}, Lua/nav/routing/Route;->a(Lua/nav/routing/Route;Ljava/lang/String;DDLjava/util/List;Ljava/util/ArrayList;Ljava/util/List;Ljava/util/List;Ljava/util/ArrayList;I)Lua/nav/routing/Route;

    move-result-object v0

    sget-object v1, Lgd/h;->c:Lia/r;

    sget-object v2, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    invoke-virtual {v2}, Lua/nav/routing/Route$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v1, v2, v0}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
