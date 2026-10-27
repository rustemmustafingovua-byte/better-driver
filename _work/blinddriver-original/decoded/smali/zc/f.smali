.class public final Lzc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lzc/f;

.field public static b:J

.field public static final c:Lr9/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lzc/f;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lzc/f;->a:Lzc/f;

    new-instance v0, Lr9/i;

    const-string v1, "[\\s,]+(\\d+(?:[-/]?[\u0410-\u042f\u0490\u0404\u0406\u0407\u0430-\u044f\u0491\u0454\u0456\u0457A-Za-z])?(?:/\\d+)?)$"

    invoke-direct {v0, v1}, Lr9/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lzc/f;->c:Lr9/i;

    return-void
.end method

.method public static f(Lia/y;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lia/l;

    goto :goto_0

    :cond_0
    move-object p0, p1

    :goto_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object p0

    instance-of v0, p0, Lia/v;

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lia/d0;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    instance-of v3, v2, Lzc/a;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lzc/a;

    iget v4, v3, Lzc/a;->p:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lzc/a;->p:I

    goto :goto_0

    :cond_0
    new-instance v3, Lzc/a;

    invoke-direct {v3, v0, v2}, Lzc/a;-><init>(Lzc/f;La9/c;)V

    :goto_0
    iget-object v2, v3, Lzc/a;->n:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lzc/a;->p:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lzc/a;->m:Lua/nav/geocoding/Place;

    iget-object v3, v3, Lzc/a;->l:Ljava/util/ArrayList;

    :try_start_0
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v3

    goto :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {v1}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/geocoding/Place;

    if-eqz v2, :cond_13

    iget-boolean v5, v2, Lua/nav/geocoding/Place;->g:Z

    if-eqz v5, :cond_3

    iget-boolean v5, v2, Lua/nav/geocoding/Place;->d:Z

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    if-nez v2, :cond_4

    goto/16 :goto_e

    :cond_4
    :try_start_1
    iget-object v5, v2, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iget-object v8, v2, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    if-nez v8, :cond_5

    const-string v8, ""

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v1, v3, Lzc/a;->l:Ljava/util/ArrayList;

    iput-object v2, v3, Lzc/a;->m:Lua/nav/geocoding/Place;

    iput v7, v3, Lzc/a;->p:I

    const/16 v8, 0x32

    move-object/from16 v9, p2

    invoke-virtual {v0, v8, v3, v5, v9}, Lzc/f;->b(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/io/Serializable;

    move-result-object v0

    if-ne v0, v4, :cond_6

    return-object v4

    :cond_6
    :goto_3
    check-cast v0, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_4
    move-object v8, v2

    goto :goto_6

    :goto_5
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    goto :goto_4

    :goto_6
    instance-of v2, v0, Lt8/l;

    if-eqz v2, :cond_7

    goto :goto_7

    :cond_7
    move-object v6, v0

    :goto_7
    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_8

    return-object v1

    :cond_8
    const-string v0, "first"

    invoke-static {v8, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lua/nav/geocoding/Place;

    iget-boolean v5, v4, Lua/nav/geocoding/Place;->g:Z

    if-eqz v5, :cond_a

    iget-object v5, v4, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    iget-object v6, v8, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v4, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    iget-object v6, v8, Lua/nav/geocoding/Place;->e:Ljava/lang/String;

    invoke-static {v5, v6}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    sget-object v5, Ldd/t0;->Companion:Ldd/s0;

    iget-object v4, v4, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v9, v4, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v4, Lua/nav/routing/GeoPoint;->b:D

    iget-object v4, v8, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v13, v4, Lua/nav/routing/GeoPoint;->a:D

    move-object v6, v8

    iget-wide v7, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v7

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v4

    const-wide v7, 0x40cd4c0000000000L    # 15000.0

    cmpg-double v4, v4, v7

    if-gez v4, :cond_9

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_9
    move-object v8, v6

    const/4 v7, 0x1

    goto :goto_8

    :cond_a
    move-object v6, v8

    goto :goto_9

    :cond_b
    move-object v6, v8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_c

    move-object v8, v6

    goto/16 :goto_d

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    move v7, v5

    :goto_a
    if-ge v7, v4, :cond_d

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lua/nav/geocoding/Place;

    iget-object v8, v8, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v8, v8, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_d
    invoke-static {v2}, Lu8/m;->X(Ljava/lang/Iterable;)D

    move-result-wide v13

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v3}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_b
    if-ge v5, v3, :cond_e

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v5, 0x1

    check-cast v4, Lua/nav/geocoding/Place;

    iget-object v4, v4, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v7, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_e
    invoke-static {v2}, Lu8/m;->X(Ljava/lang/Iterable;)D

    move-result-wide v15

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    goto :goto_c

    :cond_f
    move-object v3, v2

    check-cast v3, Lua/nav/geocoding/Place;

    sget-object v4, Ldd/t0;->Companion:Ldd/s0;

    iget-object v3, v3, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v9, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v3, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v3

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lua/nav/geocoding/Place;

    sget-object v8, Ldd/t0;->Companion:Ldd/s0;

    iget-object v7, v7, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v9, v7, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v7, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v7

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-lez v9, :cond_11

    move-object v2, v5

    move-wide v3, v7

    :cond_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_10

    :goto_c
    check-cast v2, Lua/nav/geocoding/Place;

    iget-object v11, v2, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    const/4 v12, 0x0

    const/16 v13, 0x7b

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v8, v6

    invoke-static/range {v8 .. v13}, Lua/nav/geocoding/Place;->a(Lua/nav/geocoding/Place;Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;I)Lua/nav/geocoding/Place;

    move-result-object v8

    :goto_d
    invoke-static {v8}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x1

    invoke-static {v1, v5}, Lu8/m;->c0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_13
    :goto_e
    return-object v1
.end method

.method public final b(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/io/Serializable;
    .locals 23

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    instance-of v3, v0, Lzc/b;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lzc/b;

    iget v4, v3, Lzc/b;->n:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lzc/b;->n:I

    goto :goto_0

    :cond_0
    new-instance v3, Lzc/b;

    move-object/from16 v4, p0

    invoke-direct {v3, v4, v0}, Lzc/b;-><init>(Lzc/f;La9/c;)V

    :goto_0
    iget-object v0, v3, Lzc/b;->l:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lzc/b;->n:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "https://photon.komoot.io/api/?q="

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "s"

    invoke-static {v1, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const-string v8, "getBytes(...)"

    invoke-static {v1, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v8, v1

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_8

    aget-byte v10, v1, v9

    and-int/lit16 v11, v10, 0xff

    int-to-char v12, v11

    const/16 v13, 0x41

    if-gt v13, v12, :cond_3

    const/16 v13, 0x5b

    if-ge v12, v13, :cond_3

    goto :goto_2

    :cond_3
    const/16 v13, 0x61

    if-gt v13, v12, :cond_4

    const/16 v13, 0x7b

    if-ge v12, v13, :cond_4

    goto :goto_2

    :cond_4
    const/16 v13, 0x30

    if-gt v13, v12, :cond_5

    const/16 v13, 0x3a

    if-ge v12, v13, :cond_5

    goto :goto_2

    :cond_5
    const/16 v13, 0x2d

    if-eq v12, v13, :cond_7

    const/16 v13, 0x5f

    if-eq v12, v13, :cond_7

    const/16 v13, 0x2e

    if-eq v12, v13, :cond_7

    const/16 v13, 0x7e

    if-ne v12, v13, :cond_6

    goto :goto_2

    :cond_6
    const/16 v12, 0x25

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v11, v11, 0x4

    const-string v12, "0123456789ABCDEF"

    invoke-virtual {v12, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v10, v10, 0xf

    invoke-virtual {v12, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "toString(...)"

    invoke-static {v1, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&bbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide v8, 0x403619999999999aL    # 22.1

    invoke-static {v8, v9, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    const-wide v8, 0x4046266666666666L    # 44.3

    invoke-static {v8, v9, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v8

    const-wide v9, 0x4044266666666666L    # 40.3

    invoke-static {v9, v10, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v9

    const-wide v10, 0x404a333333333333L    # 52.4

    invoke-static {v10, v11, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_9

    iget-wide v8, v2, Lua/nav/routing/GeoPoint;->a:D

    const/4 v1, 0x5

    invoke-static {v8, v9, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v8

    iget-wide v9, v2, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v9, v10, v1}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "&lat="

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "&lon="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    sget-object v1, Lsc/r0;->a:Lsc/f;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput v7, v3, Lzc/b;->n:I

    sget-object v1, Lsc/r0;->a:Lsc/f;

    invoke-interface {v1, v0, v3}, Lsc/f;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_a

    return-object v4

    :cond_a
    :goto_4
    check-cast v0, Ljava/lang/String;

    const-string v1, "body"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lsc/r0;->b:Lia/r;

    invoke-virtual {v1, v0}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object v0

    invoke-static {v0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v0

    const-string v1, "features"

    invoke-virtual {v0, v1}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lia/l;

    if-eqz v0, :cond_19

    invoke-static {v0}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lia/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lia/l;

    invoke-static {v2}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v2

    const-string v3, "geometry"

    invoke-virtual {v2, v3}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lia/l;

    if-eqz v3, :cond_14

    invoke-static {v3}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v3

    const-string v5, "coordinates"

    invoke-virtual {v3, v5}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lia/l;

    if-eqz v3, :cond_14

    invoke-static {v3}, Lia/m;->d(Lia/l;)Lia/e;

    move-result-object v3

    invoke-virtual {v3, v6}, Lia/e;->a(I)Lia/l;

    move-result-object v5

    invoke-static {v5}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v5

    invoke-virtual {v5}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v3, v7}, Lia/e;->a(I)Lia/l;

    move-result-object v3

    invoke-static {v3}, Lia/m;->f(Lia/l;)Lia/d0;

    move-result-object v3

    invoke-virtual {v3}, Lia/d0;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr9/q;->I(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    const-string v3, "properties"

    invoke-virtual {v2, v3}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lia/l;

    if-eqz v2, :cond_c

    invoke-static {v2}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v2

    goto :goto_6

    :cond_c
    new-instance v2, Lia/y;

    sget-object v3, Lu8/s;->l:Lu8/s;

    invoke-direct {v2, v3}, Lia/y;-><init>(Ljava/util/Map;)V

    :goto_6
    const-string v3, "name"

    invoke-static {v2, v3}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "street"

    invoke-static {v2, v5}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "housenumber"

    invoke-static {v2, v13}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "city"

    invoke-static {v2, v14}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    const-string v14, "town"

    invoke-static {v2, v14}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    const-string v14, "village"

    invoke-static {v2, v14}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_d

    const-string v14, "county"

    invoke-static {v2, v14}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_d
    const-string v15, "state"

    invoke-static {v2, v15}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    const-string v4, " "

    if-eqz v3, :cond_10

    if-eqz v12, :cond_10

    if-eqz v13, :cond_e

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_f

    :cond_e
    move-object/from16 v4, v16

    :cond_f
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_10
    if-nez v3, :cond_16

    if-eqz v12, :cond_13

    if-eqz v13, :cond_11

    invoke-virtual {v4, v13}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_12

    :cond_11
    move-object/from16 v3, v16

    :cond_12
    invoke-virtual {v12, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_13
    if-nez v14, :cond_15

    :cond_14
    const/4 v4, 0x0

    goto :goto_9

    :cond_15
    move-object v3, v14

    :cond_16
    :goto_7
    invoke-static {v14, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    move-object v4, v14

    goto :goto_8

    :cond_17
    const/4 v4, 0x0

    :goto_8
    filled-new-array {v4, v15}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v15

    const/16 v19, 0x0

    const/16 v20, 0x3e

    const-string v16, ", "

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v20}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v17

    const-string v4, "type"

    invoke-static {v2, v4}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "house"

    invoke-static {v12, v13}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v19

    new-instance v15, Lua/nav/geocoding/Place;

    new-instance v12, Lua/nav/routing/GeoPoint;

    invoke-direct {v12, v10, v11, v8, v9}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v2, v4}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v21

    const/16 v22, 0x20

    move-object/from16 v16, v3

    move-object/from16 v18, v12

    move-object/from16 v20, v14

    invoke-direct/range {v15 .. v22}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;ZI)V

    move-object v4, v15

    :goto_9
    if-eqz v4, :cond_b

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_18
    return-object v1

    :cond_19
    sget-object v0, Lu8/r;->l:Lu8/r;

    return-object v0
.end method

.method public final c(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;
    .locals 14

    move-object/from16 v0, p2

    const-string v1, ", "

    instance-of v2, v0, Lzc/c;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lzc/c;

    iget v3, v2, Lzc/c;->s:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lzc/c;->s:I

    goto :goto_0

    :cond_0
    new-instance v2, Lzc/c;

    invoke-direct {v2, p0, v0}, Lzc/c;-><init>(Lzc/f;La9/c;)V

    :goto_0
    iget-object v0, v2, Lzc/c;->q:Ljava/lang/Object;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, v2, Lzc/c;->s:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v4, :cond_3

    if-eq v4, v6, :cond_2

    if-ne v4, v5, :cond_1

    iget-object p0, v2, Lzc/c;->n:Lia/r;

    iget-object v2, v2, Lzc/c;->m:Lzc/f;

    :try_start_0
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_a

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide v8, v2, Lzc/c;->p:J

    iget-wide v10, v2, Lzc/c;->o:J

    iget-object v4, v2, Lzc/c;->l:Lua/nav/routing/GeoPoint;

    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    move-object v0, v4

    goto :goto_1

    :cond_3
    invoke-static {v0}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const/16 v0, 0x44c

    int-to-long v8, v0

    sget-wide v12, Lzc/f;->b:J

    sub-long v12, v10, v12

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_4

    iput-object p1, v2, Lzc/c;->l:Lua/nav/routing/GeoPoint;

    iput-wide v10, v2, Lzc/c;->o:J

    iput-wide v8, v2, Lzc/c;->p:J

    iput v6, v2, Lzc/c;->s:I

    invoke-static {v8, v9, v2}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v3, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, p1

    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sput-wide v12, Lzc/f;->b:J

    iget-wide v12, v0, Lua/nav/routing/GeoPoint;->a:D

    const/4 v4, 0x6

    invoke-static {v12, v13, v4}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    iget-wide v12, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v12, v13, v4}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v0

    const-string v4, "&lon="

    const-string v12, "&zoom=18&accept-language=uk"

    const-string v13, "https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat="

    invoke-static {v13, v6, v4, v0, v12}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_1
    sget-object v4, Lsc/r0;->b:Lia/r;

    iput-object v7, v2, Lzc/c;->l:Lua/nav/routing/GeoPoint;

    iput-object p0, v2, Lzc/c;->m:Lzc/f;

    iput-object v4, v2, Lzc/c;->n:Lia/r;

    iput-wide v10, v2, Lzc/c;->o:J

    iput-wide v8, v2, Lzc/c;->p:J

    iput v5, v2, Lzc/c;->s:I

    sget-object v5, Lsc/r0;->a:Lsc/f;

    invoke-interface {v5, v0, v2}, Lsc/f;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_5

    :goto_2
    return-object v3

    :cond_5
    move-object v2, p0

    move-object p0, v4

    :goto_3
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object p0

    invoke-static {p0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object p0

    const-string v0, "address"

    invoke-virtual {p0, v0}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lia/l;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object v0

    goto :goto_4

    :cond_6
    move-object v0, v7

    :goto_4
    if-eqz v0, :cond_7

    const-string v3, "road"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    :cond_7
    if-eqz v0, :cond_8

    const-string v3, "pedestrian"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_8
    move-object v3, v7

    :goto_5
    if-nez v3, :cond_a

    if-eqz v0, :cond_9

    const-string v3, "footway"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v3}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_9
    move-object v3, v7

    :cond_a
    :goto_6
    if-eqz v0, :cond_b

    const-string v4, "house_number"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v4}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object v4, v7

    :goto_7
    if-eqz v0, :cond_c

    const-string v5, "city"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_f

    :cond_c
    if-eqz v0, :cond_d

    const-string v5, "town"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_d
    move-object v5, v7

    :goto_8
    if-nez v5, :cond_f

    if-eqz v0, :cond_e

    const-string v5, "village"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_e
    move-object v5, v7

    :cond_f
    :goto_9
    if-eqz v3, :cond_12

    if-eqz v4, :cond_10

    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_11

    :cond_10
    const-string p0, ""

    :cond_11
    invoke-virtual {v3, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0, v5}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const-string v1, ", "

    const/4 v4, 0x0

    const/16 v5, 0x3e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    goto :goto_b

    :cond_12
    const-string v0, "display_name"

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v0}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lr9/k;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-static {p0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_b

    :cond_13
    move-object p0, v7

    goto :goto_b

    :goto_a
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p0

    :goto_b
    instance-of v0, p0, Lt8/l;

    if-eqz v0, :cond_14

    goto :goto_c

    :cond_14
    move-object v7, p0

    :goto_c
    return-object v7
.end method

.method public final d(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;
    .locals 13

    instance-of v0, p2, Lzc/d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lzc/d;

    iget v1, v0, Lzc/d;->s:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lzc/d;->s:I

    goto :goto_0

    :cond_0
    new-instance v0, Lzc/d;

    invoke-direct {v0, p0, p2}, Lzc/d;-><init>(Lzc/f;La9/c;)V

    :goto_0
    iget-object p2, v0, Lzc/d;->q:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lzc/d;->s:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lzc/d;->n:Lia/r;

    iget-object p1, v0, Lzc/d;->m:Lzc/f;

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-wide v6, v0, Lzc/d;->p:J

    iget-wide v8, v0, Lzc/d;->o:J

    iget-object p1, v0, Lzc/d;->l:Lua/nav/routing/GeoPoint;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/16 p2, 0x44c

    int-to-long v6, p2

    sget-wide v10, Lzc/f;->b:J

    sub-long v10, v8, v10

    sub-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long p2, v6, v10

    if-lez p2, :cond_4

    iput-object p1, v0, Lzc/d;->l:Lua/nav/routing/GeoPoint;

    iput-wide v8, v0, Lzc/d;->o:J

    iput-wide v6, v0, Lzc/d;->p:J

    iput v4, v0, Lzc/d;->s:I

    invoke-static {v6, v7, v0}, Lu9/v;->h(JLy8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sput-wide v10, Lzc/f;->b:J

    iget-wide v10, p1, Lua/nav/routing/GeoPoint;->a:D

    const/4 p2, 0x6

    invoke-static {v10, v11, p2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v2

    iget-wide v10, p1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v10, v11, p2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object p1

    const-string p2, "&lon="

    const-string v4, "&zoom=12&accept-language=uk"

    const-string v10, "https://nominatim.openstreetmap.org/reverse?format=jsonv2&lat="

    invoke-static {v10, v2, p2, p1, v4}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_1
    sget-object p2, Lsc/r0;->b:Lia/r;

    iput-object v5, v0, Lzc/d;->l:Lua/nav/routing/GeoPoint;

    iput-object p0, v0, Lzc/d;->m:Lzc/f;

    iput-object p2, v0, Lzc/d;->n:Lia/r;

    iput-wide v8, v0, Lzc/d;->o:J

    iput-wide v6, v0, Lzc/d;->p:J

    iput v3, v0, Lzc/d;->s:I

    sget-object v2, Lsc/r0;->a:Lsc/f;

    invoke-interface {v2, p1, v0}, Lsc/f;->a(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v12, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, v12

    :goto_3
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lia/c;->c(Ljava/lang/String;)Lia/l;

    move-result-object p0

    invoke-static {p0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object p0

    const-string p2, "address"

    invoke-virtual {p0, p2}, Lia/y;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lia/l;

    if-eqz p0, :cond_6

    invoke-static {p0}, Lia/m;->e(Lia/l;)Lia/y;

    move-result-object p0

    goto :goto_4

    :cond_6
    move-object p0, v5

    :goto_4
    if-eqz p0, :cond_7

    const-string p2, "city"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_a

    :cond_7
    if-eqz p0, :cond_8

    const-string p2, "town"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_5

    :cond_8
    move-object p2, v5

    :goto_5
    if-nez p2, :cond_a

    if-eqz p0, :cond_9

    const-string p2, "village"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2}, Lzc/f;->f(Lia/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_9
    move-object p2, v5

    goto :goto_7

    :goto_6
    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p2

    :cond_a
    :goto_7
    instance-of p0, p2, Lt8/l;

    if-eqz p0, :cond_b

    goto :goto_8

    :cond_b
    move-object v5, p2

    :goto_8
    return-object v5
.end method

.method public final e(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    instance-of v5, v2, Lzc/e;

    if-eqz v5, :cond_0

    move-object v5, v2

    check-cast v5, Lzc/e;

    iget v6, v5, Lzc/e;->t:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_0

    sub-int/2addr v6, v7

    iput v6, v5, Lzc/e;->t:I

    goto :goto_0

    :cond_0
    new-instance v5, Lzc/e;

    invoke-direct {v5, v0, v2}, Lzc/e;-><init>(Lzc/f;La9/c;)V

    :goto_0
    iget-object v2, v5, Lzc/e;->r:Ljava/lang/Object;

    sget-object v6, Lz8/a;->l:Lz8/a;

    iget v7, v5, Lzc/e;->t:I

    const-string v8, ","

    const-string v9, "query"

    sget-object v10, Lu8/r;->l:Lu8/r;

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v15, 0x1

    if-eqz v7, :cond_4

    if-eq v7, v15, :cond_3

    if-eq v7, v13, :cond_2

    if-ne v7, v12, :cond_1

    iget v1, v5, Lzc/e;->q:I

    iget-object v3, v5, Lzc/e;->p:Ljava/lang/String;

    iget-object v4, v5, Lzc/e;->o:Ljava/util/List;

    :try_start_0
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v11, 0x0

    goto/16 :goto_b

    :catchall_0
    move-exception v0

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v1, v5, Lzc/e;->q:I

    iget-object v3, v5, Lzc/e;->n:Ljava/util/List;

    iget-object v4, v5, Lzc/e;->m:Lua/nav/routing/GeoPoint;

    iget-object v7, v5, Lzc/e;->l:Ljava/lang/String;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_3
    iget v1, v5, Lzc/e;->q:I

    iget-object v3, v5, Lzc/e;->m:Lua/nav/routing/GeoPoint;

    iget-object v4, v5, Lzc/e;->l:Ljava/lang/String;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_1

    :cond_4
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {v3}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-object v10

    :cond_5
    iput-object v3, v5, Lzc/e;->l:Ljava/lang/String;

    iput-object v4, v5, Lzc/e;->m:Lua/nav/routing/GeoPoint;

    iput v1, v5, Lzc/e;->q:I

    iput v15, v5, Lzc/e;->t:I

    invoke-virtual {v0, v1, v5, v3, v4}, Lzc/f;->b(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/io/Serializable;

    move-result-object v2

    if-ne v2, v6, :cond_6

    goto/16 :goto_a

    :cond_6
    :goto_1
    check-cast v2, Ljava/util/List;

    sget-object v7, Lzc/g;->a:Ljava/util/List;

    invoke-static {v3, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lzc/g;->c:Lr9/i;

    invoke-virtual {v7, v3}, Lr9/i;->a(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_7

    new-instance v11, Lsc/t0;

    const/16 v12, 0x18

    invoke-direct {v11, v12}, Lsc/t0;-><init>(I)V

    invoke-virtual {v7, v3, v11}, Lr9/i;->h(Ljava/lang/String;Li9/c;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_7
    sget-object v7, Lzc/g;->b:Lr9/i;

    invoke-virtual {v7, v3}, Lr9/i;->a(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v11, Lsc/t0;

    const/16 v12, 0x19

    invoke-direct {v11, v12}, Lsc/t0;-><init>(I)V

    invoke-virtual {v7, v3, v11}, Lr9/i;->h(Ljava/lang/String;Li9/c;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_8
    const/4 v7, 0x0

    :goto_2
    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    goto :goto_3

    :cond_9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lua/nav/geocoding/Place;

    iget-boolean v12, v12, Lua/nav/geocoding/Place;->d:Z

    if-eqz v12, :cond_a

    return-object v2

    :cond_b
    :goto_3
    if-nez v7, :cond_c

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    goto/16 :goto_7

    :cond_c
    iput-object v3, v5, Lzc/e;->l:Ljava/lang/String;

    iput-object v4, v5, Lzc/e;->m:Lua/nav/routing/GeoPoint;

    iput-object v2, v5, Lzc/e;->n:Ljava/util/List;

    iput v1, v5, Lzc/e;->q:I

    iput v13, v5, Lzc/e;->t:I

    invoke-virtual {v0, v1, v5, v7, v4}, Lzc/f;->b(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/io/Serializable;

    move-result-object v7

    if-ne v7, v6, :cond_d

    goto/16 :goto_a

    :cond_d
    move-object/from16 v18, v3

    move-object v3, v2

    move-object v2, v7

    move-object/from16 v7, v18

    :goto_4
    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_e

    move-object v2, v4

    move-object v4, v3

    :goto_5
    move-object v3, v7

    goto :goto_7

    :cond_e
    invoke-static {v3, v2}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v12, :cond_10

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    add-int/lit8 v13, v13, 0x1

    move-object v14, v15

    check-cast v14, Lua/nav/geocoding/Place;

    move-object/from16 p1, v2

    iget-object v2, v14, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    move/from16 p3, v12

    move/from16 p4, v13

    iget-wide v12, v2, Lua/nav/routing/GeoPoint;->a:D

    const/4 v2, 0x5

    invoke-static {v12, v13, v2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v14, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v13, v13, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v13, v14, v2}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v2, p1

    move/from16 v12, p3

    move/from16 v13, p4

    const/4 v15, 0x1

    goto :goto_6

    :cond_10
    invoke-static {v11, v1}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    move-object v3, v4

    move-object v4, v2

    move-object v2, v3

    goto :goto_5

    :goto_7
    if-eqz v4, :cond_11

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_11

    goto :goto_8

    :cond_11
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/geocoding/Place;

    iget-boolean v11, v11, Lua/nav/geocoding/Place;->d:Z

    if-eqz v11, :cond_12

    return-object v4

    :cond_13
    :goto_8
    invoke-static {v3, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lzc/f;->c:Lr9/i;

    const/4 v11, 0x0

    invoke-virtual {v9, v7, v11}, Lr9/i;->b(Ljava/lang/CharSequence;I)Lr9/g;

    move-result-object v7

    if-nez v7, :cond_15

    :cond_14
    const/4 v9, 0x0

    goto :goto_9

    :cond_15
    invoke-static {v3}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lr9/g;->b()Lo9/d;

    move-result-object v9

    iget v9, v9, Lo9/b;->l:I

    invoke-virtual {v3, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v9, "substring(...)"

    invoke-static {v3, v9}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x1

    new-array v12, v9, [C

    const/16 v13, 0x2c

    aput-char v13, v12, v11

    invoke-static {v3, v12}, Lr9/k;->x0(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x3

    if-lt v12, v13, :cond_14

    invoke-virtual {v7}, Lr9/g;->a()Ljava/util/List;

    move-result-object v7

    check-cast v7, Lr9/e;

    invoke-virtual {v7, v9}, Lr9/e;->get(I)Ljava/lang/Object;

    move-result-object v7

    new-instance v9, Lt8/j;

    invoke-direct {v9, v3, v7}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_9
    if-nez v9, :cond_16

    return-object v4

    :cond_16
    iget-object v3, v9, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v7, v9, Lt8/j;->m:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    const/4 v9, 0x0

    :try_start_1
    iput-object v9, v5, Lzc/e;->l:Ljava/lang/String;

    iput-object v9, v5, Lzc/e;->m:Lua/nav/routing/GeoPoint;

    iput-object v9, v5, Lzc/e;->n:Ljava/util/List;

    iput-object v4, v5, Lzc/e;->o:Ljava/util/List;

    iput-object v7, v5, Lzc/e;->p:Ljava/lang/String;

    iput v1, v5, Lzc/e;->q:I

    const/4 v13, 0x3

    iput v13, v5, Lzc/e;->t:I

    invoke-virtual {v0, v1, v5, v3, v2}, Lzc/f;->b(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/io/Serializable;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-ne v2, v6, :cond_17

    :goto_a
    return-object v6

    :cond_17
    move-object v3, v7

    :goto_b
    :try_start_2
    check-cast v2, Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_d

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object v3, v7

    :goto_c
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v2

    :goto_d
    invoke-static {v2}, Lt8/m;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_18

    move-object v10, v2

    :cond_18
    check-cast v10, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lua/nav/geocoding/Place;

    iget-boolean v6, v6, Lua/nav/geocoding/Place;->d:Z

    if-nez v6, :cond_19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_e

    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object v4

    :cond_1b
    const-string v2, "\u0411\u0443\u0434\u0438\u043d\u043e\u043a "

    const-string v5, " \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e \u043d\u0430 \u043a\u0430\u0440\u0442\u0456 \u2014 \u043f\u043e\u043a\u0430\u0437\u0430\u043d\u043e \u0432\u0443\u043b\u0438\u0446\u044e. \u0423\u0442\u043e\u0447\u043d\u0456\u0442\u044c \u0442\u043e\u0447\u043a\u0443 \u043d\u0430 \u043a\u0430\u0440\u0442\u0456"

    invoke-static {v2, v3, v5}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_1e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lua/nav/geocoding/Place;

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v9, v11

    :goto_10
    if-ge v9, v5, :cond_1d

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Lua/nav/geocoding/Place;

    iget-object v10, v10, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_1d
    iget-object v5, v6, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v11

    :goto_11
    if-ge v5, v4, :cond_1f

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v12, v6

    check-cast v12, Lua/nav/geocoding/Place;

    const/4 v15, 0x0

    const/16 v17, 0x5f

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static/range {v12 .. v17}, Lua/nav/geocoding/Place;->a(Lua/nav/geocoding/Place;Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;I)Lua/nav/geocoding/Place;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_1f
    invoke-static {v2, v3}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    :cond_20
    :goto_12
    if-ge v11, v4, :cond_21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v11, v11, 0x1

    move-object v6, v5

    check-cast v6, Lua/nav/geocoding/Place;

    iget-object v7, v6, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v9, v7, Lua/nav/routing/GeoPoint;->a:D

    const/4 v7, 0x5

    invoke-static {v9, v10, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v9

    iget-object v6, v6, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-wide v12, v6, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v12, v13, v7}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_21
    invoke-static {v3, v1}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
