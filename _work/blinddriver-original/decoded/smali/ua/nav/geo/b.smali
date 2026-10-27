.class public final Lua/nav/geo/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Lua/nav/geo/PackInfo;

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:Lua/nav/geo/c;

.field public final synthetic o:Ljava/io/File;

.field public final synthetic p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lua/nav/geo/PackInfo;Ljava/io/File;Lua/nav/geo/c;Ljava/io/File;Ljava/lang/String;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/geo/b;->l:Lua/nav/geo/PackInfo;

    iput-object p2, p0, Lua/nav/geo/b;->m:Ljava/io/File;

    iput-object p3, p0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    iput-object p4, p0, Lua/nav/geo/b;->o:Ljava/io/File;

    iput-object p5, p0, Lua/nav/geo/b;->p:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    new-instance v0, Lua/nav/geo/b;

    iget-object v4, p0, Lua/nav/geo/b;->o:Ljava/io/File;

    iget-object v5, p0, Lua/nav/geo/b;->p:Ljava/lang/String;

    iget-object v1, p0, Lua/nav/geo/b;->l:Lua/nav/geo/PackInfo;

    iget-object v2, p0, Lua/nav/geo/b;->m:Ljava/io/File;

    iget-object v3, p0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lua/nav/geo/b;-><init>(Lua/nav/geo/PackInfo;Ljava/io/File;Lua/nav/geo/c;Ljava/io/File;Ljava/lang/String;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/geo/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/geo/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/geo/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "HTTP "

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v2, Landroidx/lifecycle/a1;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Landroidx/lifecycle/a1;-><init>(I)V

    iget-object v3, v0, Lua/nav/geo/b;->l:Lua/nav/geo/PackInfo;

    iget-object v3, v3, Lua/nav/geo/PackInfo;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    new-instance v3, Lg7/c;

    invoke-direct {v3, v2}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    sget-object v2, Lgd/h;->b:Lla/v;

    invoke-virtual {v2}, Lla/v;->a()Lla/u;

    move-result-object v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3c

    invoke-virtual {v2, v4, v5}, Lla/u;->a(J)V

    new-instance v4, Lla/v;

    invoke-direct {v4, v2}, Lla/v;-><init>(Lla/u;)V

    new-instance v2, Lpa/p;

    invoke-direct {v2, v4, v3}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v2}, Lpa/p;->i()Lla/c0;

    move-result-object v2

    iget-object v3, v0, Lua/nav/geo/b;->l:Lua/nav/geo/PackInfo;

    iget-object v4, v0, Lua/nav/geo/b;->m:Ljava/io/File;

    iget-object v5, v0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    :try_start_0
    iget-boolean v6, v2, Lla/c0;->z:Z

    if-eqz v6, :cond_13

    iget-object v1, v2, Lla/c0;->r:Lla/e0;

    invoke-virtual {v1}, Lla/e0;->c()J

    move-result-wide v6

    new-instance v1, Ljava/lang/Long;

    invoke-direct {v1, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    const/4 v7, 0x0

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v7

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_11

    :cond_1
    iget-wide v10, v3, Lua/nav/geo/PackInfo;->f:J

    :goto_1
    const-wide/32 v12, 0x32000000

    cmp-long v1, v10, v12

    if-gtz v1, :cond_12

    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, v2, Lla/c0;->r:Lla/e0;

    invoke-virtual {v4}, Lla/e0;->e()Lbb/i;

    move-result-object v4

    invoke-interface {v4}, Lbb/i;->Q()Ljava/io/InputStream;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_b

    const/high16 v14, 0x10000

    :try_start_2
    new-array v15, v14, [B

    move-wide/from16 v16, v8

    :goto_2
    invoke-virtual {v4, v15}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, 0x0

    if-ltz v8, :cond_3

    invoke-virtual {v6, v15, v9, v8}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v1, v15, v9, v8}, Ljava/security/MessageDigest;->update([BII)V

    move-wide/from16 v20, v12

    int-to-long v12, v8

    add-long v16, v16, v12

    cmp-long v8, v16, v20

    if-gtz v8, :cond_2

    iget-object v8, v5, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v8}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v22, v12

    check-cast v22, Lyc/d;

    const/16 v12, 0x5a

    move-object v13, v15

    int-to-long v14, v12

    mul-long v14, v14, v16

    div-long/2addr v14, v10

    long-to-int v14, v14

    invoke-static {v14, v9, v12}, Lg6/c1;->f(III)I

    move-result v26

    const/16 v28, 0x0

    const/16 v29, 0x37

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v29}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v8, v7, v9}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v15, v13

    move-wide/from16 v12, v20

    const/high16 v14, 0x10000

    goto :goto_2

    :goto_3
    move-object v1, v0

    goto/16 :goto_f

    :catchall_1
    move-exception v0

    goto :goto_3

    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0444\u0430\u0439\u043b \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_3
    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_b

    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    const-string v4, "digest(...)"

    invoke-static {v1, v4}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v6, v1

    move v8, v9

    move v10, v8

    :goto_4
    const/4 v11, 0x1

    if-ge v8, v6, :cond_5

    aget-byte v12, v1, v8

    add-int/2addr v10, v11

    if-le v10, v11, :cond_4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_4
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    const-string v13, "%02x"

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v11

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, v3, Lua/nav/geo/PackInfo;->e:Ljava/lang/String;

    invoke-static {v1, v3}, Lr9/r;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_11

    invoke-virtual {v2}, Lla/c0;->close()V

    iget-object v1, v0, Lua/nav/geo/b;->l:Lua/nav/geo/PackInfo;

    iget-wide v1, v1, Lua/nav/geo/PackInfo;->g:J

    const/16 v3, 0xc

    int-to-long v3, v3

    mul-long/2addr v1, v3

    const/16 v3, 0xa

    int-to-long v3, v3

    div-long/2addr v1, v3

    const-wide/32 v3, 0x4000000

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    const-wide v3, 0x80000000L

    cmp-long v5, v1, v3

    if-lez v5, :cond_6

    move-wide v1, v3

    :cond_6
    new-instance v3, Ljava/util/zip/GZIPInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    iget-object v5, v0, Lua/nav/geo/b;->m:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v6, 0x2000

    invoke-direct {v5, v4, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v4, v0, Lua/nav/geo/b;->o:Ljava/io/File;

    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    const/high16 v4, 0x10000

    :try_start_6
    new-array v4, v4, [B

    const-wide/16 v18, 0x0

    :goto_5
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-ltz v6, :cond_8

    int-to-long v12, v6

    add-long v18, v18, v12

    cmp-long v8, v18, v1

    if-gtz v8, :cond_7

    invoke-virtual {v5, v4, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto/16 :goto_d

    :cond_7
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0431\u0430\u0437\u0430 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0430"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_8
    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    invoke-virtual {v3}, Ljava/util/zip/GZIPInputStream;->close()V

    iget-object v1, v0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    iget-object v1, v1, Lua/nav/geo/c;->d:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lyc/d;

    const/16 v18, 0x0

    const/16 v19, 0x37

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x60

    const/16 v17, 0x0

    invoke-static/range {v12 .. v19}, Lyc/d;->a(Lyc/d;Ljava/util/ArrayList;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lyc/d;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v7, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v1, Lyc/p;

    iget-object v2, v0, Lua/nav/geo/b;->o:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getPath(...)"

    invoke-static {v2, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lyc/p;-><init>(Ljava/lang/String;)V

    :try_start_8
    const-string v2, "schema"

    iget-object v3, v1, Lyc/p;->l:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "SELECT v FROM meta WHERE k = ?"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v3, v0

    goto/16 :goto_b

    :cond_9
    :goto_6
    :try_start_a
    invoke-interface {v2}, Ljava/io/Closeable;->close()V

    const-string v2, "1"

    invoke-static {v7, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-string v2, "\u0430"

    invoke-virtual {v1, v11, v2}, Lyc/p;->d(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "\u043a"

    invoke-virtual {v1, v11, v2}, Lyc/p;->d(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_7

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\u043f\u043e\u0440\u043e\u0436\u043d\u0456\u0439 \u043f\u0430\u043a\u0435\u0442"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    goto/16 :goto_c

    :cond_b
    :goto_7
    invoke-virtual {v1}, Lyc/p;->close()V

    iget-object v1, v0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    iget-object v2, v0, Lua/nav/geo/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lua/nav/geo/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, v0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    iget-object v3, v2, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    iget-object v4, v0, Lua/nav/geo/b;->p:Ljava/lang/String;

    monitor-enter v3

    :try_start_b
    iget-object v2, v2, Lua/nav/geo/c;->f:Ljava/util/HashMap;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lyc/p;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lyc/p;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_8

    :catchall_5
    move-exception v0

    goto :goto_a

    :cond_c
    :goto_8
    monitor-exit v3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_d

    goto :goto_9

    :cond_d
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u043c\u0456\u043d\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0438\u0439 \u043f\u0430\u043a\u0435\u0442"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    :goto_9
    iget-object v2, v0, Lua/nav/geo/b;->o:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, v0, Lua/nav/geo/b;->n:Lua/nav/geo/c;

    iget-object v2, v0, Lua/nav/geo/b;->p:Ljava/lang/String;

    new-instance v3, Ljava/io/File;

    iget-object v1, v1, Lua/nav/geo/c;->c:Ljava/io/File;

    const-string v4, ".json"

    invoke-static {v2, v4}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lgd/h;->c:Lia/r;

    sget-object v2, Lua/nav/geo/PackInfo;->Companion:Lua/nav/geo/PackInfo$Companion;

    invoke-virtual {v2}, Lua/nav/geo/PackInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v2

    check-cast v2, Lkotlinx/serialization/KSerializer;

    iget-object v0, v0, Lua/nav/geo/b;->l:Lua/nav/geo/PackInfo;

    invoke-virtual {v1, v2, v0}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u043f\u0430\u043a\u0435\u0442"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_a
    monitor-exit v3

    throw v0

    :cond_10
    :try_start_c
    new-instance v0, Ljava/io/IOException;

    const-string v2, "\u043d\u0435\u0432\u0456\u0434\u043e\u043c\u0430 \u0441\u0445\u0435\u043c\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :goto_b
    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception v0

    :try_start_e
    invoke-static {v2, v3}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_c
    :try_start_f
    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    :catchall_7
    move-exception v0

    invoke-static {v1, v2}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :catchall_8
    move-exception v0

    move-object v1, v0

    goto :goto_e

    :goto_d
    :try_start_10
    throw v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    :catchall_9
    move-exception v0

    :try_start_11
    invoke-static {v5, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    :goto_e
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_11
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :catchall_b
    move-exception v0

    move-object v1, v0

    goto :goto_10

    :goto_f
    :try_start_14
    throw v1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :catchall_c
    move-exception v0

    :try_start_15
    invoke-static {v4, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    :goto_10
    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_d

    :catchall_d
    move-exception v0

    :try_start_17
    invoke-static {v6, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0444\u0430\u0439\u043b \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    new-instance v0, Ljava/io/IOException;

    iget v3, v2, Lla/c0;->o:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    :goto_11
    :try_start_18
    throw v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    :catchall_e
    move-exception v0

    invoke-static {v2, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
