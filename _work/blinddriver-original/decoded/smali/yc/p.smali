.class public final Lyc/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final l:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0x11

    invoke-static {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    const-string v0, "openDatabase(...)"

    invoke-static {p1, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public final b(Ljava/util/Collection;Ljava/lang/String;Z)Ljava/util/List;
    .locals 20

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "snIds"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "nn"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lu8/r;->l:Lu8/r;

    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/lang/Iterable;

    const/16 v3, 0x1f4

    invoke-static {v0, v3}, Lu8/m;->Z(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    sget-object v11, Lyc/o;->l:Lyc/o;

    const/16 v12, 0x1e

    const-string v8, ","

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const-string v8, "SELECT sn_id, nn, lat, lon FROM house WHERE sn_id IN ("

    if-eqz p3, :cond_2

    const-string v9, ") AND nn >= ? AND nn < ?"

    invoke-static {v8, v6, v9}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    const-string v9, ") AND nn = ?"

    invoke-static {v8, v6, v9}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    const/4 v8, 0x2

    const-string v9, "<this>"

    const/4 v10, 0x1

    if-eqz p3, :cond_3

    const-string v11, "\uffff"

    invoke-virtual {v1, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    filled-new-array {v1, v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v7

    add-int/lit8 v12, v9, 0x2

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    :goto_3
    check-cast v7, [Ljava/lang/String;

    move-object/from16 v9, p0

    goto :goto_4

    :cond_3
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v7, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v9, v7

    add-int/lit8 v12, v9, 0x1

    invoke-static {v7, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    invoke-static {v11, v4, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_3

    :goto_4
    iget-object v11, v9, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v11, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_5
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v12, Lyc/l;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v11, "getString(...)"

    invoke-static {v14, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    move/from16 v19, v5

    int-to-double v4, v11

    const-wide v15, 0x412e848000000000L    # 1000000.0

    div-double/2addr v4, v15

    const/4 v11, 0x3

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    int-to-double v8, v11

    div-double v17, v8, v15

    move-wide v15, v4

    invoke-direct/range {v12 .. v18}, Lyc/l;-><init>(ILjava/lang/String;DD)V

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v9, p0

    move/from16 v5, v19

    const/4 v4, 0x0

    const/4 v8, 0x2

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :cond_4
    move/from16 v19, v5

    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    invoke-static {v7, v2}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    const/4 v4, 0x0

    goto/16 :goto_0

    :goto_6
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_5
    return-object v2
.end method

.method public final c(Ljava/util/Collection;)Ljava/util/List;
    .locals 19

    const-string v0, "getString(...)"

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lu8/r;->l:Lu8/r;

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v2, p1

    check-cast v2, Ljava/lang/Iterable;

    const/16 v3, 0x1f4

    invoke-static {v2, v3}, Lu8/m;->Z(Ljava/lang/Iterable;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    move-object v7, v6

    check-cast v7, Ljava/util/List;

    sget-object v11, Lyc/o;->l:Lyc/o;

    const/16 v12, 0x1e

    const-string v8, ","

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/util/ArrayList;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    new-array v7, v4, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const-string v8, "SELECT id, kind, name, lat, lon, rank FROM loc WHERE id IN ("

    const-string v9, ")"

    invoke-static {v8, v6, v9}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p0

    iget-object v9, v8, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v9, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_2

    new-instance v10, Lyc/m;

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v9, 0x1

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x3

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v14

    const/4 v9, 0x4

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v16

    const/4 v9, 0x5

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-direct/range {v10 .. v18}, Lyc/m;-><init>(ILjava/lang/String;Ljava/lang/String;DDI)V

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :cond_2
    invoke-interface {v6}, Ljava/io/Closeable;->close()V

    invoke-static {v7, v1}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    goto/16 :goto_0

    :goto_3
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v6, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    return-object v1
.end method

.method public final close()V
    .locals 0

    iget-object p0, p0, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    return-void
.end method

.method public final d(ILjava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    const-string v0, "\uffff"

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, v0, p1}, [Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string p2, "SELECT t, k, r FROM tok WHERE t >= ? AND t < ? LIMIT ?"

    invoke-virtual {p0, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance p2, Lyc/r;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(...)"

    invoke-static {v0, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {p2, v0, v1, v2}, Lyc/r;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-object p1

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method
