.class public final Lua/nav/routing/h;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:Ljava/io/File;

.field public final synthetic m:Ljava/io/File;

.field public final synthetic n:Lua/nav/routing/RoutingPackInfo;

.field public final synthetic o:Lj9/u;

.field public final synthetic p:Lua/nav/routing/i;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/io/File;Lua/nav/routing/RoutingPackInfo;Lj9/u;Lua/nav/routing/i;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lua/nav/routing/h;->l:Ljava/io/File;

    iput-object p2, p0, Lua/nav/routing/h;->m:Ljava/io/File;

    iput-object p3, p0, Lua/nav/routing/h;->n:Lua/nav/routing/RoutingPackInfo;

    iput-object p4, p0, Lua/nav/routing/h;->o:Lj9/u;

    iput-object p5, p0, Lua/nav/routing/h;->p:Lua/nav/routing/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    new-instance v0, Lua/nav/routing/h;

    iget-object v4, p0, Lua/nav/routing/h;->o:Lj9/u;

    iget-object v5, p0, Lua/nav/routing/h;->p:Lua/nav/routing/i;

    iget-object v1, p0, Lua/nav/routing/h;->l:Ljava/io/File;

    iget-object v2, p0, Lua/nav/routing/h;->m:Ljava/io/File;

    iget-object v3, p0, Lua/nav/routing/h;->n:Lua/nav/routing/RoutingPackInfo;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lua/nav/routing/h;-><init>(Ljava/io/File;Ljava/io/File;Lua/nav/routing/RoutingPackInfo;Lj9/u;Lua/nav/routing/i;Ly8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lua/nav/routing/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lua/nav/routing/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lua/nav/routing/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    const-string v1, "getName(...)"

    iget-object v2, v0, Lua/nav/routing/h;->n:Lua/nav/routing/RoutingPackInfo;

    iget-wide v3, v2, Lua/nav/routing/RoutingPackInfo;->g:J

    const-string v5, "HTTP "

    sget-object v6, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v6, v0, Lua/nav/routing/h;->l:Ljava/io/File;

    invoke-static {v6}, Lf9/j;->w(Ljava/io/File;)Z

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    iget-object v7, v0, Lua/nav/routing/h;->m:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    const-wide/16 v13, 0x1

    cmp-long v8, v13, v11

    if-gtz v8, :cond_0

    cmp-long v8, v11, v3

    if-gez v8, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v11

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    const-wide/16 v11, 0x0

    :goto_0
    cmp-long v8, v11, v3

    iget-object v14, v0, Lua/nav/routing/h;->o:Lj9/u;

    const/4 v15, 0x1

    const-wide/16 v16, 0x0

    iget-object v0, v0, Lua/nav/routing/h;->p:Lua/nav/routing/i;

    if-gez v8, :cond_8

    iput-boolean v15, v14, Lj9/u;->l:Z

    sget-object v8, Lgd/h;->b:Lla/v;

    invoke-virtual {v8}, Lla/v;->a()Lla/u;

    move-result-object v8

    sget-object v18, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x3c

    invoke-virtual {v8, v9, v10}, Lla/u;->a(J)V

    new-instance v9, Lla/v;

    invoke-direct {v9, v8}, Lla/v;-><init>(Lla/u;)V

    new-instance v8, Landroidx/lifecycle/a1;

    const/4 v10, 0x5

    invoke-direct {v8, v10}, Landroidx/lifecycle/a1;-><init>(I)V

    iget-object v10, v2, Lua/nav/routing/RoutingPackInfo;->e:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroidx/lifecycle/a1;->G(Ljava/lang/String;)V

    cmp-long v10, v11, v16

    move/from16 v18, v15

    if-lez v10, :cond_1

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v13, "bytes="

    invoke-direct {v15, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, "-"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v15, "Range"

    invoke-virtual {v8, v15, v13}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v13, Lg7/c;

    invoke-direct {v13, v8}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    new-instance v8, Lpa/p;

    invoke-direct {v8, v9, v13}, Lpa/p;-><init>(Lla/v;Lg7/c;)V

    invoke-virtual {v8}, Lpa/p;->i()Lla/c0;

    move-result-object v8

    iget v9, v8, Lla/c0;->o:I

    const/16 v13, 0x1a0

    if-eq v9, v13, :cond_7

    :try_start_0
    iget-boolean v13, v8, Lla/c0;->z:Z

    if-eqz v13, :cond_6

    const/16 v5, 0xce

    if-ne v9, v5, :cond_2

    if-lez v10, :cond_2

    move/from16 v5, v18

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-nez v5, :cond_3

    move-wide/from16 v11, v16

    :cond_3
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, v8, Lla/c0;->r:Lla/e0;

    invoke-virtual {v5}, Lla/e0;->e()Lbb/i;

    move-result-object v5

    invoke-interface {v5}, Lbb/i;->Q()Ljava/io/InputStream;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/high16 v10, 0x20000

    :try_start_2
    new-array v13, v10, [B

    :goto_2
    invoke-virtual {v5, v13}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_5

    const/4 v15, 0x0

    invoke-virtual {v9, v13, v15, v10}, Ljava/io/FileOutputStream;->write([BII)V

    move-wide/from16 v20, v3

    int-to-long v3, v10

    add-long/2addr v11, v3

    const-wide/32 v3, 0x38400000

    cmp-long v3, v11, v3

    if-gtz v3, :cond_4

    iget-object v3, v0, Lua/nav/routing/i;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v22, v4

    check-cast v22, Lid/e1;

    const/16 v4, 0x46

    move-wide/from16 v30, v11

    int-to-long v10, v4

    mul-long v11, v30, v10

    div-long v11, v11, v20

    long-to-int v10, v11

    const/4 v15, 0x0

    invoke-static {v10, v15, v4}, Lg6/c1;->f(III)I

    move-result v26

    const/16 v28, 0x0

    const/16 v29, 0x37

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    invoke-static/range {v22 .. v29}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-wide/from16 v3, v20

    move-wide/from16 v11, v30

    goto :goto_2

    :goto_3
    move-object v1, v0

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0444\u0430\u0439\u043b \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    move-wide/from16 v20, v3

    :try_start_3
    invoke-interface {v5}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v8}, Lla/c0;->close()V

    :goto_4
    const/4 v15, 0x0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object v1, v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_6

    :goto_5
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_6
    invoke-static {v5, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_6
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_8
    invoke-static {v9, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0441\u0435\u0440\u0432\u0435\u0440 \u0432\u0456\u0434\u0445\u0438\u043b\u0438\u0432 \u0434\u043e\u043a\u0430\u0447\u0443\u0432\u0430\u043d\u043d\u044f, \u0441\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0449\u0435 \u0440\u0430\u0437"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_7
    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v8, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_8
    move-wide/from16 v20, v3

    move/from16 v18, v15

    goto :goto_4

    :goto_8
    iput-boolean v15, v14, Lj9/u;->l:Z

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v20

    if-eqz v3, :cond_a

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v0, v0, v20

    if-gez v0, :cond_9

    move/from16 v15, v18

    goto :goto_9

    :cond_9
    const/4 v15, 0x0

    :goto_9
    iput-boolean v15, v14, Lj9/u;->l:Z

    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v1

    const v3, 0xf4240

    int-to-long v3, v3

    div-long/2addr v1, v3

    div-long v3, v20, v3

    const-string v5, "\u0444\u0430\u0439\u043b \u043d\u0435\u043f\u043e\u0432\u043d\u0438\u0439: "

    const-string v6, " \u0456\u0437 "

    invoke-static {v5, v1, v2, v6}, La6/q;->o(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u041c\u0411"

    invoke-static {v3, v4, v2, v1}, La6/q;->h(JLjava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v3, v0, Lua/nav/routing/i;->h:Lx9/l0;

    iget-object v4, v0, Lua/nav/routing/i;->c:Lid/e;

    iget-object v5, v0, Lua/nav/routing/i;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v20, v8

    check-cast v20, Lid/e1;

    const/16 v26, 0x0

    const/16 v27, 0x27

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x47

    const-string v25, "\u041f\u0435\u0440\u0435\u0432\u0456\u0440\u043a\u0430"

    invoke-static/range {v20 .. v27}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v3, v10, v8}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    const-string v3, "SHA-256"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/high16 v9, 0x100000

    :try_start_a
    new-array v9, v9, [B

    :goto_a
    invoke-virtual {v8, v9}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    if-ltz v10, :cond_b

    const/4 v15, 0x0

    invoke-virtual {v3, v9, v15, v10}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v1, v0

    goto/16 :goto_15

    :cond_b
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const-string v8, "digest(...)"

    invoke-static {v3, v8}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    array-length v10, v3

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_b
    if-ge v11, v10, :cond_d

    aget-byte v13, v3, v11

    add-int/lit8 v12, v12, 0x1

    move/from16 v14, v18

    if-le v12, v14, :cond_c

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_c
    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    filled-new-array {v13}, [Ljava/lang/Object;

    move-result-object v13

    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v13

    const-string v15, "%02x"

    invoke-static {v15, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    add-int/lit8 v11, v11, 0x1

    move/from16 v18, v14

    goto :goto_b

    :cond_d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v8, v2, Lua/nav/routing/RoutingPackInfo;->f:Ljava/lang/String;

    invoke-static {v3, v8}, Lr9/r;->L(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v8, v3

    check-cast v8, Lid/e1;

    const/4 v14, 0x0

    const/16 v15, 0x27

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x48

    const-string v13, "\u0420\u043e\u0437\u043f\u0430\u043a\u0443\u0432\u0430\u043d\u043d\u044f"

    invoke-static/range {v8 .. v15}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-virtual {v5, v10, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/zip/ZipInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v9, Ljava/io/BufferedInputStream;

    const/16 v10, 0x2000

    invoke-direct {v9, v8, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {v3, v9}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    move-wide/from16 v9, v16

    :cond_e
    :goto_c
    :try_start_b
    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-nez v8, :cond_17

    invoke-virtual {v3}, Ljava/util/zip/ZipInputStream;->close()V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/io/File;

    const-string v3, "properties.txt"

    invoke-direct {v1, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v1}, Lf9/j;->y(Ljava/io/File;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    :cond_f
    if-ge v5, v3, :cond_16

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Ljava/lang/String;

    iget-boolean v8, v0, Lua/nav/routing/i;->d:Z

    if-eqz v8, :cond_10

    const-string v8, "profiles=truck|"

    :goto_d
    const/4 v15, 0x0

    goto :goto_e

    :cond_10
    const-string v8, "profiles=car|"

    goto :goto_d

    :goto_e
    invoke-static {v7, v8, v15}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_f

    const-string v1, "geometry"

    const-string v3, "location_index"

    const-string v5, "edges"

    const-string v7, "nodes"

    filled-new-array {v5, v7, v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_f

    :cond_11
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435\u043c\u0430\u0454 \u0444\u0430\u0439\u043b\u0430 "

    invoke-static {v1, v3}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    invoke-virtual {v4}, Lid/e;->a()V

    iget-object v1, v4, Lid/e;->b:Lb0/q0;

    invoke-virtual {v1}, Lb0/q0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-static {v1}, Lf9/j;->w(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_10

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0430\u043c\u0456\u043d\u0438\u0442\u0438 \u0441\u0442\u0430\u0440\u0438\u0439 \u0433\u0440\u0430\u0444"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_10
    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, v0, Lua/nav/routing/i;->g:Ljava/io/File;

    sget-object v1, Lgd/h;->c:Lia/r;

    sget-object v3, Lua/nav/routing/RoutingPackInfo;->Companion:Lua/nav/routing/RoutingPackInfo$Companion;

    invoke-virtual {v3}, Lua/nav/routing/RoutingPackInfo$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-virtual {v1, v3, v2}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lf9/j;->B(Ljava/io/File;Ljava/lang/String;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :cond_15
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u0431\u0435\u0440\u0435\u0433\u0442\u0438 \u0433\u0440\u0430\u0444"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043d\u0435\u0432\u0456\u0434\u043e\u043c\u0438\u0439 \u0444\u043e\u0440\u043c\u0430\u0442 \u0433\u0440\u0430\u0444\u0430"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :try_start_c
    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v11

    if-nez v11, :cond_e

    sget-object v11, Lua/nav/routing/i;->Companion:Lid/f1;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v11, Lua/nav/routing/i;->l:Lr9/i;

    invoke-virtual {v11, v12}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1a

    new-instance v11, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/io/File;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v12, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    const/high16 v8, 0x20000

    :try_start_d
    new-array v12, v8, [B

    :goto_11
    invoke-virtual {v3, v12}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-ltz v13, :cond_19

    int-to-long v14, v13

    add-long/2addr v9, v14

    const-wide/32 v14, 0x5dc00000

    cmp-long v14, v9, v14

    if-gtz v14, :cond_18

    const/4 v15, 0x0

    invoke-virtual {v11, v12, v15, v13}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_11

    :catchall_7
    move-exception v0

    move-object v1, v0

    goto :goto_13

    :cond_18
    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u0433\u0440\u0430\u0444 \u0437\u0430\u0432\u0435\u043b\u0438\u043a\u0438\u0439"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :cond_19
    const/4 v15, 0x0

    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v5}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v16, v11

    check-cast v16, Lid/e1;

    const/16 v11, 0x48

    int-to-long v12, v11

    const/16 v14, 0x1a

    move-wide/from16 v24, v9

    int-to-long v8, v14

    mul-long v9, v24, v8

    move-wide/from16 v17, v12

    iget-wide v11, v2, Lua/nav/routing/RoutingPackInfo;->h:J

    div-long/2addr v9, v11

    add-long v12, v17, v9

    long-to-int v8, v12

    const/16 v9, 0x62

    const/16 v10, 0x48

    invoke-static {v8, v10, v9}, Lg6/c1;->f(III)I

    move-result v20

    const/16 v22, 0x0

    const/16 v23, 0x37

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v23}, Lid/e1;->a(Lid/e1;Lua/nav/routing/RoutingPackInfo;Ljava/util/ArrayList;ZILjava/lang/String;Ljava/lang/String;I)Lid/e1;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v11, 0x0

    invoke-virtual {v5, v11, v8}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    move-wide/from16 v9, v24

    goto/16 :goto_c

    :goto_12
    move-object v1, v0

    goto :goto_14

    :catchall_8
    move-exception v0

    goto :goto_12

    :goto_13
    :try_start_f
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception v0

    :try_start_10
    invoke-static {v11, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {v8}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x28

    invoke-static {v1, v2}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u043d\u0435\u0441\u043f\u043e\u0434\u0456\u0432\u0430\u043d\u0438\u0439 \u0444\u0430\u0439\u043b \u0432 \u0430\u0440\u0445\u0456\u0432\u0456: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :goto_14
    :try_start_11
    throw v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    :catchall_a
    move-exception v0

    invoke-static {v3, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    :cond_1b
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "\u043a\u043e\u043d\u0442\u0440\u043e\u043b\u044c\u043d\u0430 \u0441\u0443\u043c\u0430 \u043d\u0435 \u0437\u0431\u0456\u0433\u0430\u0454\u0442\u044c\u0441\u044f"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_15
    :try_start_12
    throw v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    :catchall_b
    move-exception v0

    invoke-static {v8, v1}, Lpc/h;->i(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
.end method
