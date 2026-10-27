.class public abstract Lo3/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lk/s;

.field public static final b:Lcom/graphhopper/isochrone/algorithm/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lk/s;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lk/s;-><init>(I)V

    sput-object v0, Lo3/b;->a:Lk/s;

    new-instance v0, Lcom/graphhopper/isochrone/algorithm/b;

    invoke-direct {v0, v1}, Lcom/graphhopper/isochrone/algorithm/b;-><init>(I)V

    sput-object v0, Lo3/b;->b:Lcom/graphhopper/isochrone/algorithm/b;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Lf7/c0;
    .locals 8

    const-string v0, "FontProvider.getFontFamilyResult"

    invoke-static {v0}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo3/c;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1f

    if-lt v4, v5, :cond_2

    iget-object v4, v3, Lo3/c;->e:Ljava/lang/String;

    sget-object v5, Ll3/c;->a:Ld7/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v4, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-static {v7, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v7

    if-eqz v6, :cond_1

    invoke-virtual {v6, v7}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v5, v6

    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    invoke-static {v5}, Ll3/c;->b(Landroid/graphics/Typeface;)Landroid/graphics/fonts/Font;

    move-result-object v5

    if-eqz v5, :cond_2

    new-instance v5, Lo3/d;

    iget-object v3, v3, Lo3/c;->f:Ljava/lang/String;

    invoke-direct {v5, v4, v3}, Lo3/d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    filled-new-array {v5}, [Lo3/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lo3/b;->b(Landroid/content/pm/PackageManager;Lo3/c;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance p0, Lf7/c0;

    invoke-direct {p0}, Lf7/c0;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :cond_3
    :try_start_1
    iget-object v4, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Lo3/b;->c(Landroid/content/Context;Lo3/c;Ljava/lang/String;)[Lo3/d;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    new-instance p0, Lf7/c0;

    invoke-direct {p0, v0}, Lf7/c0;-><init>(Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static b(Landroid/content/pm/PackageManager;Lo3/c;Landroid/content/res/Resources;)Landroid/content/pm/ProviderInfo;
    .locals 9

    sget-object v0, Lo3/b;->b:Lcom/graphhopper/isochrone/algorithm/b;

    sget-object v1, Lo3/b;->a:Lk/s;

    const-string v2, "Found content provider "

    const-string v3, "No package found for authority: "

    const-string v4, "FontProvider.getProvider"

    invoke-static {v4}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    iget-object v4, p1, Lo3/c;->d:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p1, Lo3/c;->a:Ljava/lang/String;

    iget-object p1, p1, Lo3/c;->b:Ljava/lang/String;

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-static {p2, v6}, Lk3/b;->d(Landroid/content/res/Resources;I)Ljava/util/List;

    move-result-object v4

    :goto_0
    new-instance p2, Lo3/a;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v5, p2, Lo3/a;->a:Ljava/lang/String;

    iput-object p1, p2, Lo3/a;->b:Ljava/lang/String;

    iput-object v4, p2, Lo3/a;->c:Ljava/util/List;

    invoke-virtual {v1, p2}, Lk/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ProviderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v7

    :cond_1
    :try_start_2
    invoke-virtual {p0, v5, v6}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v7

    if-eqz v7, :cond_8

    iget-object v3, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object p1, v7, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    invoke-virtual {v5}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move p0, v6

    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_6

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v4, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v3, v5, :cond_3

    goto :goto_4

    :cond_3
    move v3, v6

    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v5, v8}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_4

    :goto_4
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, p2, v7}, Lk/s;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v7

    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 p0, 0x0

    return-object p0

    :cond_7
    :try_start_3
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", but package was not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw p0
.end method

.method public static c(Landroid/content/Context;Lo3/c;Ljava/lang/String;)[Lo3/d;
    .locals 20

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    const-string v2, "content"

    const-string v3, "FontProvider.query"

    invoke-static {v3}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v4, 0x0

    :try_start_1
    const-string v7, "_id"

    const-string v8, "file_id"

    const-string v9, "font_ttc_index"

    const-string v10, "font_variation_settings"

    const-string v11, "font_weight"

    const-string v12, "font_italic"

    const-string v13, "result_code"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "ContentQueryWrapper.query"

    invoke-static {v0}, Lr5/h1;->I(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v8, "query = ?"

    iget-object v0, v1, Lo3/c;->c:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    const/4 v10, 0x0

    :try_start_3
    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    const-string v7, "FontsProvider"

    const-string v8, "Unable to query the content provider"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_0
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-lez v7, :cond_7

    const-string v3, "result_code"

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "_id"

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    const-string v9, "file_id"

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    const-string v10, "font_ttc_index"

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    const-string v11, "font_weight"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    const-string v12, "font_italic"

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_6

    const/4 v13, -0x1

    if-eq v3, v13, :cond_1

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move/from16 v19, v14

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_1
    const/16 v19, 0x0

    :goto_2
    if-eq v10, v13, :cond_2

    invoke-interface {v4, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    move v15, v14

    goto :goto_3

    :cond_2
    const/4 v15, 0x0

    :goto_3
    if-ne v9, v13, :cond_3

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v6, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    :goto_4
    move-object v14, v0

    goto :goto_5

    :cond_3
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_4

    :goto_5
    if-eq v11, v13, :cond_4

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    :goto_6
    move/from16 v16, v0

    goto :goto_7

    :cond_4
    const/16 v0, 0x190

    goto :goto_6

    :goto_7
    if-eq v12, v13, :cond_5

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    move/from16 v17, v1

    :goto_8
    move-object/from16 v1, p1

    goto :goto_9

    :cond_5
    const/16 v17, 0x0

    goto :goto_8

    :goto_9
    iget-object v0, v1, Lo3/c;->f:Ljava/lang/String;

    new-instance v13, Lo3/d;

    move-object/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Lo3/d;-><init>(Landroid/net/Uri;IIZLjava/lang/String;I)V

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_6
    move-object v3, v7

    :cond_7
    if-eqz v4, :cond_8

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_9
    const/4 v0, 0x0

    new-array v0, v0, [Lo3/d;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo3/d;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v0

    :catchall_1
    move-exception v0

    :try_start_7
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_a
    if-eqz v4, :cond_a

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/content/ContentProviderClient;->close()V

    :cond_b
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method
