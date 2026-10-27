.class public final Lyc/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lyc/i;

.field public static final b:Ljava/lang/Object;


# instance fields
.field public final a:Lyc/p;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lyc/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lyc/k;->Companion:Lyc/i;

    const/16 v0, 0x43a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v1, Lt8/j;

    const-string v2, "\u0445"

    invoke-direct {v1, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x445

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v3, Lt8/j;

    const-string v4, "\u043a\u0433"

    invoke-direct {v3, v0, v4}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, 0x433

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    new-instance v4, Lt8/j;

    invoke-direct {v4, v0, v2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v3, v4}, [Lt8/j;

    move-result-object v0

    invoke-static {v0}, Lu8/v;->L([Lt8/j;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lyc/k;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lyc/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lyc/k;->a:Lyc/p;

    return-void
.end method

.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lyc/h;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lyc/h;-><init>(I)V

    invoke-static {p0, v2}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/a;

    iget-object v3, v2, Lyc/a;->a:Lyc/b;

    iget-object v4, v2, Lyc/a;->b:Ljava/lang/String;

    iget-object v5, v2, Lyc/a;->c:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_0

    :cond_2
    return-object v1
.end method

.method public static final c(Lua/nav/routing/GeoPoint;DD)D
    .locals 4

    iget-wide v0, p0, Lua/nav/routing/GeoPoint;->a:D

    sub-double/2addr p1, v0

    const-wide v2, 0x405ba28f5c28f5c3L    # 110.54

    mul-double/2addr p1, v2

    iget-wide v2, p0, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr p3, v2

    const-wide v2, 0x405bd47ae147ae14L    # 111.32

    mul-double/2addr p3, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p3

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    const-wide/high16 p2, 0x4024000000000000L    # 10.0

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, p2

    const-wide/high16 p2, 0x4049000000000000L    # 50.0

    div-double/2addr p2, p0

    return-wide p2
.end method

.method public static final d(ILjava/util/ArrayList;)Ljava/util/HashMap;
    .locals 12

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :cond_0
    if-ge v2, v0, :cond_7

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lt8/j;

    iget-object v5, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/r;

    iget v8, v7, Lyc/r;->b:I

    if-ne v8, p0, :cond_1

    iget v8, v7, Lyc/r;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v7, v7, Lyc/r;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-instance v9, Lsc/u0;

    const/16 v10, 0x13

    invoke-direct {v9, v10}, Lsc/u0;-><init>(I)V

    new-instance v10, Lid/g;

    const/4 v11, 0x2

    invoke-direct {v10, v11, v9}, Lid/g;-><init>(ILi9/e;)V

    invoke-virtual {v6, v8, v7, v10}, Ljava/util/HashMap;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v6

    goto/16 :goto_3

    :cond_3
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Lu8/v;->J(I)I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v8, v6}, Lu8/v;->I(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v8

    add-int/2addr v8, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    invoke-static {v3}, Lu8/v;->O(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v1

    :cond_7
    return-object v3
.end method


# virtual methods
.method public final b(Ljava/util/ArrayList;Lyc/j;Lua/nav/routing/GeoPoint;)Ljava/util/ArrayList;
    .locals 44

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-wide v3, v2, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v5, v2, Lua/nav/routing/GeoPoint;->a:D

    move-object/from16 v7, p0

    iget-object v7, v7, Lyc/k;->a:Lyc/p;

    iget-object v8, v7, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v0, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v9, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    const/4 v14, 0x2

    sget-object v15, Lu8/r;->l:Lu8/r;

    if-ge v13, v11, :cond_2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v14, :cond_0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0xfa0

    invoke-virtual {v7, v0, v10}, Lyc/p;->d(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    :cond_1
    new-instance v0, Lt8/j;

    invoke-direct {v0, v15, v10}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    const/16 v10, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v10, 0x1

    invoke-static {v10, v9}, Lyc/k;->d(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v11

    sget-object v21, Lyc/o;->l:Lyc/o;

    const-string v14, ")"

    const-string v10, "getString(...)"

    const-string v25, ""

    if-eqz v11, :cond_e

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v17

    move-object/from16 v12, v17

    check-cast v12, Ljava/lang/Iterable;

    const/16 v13, 0x12c

    invoke-static {v12, v13}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v33, v0

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    move-object/from16 v34, v7

    move-object/from16 v35, v9

    move-object v7, v10

    move-object v0, v15

    :goto_1
    const/16 v9, 0xa

    goto/16 :goto_f

    :cond_3
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move-wide/from16 v28, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-wide/from16 v30, v5

    const/16 v4, 0x1f4

    invoke-static {v12, v4}, Lu8/m;->Z(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_7

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v6, v6, 0x1

    check-cast v17, Ljava/util/List;

    const/16 v20, 0x0

    const/16 v22, 0x1e

    const-string v18, ","

    const/16 v19, 0x0

    move/from16 v32, v4

    invoke-static/range {v17 .. v22}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move/from16 v17, v6

    new-instance v6, Ljava/util/ArrayList;

    move-object/from16 v33, v0

    const/16 v0, 0xa

    invoke-static {v5, v0}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const-string v5, "SELECT sn_id, lat, lon FROM st WHERE sn_id IN ("

    invoke-static {v5, v4, v14}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_4
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v13, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :cond_5
    :goto_5
    check-cast v2, Ljava/util/List;

    new-instance v0, Lua/nav/routing/GeoPoint;

    move-object/from16 v34, v7

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v6

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-direct {v0, v6, v7, v9, v10}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v7, v34

    move-object/from16 v9, v35

    move-object/from16 v10, v36

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    move-object/from16 v34, v7

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    invoke-interface {v4}, Ljava/io/Closeable;->close()V

    invoke-static {v15, v3}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    move-object/from16 v2, p3

    move/from16 v6, v17

    move-object/from16 v5, v18

    move/from16 v4, v32

    move-object/from16 v0, v33

    goto/16 :goto_2

    :goto_6
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v4, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    move-object/from16 v33, v0

    move-object/from16 v34, v7

    move-object/from16 v35, v9

    move-object/from16 v36, v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v4, 0x1f4

    invoke-static {v12, v4}, Lu8/m;->Z(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_7
    if-ge v4, v3, :cond_c

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v17, v5

    check-cast v17, Ljava/util/List;

    const/16 v20, 0x0

    const/16 v22, 0x1e

    const-string v18, ","

    const/16 v19, 0x0

    invoke-static/range {v17 .. v22}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v6, v17

    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v6, v9}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    const/4 v9, 0x0

    new-array v6, v9, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    const-string v7, "SELECT id, name, norm, typ, loc_id FROM sn WHERE id IN ("

    invoke-static {v7, v5, v14}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_9
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_b

    new-instance v37, Lyc/q;

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v7, v36

    invoke-static {v9, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_9

    move-object/from16 v41, v25

    :goto_a
    const/4 v10, 0x4

    goto :goto_b

    :cond_9
    move-object/from16 v41, v17

    goto :goto_a

    :goto_b
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v42

    const/4 v10, 0x0

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v10, :cond_a

    move-object/from16 v43, v15

    :goto_c
    move-object/from16 v39, v9

    move-object/from16 v40, v12

    goto :goto_d

    :cond_a
    move-object/from16 v43, v10

    goto :goto_c

    :goto_d
    invoke-direct/range {v37 .. v43}, Lyc/q;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v9, v37

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v36, v7

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :cond_b
    move-object/from16 v7, v36

    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    invoke-static {v6, v0}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto/16 :goto_7

    :goto_e
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    invoke-static {v5, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_c
    move-object/from16 v7, v36

    goto/16 :goto_1

    :goto_f
    invoke-static {v0, v9}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Lu8/v;->J(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_d

    const/16 v2, 0x10

    :cond_d
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Lyc/q;

    iget v4, v4, Lyc/q;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10

    :cond_e
    move-object/from16 v33, v0

    move-wide/from16 v28, v3

    move-wide/from16 v30, v5

    move-object/from16 v34, v7

    move-object/from16 v35, v9

    move-object v7, v10

    sget-object v3, Lu8/s;->l:Lu8/s;

    :cond_f
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/q;

    iget v4, v4, Lyc/q;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_10
    move-object/from16 v4, v35

    const/4 v5, 0x2

    invoke-static {v5, v4}, Lyc/k;->d(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    const/16 v5, 0x3c

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-static {v6, v5}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    move-object/from16 v9, v34

    invoke-virtual {v9, v6}, Lyc/p;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v6

    :goto_12
    const/4 v10, 0x3

    goto :goto_13

    :cond_11
    move-object/from16 v9, v34

    move-object v6, v15

    goto :goto_12

    :goto_13
    invoke-static {v10, v4}, Lyc/k;->d(ILjava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_15

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v12

    check-cast v12, Ljava/lang/Iterable;

    invoke-static {v12, v5}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_12

    goto/16 :goto_18

    :cond_12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/16 v12, 0x1f4

    invoke-static {v5, v12}, Lu8/m;->Z(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_14
    if-ge v13, v12, :cond_15

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    add-int/lit8 v13, v13, 0x1

    check-cast v17, Ljava/util/List;

    const/16 v20, 0x0

    const/16 v22, 0x1e

    const-string v18, ","

    const/16 v19, 0x0

    invoke-static/range {v17 .. v22}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v18, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v6

    new-instance v6, Ljava/util/ArrayList;

    move/from16 v19, v12

    move/from16 v20, v13

    const/16 v12, 0xa

    invoke-static {v5, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v13

    invoke-direct {v6, v13}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_13
    const/4 v12, 0x0

    new-array v5, v12, [Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const-string v6, "SELECT id, name, cat, loc_id, lat, lon, rank FROM poi WHERE id IN ("

    invoke-static {v6, v10, v14}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_16
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_14

    new-instance v34, Lyc/n;

    const/4 v12, 0x0

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    const/4 v10, 0x1

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x2

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v38

    const/4 v10, 0x4

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v39

    const/4 v10, 0x5

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v41

    const/4 v10, 0x6

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v43

    move-object/from16 v36, v12

    move-object/from16 v37, v13

    invoke-direct/range {v34 .. v43}, Lyc/n;-><init>(ILjava/lang/String;Ljava/lang/String;IDDI)V

    move-object/from16 v10, v34

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_16

    :catchall_4
    move-exception v0

    move-object v1, v0

    goto :goto_17

    :cond_14
    invoke-interface {v5}, Ljava/io/Closeable;->close()V

    invoke-static {v6, v15}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    move-object/from16 v6, v17

    move-object/from16 v5, v18

    move/from16 v12, v19

    move/from16 v13, v20

    goto/16 :goto_14

    :goto_17
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v5, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_15
    :goto_18
    move-object/from16 v17, v6

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_19
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyc/n;

    iget v6, v6, Lyc/n;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_19

    :cond_16
    invoke-virtual {v9, v0}, Lyc/p;->c(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    const/16 v12, 0xa

    invoke-static {v0, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-static {v5}, Lu8/v;->J(I)I

    move-result v5

    const/16 v6, 0x10

    if-ge v5, v6, :cond_17

    move v13, v6

    goto :goto_1a

    :cond_17
    move v13, v5

    :goto_1a
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v13}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lyc/m;

    iget v7, v7, Lyc/m;->a:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1b

    :cond_18
    iget-object v0, v1, Lyc/j;->b:Ljava/lang/String;

    iget-object v1, v1, Lyc/j;->c:Ljava/lang/String;

    const-string v8, "toUpperCase(...)"

    if-eqz v0, :cond_22

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_22

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    const/4 v14, 0x0

    invoke-virtual {v9, v10, v0, v14}, Lyc/p;->b(Ljava/util/Collection;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_19

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    check-cast v10, Ljava/util/Collection;

    const-wide p1, 0x407f400000000000L    # 500.0

    const/4 v6, 0x1

    invoke-virtual {v9, v10, v0, v6}, Lyc/p;->b(Ljava/util/Collection;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v10

    goto :goto_1c

    :cond_19
    const-wide p1, 0x407f400000000000L    # 500.0

    :goto_1c
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_21

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lyc/l;

    iget v9, v7, Lyc/l;->a:I

    iget-object v10, v7, Lyc/l;->b:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyc/q;

    if-nez v9, :cond_1a

    goto :goto_1d

    :cond_1a
    iget v14, v9, Lyc/q;->e:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lyc/m;

    if-eqz v11, :cond_1b

    iget v12, v9, Lyc/q;->a:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_1b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    :goto_1e
    const/16 v13, 0xa

    goto :goto_1f

    :cond_1b
    const/4 v12, 0x0

    goto :goto_1e

    :goto_1f
    mul-int/2addr v12, v13

    int-to-double v12, v12

    const-wide/high16 v20, 0x4059000000000000L    # 100.0

    add-double v12, v12, v20

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_1c

    move-object/from16 v16, v3

    iget-object v3, v9, Lyc/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 v3, 0x5

    :goto_20
    move-wide/from16 v20, v12

    goto :goto_21

    :cond_1c
    move-object/from16 v16, v3

    :cond_1d
    const/4 v3, 0x0

    goto :goto_20

    :goto_21
    int-to-double v12, v3

    add-double v12, v20, v12

    if-eqz v14, :cond_1e

    iget v3, v14, Lyc/m;->f:I

    :goto_22
    move-wide/from16 v20, v12

    goto :goto_23

    :cond_1e
    const/4 v3, 0x0

    goto :goto_22

    :goto_23
    int-to-double v12, v3

    div-double v12, v12, p1

    move-object/from16 v22, v4

    const-wide/high16 v3, 0x4034000000000000L    # 20.0

    invoke-static {v3, v4, v12, v13}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    add-double v12, v12, v20

    iget-wide v3, v7, Lyc/l;->c:D

    move-wide/from16 v20, v12

    iget-wide v12, v7, Lyc/l;->d:D

    move-object/from16 v23, v6

    move-object/from16 v6, p3

    invoke-static {v6, v3, v4, v12, v13}, Lyc/k;->c(Lua/nav/routing/GeoPoint;DD)D

    move-result-wide v3

    add-double v3, v3, v20

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1f

    const/4 v12, 0x0

    goto :goto_24

    :cond_1f
    const/16 v12, 0x8

    :goto_24
    int-to-double v12, v12

    sub-double v42, v3, v12

    new-instance v34, Lyc/a;

    sget-object v35, Lyc/b;->l:Lyc/b;

    iget-object v3, v9, Lyc/q;->b:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v10, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    if-eqz v14, :cond_20

    iget-object v3, v14, Lyc/m;->c:Ljava/lang/String;

    move-object/from16 v37, v3

    goto :goto_25

    :cond_20
    move-object/from16 v37, v25

    :goto_25
    iget-wide v3, v7, Lyc/l;->c:D

    iget-wide v9, v7, Lyc/l;->d:D

    move-wide/from16 v38, v3

    move-wide/from16 v40, v9

    invoke-direct/range {v34 .. v43}, Lyc/a;-><init>(Lyc/b;Ljava/lang/String;Ljava/lang/String;DDD)V

    move-object/from16 v3, v33

    move-object/from16 v4, v34

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v3, v16

    move-object/from16 v4, v22

    move-object/from16 v6, v23

    const/4 v14, 0x0

    goto/16 :goto_1d

    :cond_21
    move-object/from16 v6, p3

    move-object/from16 v16, v3

    move-object/from16 v22, v4

    move-object/from16 v3, v33

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-static {v3}, Lyc/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :cond_22
    move-object/from16 v6, p3

    move-object/from16 v16, v3

    move-object/from16 v22, v4

    move-object/from16 v3, v33

    const-wide p1, 0x407f400000000000L    # 500.0

    :cond_23
    if-eqz v0, :cond_25

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_24

    goto :goto_26

    :cond_24
    move-object/from16 v26, v5

    move-object/from16 v24, v15

    goto/16 :goto_34

    :cond_25
    :goto_26
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_27
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_24

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lyc/q;

    iget-object v10, v9, Lyc/q;->f:Ljava/util/List;

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_26

    move-object/from16 v26, v5

    move-object/from16 v20, v7

    move-object/from16 v24, v15

    const/4 v12, 0x0

    goto :goto_2a

    :cond_26
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_27

    move-object/from16 v26, v5

    move-object/from16 v20, v7

    move-object/from16 v24, v15

    goto :goto_2a

    :cond_27
    move-object v13, v12

    check-cast v13, Lua/nav/routing/GeoPoint;

    move-object v14, v5

    iget-wide v4, v13, Lua/nav/routing/GeoPoint;->a:D

    sub-double v4, v4, v30

    move-object/from16 v20, v12

    iget-wide v12, v13, Lua/nav/routing/GeoPoint;->b:D

    sub-double v12, v12, v28

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    move-object/from16 v12, v20

    :goto_28
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    move-object/from16 v20, v7

    move-object v7, v13

    check-cast v7, Lua/nav/routing/GeoPoint;

    move-object/from16 v21, v12

    move-object/from16 v23, v13

    iget-wide v12, v7, Lua/nav/routing/GeoPoint;->a:D

    sub-double v12, v12, v30

    move-object/from16 v26, v14

    move-object/from16 v24, v15

    iget-wide v14, v7, Lua/nav/routing/GeoPoint;->b:D

    sub-double v14, v14, v28

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v12

    invoke-static {v4, v5, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v7

    if-lez v7, :cond_28

    move-wide v4, v12

    move-object/from16 v12, v23

    goto :goto_29

    :cond_28
    move-object/from16 v12, v21

    :goto_29
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_30

    :goto_2a
    check-cast v12, Lua/nav/routing/GeoPoint;

    if-nez v12, :cond_29

    :goto_2b
    move-object/from16 v7, v20

    move-object/from16 v15, v24

    move-object/from16 v5, v26

    goto :goto_27

    :cond_29
    iget v4, v9, Lyc/q;->e:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v14, v26

    invoke-virtual {v14, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyc/m;

    if-eqz v11, :cond_2a

    iget v5, v9, Lyc/q;->a:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2a

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_2c
    const/16 v13, 0xa

    goto :goto_2d

    :cond_2a
    const/4 v5, 0x0

    goto :goto_2c

    :goto_2d
    mul-int/2addr v5, v13

    move-object v7, v11

    int-to-double v10, v5

    const-wide/high16 v32, 0x404e000000000000L    # 60.0

    add-double v10, v10, v32

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2b

    iget-object v5, v9, Lyc/q;->d:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    const/4 v5, 0x5

    :goto_2e
    move-wide/from16 v32, v10

    goto :goto_2f

    :cond_2b
    const/4 v5, 0x0

    goto :goto_2e

    :goto_2f
    int-to-double v10, v5

    add-double v10, v32, v10

    if-eqz v4, :cond_2c

    iget v5, v4, Lyc/m;->f:I

    :goto_30
    move-wide/from16 v32, v10

    goto :goto_31

    :cond_2c
    const/4 v5, 0x0

    goto :goto_30

    :goto_31
    int-to-double v10, v5

    div-double v10, v10, p1

    move-object/from16 v26, v14

    const-wide/high16 v13, 0x4034000000000000L    # 20.0

    invoke-static {v13, v14, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    add-double v10, v10, v32

    iget-wide v13, v12, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v32, v10

    iget-wide v10, v12, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v6, v13, v14, v10, v11}, Lyc/k;->c(Lua/nav/routing/GeoPoint;DD)D

    move-result-wide v10

    add-double v10, v10, v32

    if-eqz v0, :cond_2d

    const/16 v5, 0xf

    int-to-double v13, v5

    sub-double/2addr v10, v13

    :cond_2d
    move-wide/from16 v40, v10

    new-instance v32, Lyc/a;

    sget-object v33, Lyc/b;->m:Lyc/b;

    iget-object v5, v9, Lyc/q;->b:Ljava/lang/String;

    if-eqz v0, :cond_2e

    sget-object v9, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v9}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "\u0431\u0443\u0434\u0438\u043d\u043e\u043a "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " \u043d\u0435 \u0437\u043d\u0430\u0439\u0434\u0435\u043d\u043e \u00b7 "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_32

    :cond_2e
    move-object/from16 v9, v25

    :goto_32
    if-eqz v4, :cond_2f

    iget-object v4, v4, Lyc/m;->c:Ljava/lang/String;

    goto :goto_33

    :cond_2f
    move-object/from16 v4, v25

    :goto_33
    invoke-static {v9, v4}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    iget-wide v9, v12, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v12, Lua/nav/routing/GeoPoint;->b:D

    move-object/from16 v34, v5

    move-wide/from16 v36, v9

    move-wide/from16 v38, v11

    invoke-direct/range {v32 .. v41}, Lyc/a;-><init>(Lyc/b;Ljava/lang/String;Ljava/lang/String;DDD)V

    move-object/from16 v4, v32

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v7

    goto/16 :goto_2b

    :cond_30
    move-object/from16 v7, v20

    move-object/from16 v15, v24

    move-object/from16 v14, v26

    goto/16 :goto_28

    :goto_34
    if-nez v0, :cond_51

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/m;

    if-eqz v2, :cond_31

    iget v4, v1, Lyc/m;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_36

    :cond_31
    const/4 v4, 0x0

    :goto_36
    new-instance v27, Lyc/a;

    sget-object v28, Lyc/b;->n:Lyc/b;

    iget-object v5, v1, Lyc/m;->c:Ljava/lang/String;

    iget-object v7, v1, Lyc/m;->b:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v9, "\u043c\u0456\u0441\u0442\u043e"

    sparse-switch v8, :sswitch_data_0

    goto :goto_38

    :sswitch_0
    const-string v8, "quarter"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto :goto_38

    :sswitch_1
    const-string v8, "village"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_32

    goto :goto_38

    :cond_32
    const-string v7, "\u0441\u0435\u043b\u043e"

    :goto_37
    move-object/from16 v30, v7

    goto :goto_39

    :sswitch_2
    const-string v8, "district"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto :goto_38

    :sswitch_3
    const-string v8, "town"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_38

    :cond_33
    move-object/from16 v30, v9

    goto :goto_39

    :sswitch_4
    const-string v8, "city"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_33

    goto :goto_38

    :sswitch_5
    const-string v8, "suburb"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    goto :goto_38

    :sswitch_6
    const-string v8, "hamlet"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_34

    goto :goto_38

    :cond_34
    const-string v7, "\u0445\u0443\u0442\u0456\u0440"

    goto :goto_37

    :sswitch_7
    const-string v8, "neighbourhood"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_35

    :goto_38
    goto :goto_37

    :cond_35
    const-string v7, "\u0440\u0430\u0439\u043e\u043d"

    goto :goto_37

    :goto_39
    iget-wide v7, v1, Lyc/m;->d:D

    iget-wide v9, v1, Lyc/m;->e:D

    const/16 v12, 0xa

    mul-int/2addr v4, v12

    int-to-double v11, v4

    const-wide v13, 0x4050400000000000L    # 65.0

    add-double/2addr v11, v13

    iget v4, v1, Lyc/m;->f:I

    int-to-double v13, v4

    div-double v13, v13, p1

    move-object/from16 v29, v5

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    invoke-static {v4, v5, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    add-double/2addr v13, v11

    iget-wide v11, v1, Lyc/m;->d:D

    iget-wide v4, v1, Lyc/m;->e:D

    invoke-static {v6, v11, v12, v4, v5}, Lyc/k;->c(Lua/nav/routing/GeoPoint;DD)D

    move-result-wide v4

    add-double v35, v4, v13

    move-wide/from16 v31, v7

    move-wide/from16 v33, v9

    invoke-direct/range {v27 .. v36}, Lyc/a;-><init>(Lyc/b;Ljava/lang/String;Ljava/lang/String;DDD)V

    move-object/from16 v1, v27

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    :cond_36
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lyc/n;

    if-eqz v22, :cond_37

    iget v2, v1, Lyc/n;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v4, v22

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_38

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_3b

    :cond_37
    move-object/from16 v4, v22

    :cond_38
    const/4 v2, 0x0

    :goto_3b
    iget v5, v1, Lyc/n;->d:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v14, v26

    invoke-virtual {v14, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyc/m;

    new-instance v25, Lyc/a;

    sget-object v26, Lyc/b;->o:Lyc/b;

    iget-object v7, v1, Lyc/n;->b:Ljava/lang/String;

    iget-object v8, v1, Lyc/n;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_1

    goto/16 :goto_3c

    :sswitch_8
    const-string v9, "charging_station"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_39

    goto/16 :goto_3c

    :cond_39
    const-string v8, "\u0437\u0430\u0440\u044f\u0434\u043a\u0430"

    goto/16 :goto_3d

    :sswitch_9
    const-string v9, "kindergarten"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3a

    goto/16 :goto_3c

    :cond_3a
    const-string v8, "\u0434\u0438\u0442\u0441\u0430\u0434\u043e\u043a"

    goto/16 :goto_3d

    :sswitch_a
    const-string v9, "bus_station"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3b

    goto/16 :goto_3c

    :cond_3b
    const-string v8, "\u0430\u0432\u0442\u043e\u0432\u043e\u043a\u0437\u0430\u043b"

    goto/16 :goto_3d

    :sswitch_b
    const-string v9, "college"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    goto/16 :goto_3c

    :cond_3c
    const-string v8, "\u043a\u043e\u043b\u0435\u0434\u0436"

    goto/16 :goto_3d

    :sswitch_c
    const-string v9, "post_office"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3d

    goto/16 :goto_3c

    :cond_3d
    const-string v8, "\u043f\u043e\u0448\u0442\u0430"

    goto/16 :goto_3d

    :sswitch_d
    const-string v9, "university"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3e

    goto/16 :goto_3c

    :cond_3e
    const-string v8, "\u0443\u043d\u0456\u0432\u0435\u0440\u0441\u0438\u0442\u0435\u0442"

    goto/16 :goto_3d

    :sswitch_e
    const-string v9, "hotel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3f

    goto/16 :goto_3c

    :cond_3f
    const-string v8, "\u0433\u043e\u0442\u0435\u043b\u044c"

    goto/16 :goto_3d

    :sswitch_f
    const-string v9, "park"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_40

    goto/16 :goto_3c

    :cond_40
    const-string v8, "\u043f\u0430\u0440\u043a"

    goto/16 :goto_3d

    :sswitch_10
    const-string v9, "fuel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_41

    goto/16 :goto_3c

    :cond_41
    const-string v8, "\u0410\u0417\u0421"

    goto/16 :goto_3d

    :sswitch_11
    const-string v9, "cafe"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_42

    goto/16 :goto_3c

    :cond_42
    const-string v8, "\u043a\u0430\u0444\u0435"

    goto/16 :goto_3d

    :sswitch_12
    const-string v9, "bank"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_43

    goto/16 :goto_3c

    :cond_43
    const-string v8, "\u0431\u0430\u043d\u043a"

    goto/16 :goto_3d

    :sswitch_13
    const-string v9, "atm"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_44

    goto/16 :goto_3c

    :cond_44
    const-string v8, "\u0431\u0430\u043d\u043a\u043e\u043c\u0430\u0442"

    goto/16 :goto_3d

    :sswitch_14
    const-string v9, "fast_food"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    goto/16 :goto_3c

    :cond_45
    const-string v8, "\u0444\u0430\u0441\u0442\u0444\u0443\u0434"

    goto/16 :goto_3d

    :sswitch_15
    const-string v9, "hospital"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_46

    goto/16 :goto_3c

    :cond_46
    const-string v8, "\u043b\u0456\u043a\u0430\u0440\u043d\u044f"

    goto/16 :goto_3d

    :sswitch_16
    const-string v9, "parking"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    goto/16 :goto_3c

    :cond_47
    const-string v8, "\u043f\u0430\u0440\u043a\u0456\u043d\u0433"

    goto/16 :goto_3d

    :sswitch_17
    const-string v9, "school"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_48

    goto :goto_3c

    :cond_48
    const-string v8, "\u0448\u043a\u043e\u043b\u0430"

    goto :goto_3d

    :sswitch_18
    const-string v9, "police"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_49

    goto :goto_3c

    :cond_49
    const-string v8, "\u043f\u043e\u043b\u0456\u0446\u0456\u044f"

    goto :goto_3d

    :sswitch_19
    const-string v9, "museum"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4a

    goto :goto_3c

    :cond_4a
    const-string v8, "\u043c\u0443\u0437\u0435\u0439"

    goto :goto_3d

    :sswitch_1a
    const-string v9, "clinic"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4b

    goto :goto_3c

    :cond_4b
    const-string v8, "\u043a\u043b\u0456\u043d\u0456\u043a\u0430"

    goto :goto_3d

    :sswitch_1b
    const-string v9, "pharmacy"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4c

    goto :goto_3c

    :cond_4c
    const-string v8, "\u0430\u043f\u0442\u0435\u043a\u0430"

    goto :goto_3d

    :sswitch_1c
    const-string v9, "place_of_worship"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4d

    goto :goto_3c

    :cond_4d
    const-string v8, "\u0445\u0440\u0430\u043c"

    goto :goto_3d

    :sswitch_1d
    const-string v9, "restaurant"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4e

    goto :goto_3c

    :cond_4e
    const-string v8, "\u0440\u0435\u0441\u0442\u043e\u0440\u0430\u043d"

    goto :goto_3d

    :sswitch_1e
    const-string v9, "stadium"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4f

    :goto_3c
    const/4 v8, 0x0

    goto :goto_3d

    :cond_4f
    const-string v8, "\u0441\u0442\u0430\u0434\u0456\u043e\u043d"

    :goto_3d
    if-eqz v5, :cond_50

    iget-object v5, v5, Lyc/m;->c:Ljava/lang/String;

    goto :goto_3e

    :cond_50
    const/4 v5, 0x0

    :goto_3e
    filled-new-array {v8, v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lu8/l;->s0([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v8

    const/4 v12, 0x0

    const/16 v13, 0x3e

    const-string v9, " \u00b7 "

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v28

    iget-wide v8, v1, Lyc/n;->e:D

    iget-wide v10, v1, Lyc/n;->f:D

    const/16 v12, 0xa

    mul-int/2addr v2, v12

    int-to-double v12, v2

    const-wide/high16 v17, 0x4044000000000000L    # 40.0

    add-double v12, v12, v17

    iget v1, v1, Lyc/n;->g:I

    int-to-double v1, v1

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    div-double v1, v1, v17

    add-double/2addr v1, v12

    invoke-static {v6, v8, v9, v10, v11}, Lyc/k;->c(Lua/nav/routing/GeoPoint;DD)D

    move-result-wide v12

    add-double v33, v12, v1

    move-object/from16 v27, v7

    move-wide/from16 v29, v8

    move-wide/from16 v31, v10

    invoke-direct/range {v25 .. v34}, Lyc/a;-><init>(Lyc/b;Ljava/lang/String;Ljava/lang/String;DDD)V

    move-object/from16 v1, v25

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v4

    move-object/from16 v26, v14

    goto/16 :goto_3a

    :cond_51
    invoke-static {v3}, Lyc/k;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x6150bd47 -> :sswitch_7
        -0x48fde8f9 -> :sswitch_6
        -0x3523a0db -> :sswitch_5
        0x2e996b -> :sswitch_4
        0x366a92 -> :sswitch_3
        0x1139338e -> :sswitch_2
        0x1b70a4ac -> :sswitch_1
        0x26d3a2ac -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x711b4403 -> :sswitch_1e
        -0x69a5b4c3 -> :sswitch_1d
        -0x655ce65a -> :sswitch_1c
        -0x63f4bb4d -> :sswitch_1b
        -0x50eceb18 -> :sswitch_1a
        -0x3f5935ee -> :sswitch_19
        -0x3a925ae2 -> :sswitch_18
        -0x361ea48c -> :sswitch_17
        -0x2f474c48 -> :sswitch_16
        -0x121901c6 -> :sswitch_15
        -0x1a0399f -> :sswitch_14
        0x17a9a -> :sswitch_13
        0x2e063c -> :sswitch_12
        0x2e799d -> :sswitch_11
        0x3021b6 -> :sswitch_10
        0x3463ea -> :sswitch_f
        0x5edc1b4 -> :sswitch_e
        0xb48ea8e -> :sswitch_d
        0x2153af3b -> :sswitch_c
        0x38976197 -> :sswitch_b
        0x5b56a675 -> :sswitch_a
        0x6b0420c6 -> :sswitch_9
        0x6cc80966 -> :sswitch_8
    .end sparse-switch
.end method
