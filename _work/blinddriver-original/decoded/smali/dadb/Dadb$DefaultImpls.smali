.class public final Ldadb/Dadb$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldadb/Dadb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static varargs abbExec(Ldadb/Dadb;[Ljava/lang/String;)Ldadb/AdbStream;
    .locals 2

    const-string v0, "command"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abb_exec"

    invoke-interface {p0, v0}, Ldadb/Dadb;->supportsFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u0000"

    const/16 v1, 0x3e

    invoke-static {v1, v0, p1}, Lu8/l;->y0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "abb_exec:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ldadb/Dadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "abb_exec is not supported on this version of Android"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs execCmd(Ldadb/Dadb;[Ljava/lang/String;)Ldadb/AdbStream;
    .locals 7

    const-string v0, "command"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmd"

    invoke-interface {p0, v0}, Ldadb/Dadb;->supportsFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "exec:cmd"

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1, p1}, Lu8/m;->W(Ljava/util/AbstractList;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    const/16 v6, 0x3e

    const-string v2, " "

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lu8/m;->k0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Li9/c;I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ldadb/Dadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "cmd is not supported on this version of Android"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static varargs install(Ldadb/Dadb;Lbb/u;J[Ljava/lang/String;)V
    .locals 6

    const-string v0, "Install failed: "

    const-string v1, "source"

    invoke-static {p1, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "options"

    invoke-static {p4, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    const-string v1, "cmd"

    invoke-interface {p0, v1}, Ldadb/Dadb;->supportsFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 5
    new-instance v1, Lc5/o;

    const/4 v4, 0x5

    invoke-direct {v1, v4}, Lc5/o;-><init>(I)V

    iget-object v4, v1, Lc5/o;->m:Ljava/util/ArrayList;

    const-string v5, "package"

    invoke-virtual {v1, v5}, Lc5/o;->b(Ljava/lang/Object;)V

    const-string v5, "install"

    invoke-virtual {v1, v5}, Lc5/o;->b(Ljava/lang/Object;)V

    const-string v5, "-S"

    invoke-virtual {v1, v5}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v1, p4}, Lc5/o;->f(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 7
    new-array p2, p2, [Ljava/lang/String;

    .line 8
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    .line 9
    check-cast p2, [Ljava/lang/String;

    invoke-interface {p0, p2}, Ldadb/Dadb;->execCmd([Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    .line 10
    :try_start_0
    invoke-interface {p0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p2

    invoke-interface {p2, p1}, Lbb/h;->g(Lbb/u;)J

    .line 11
    invoke-interface {p0}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object p1

    invoke-interface {p1}, Lbb/h;->flush()V

    .line 12
    invoke-interface {p0}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object p1

    sget-object p2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-interface {p1, p2}, Lbb/i;->x(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    .line 13
    const-string p2, "Success"

    .line 14
    invoke-static {p1, p2, v2}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 15
    invoke-static {p0, v3}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    .line 16
    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/IOException;

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    new-array p2, v2, [Ljava/nio/file/attribute/FileAttribute;

    .line 18
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v3, v3, p2}, Ljava/nio/file/Files;->createTempFile(Ljava/lang/String;Ljava/lang/String;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    move-result-object p2

    const-string p3, "createTempFile(...)"

    invoke-static {p2, p3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-array p3, v2, [Ljava/nio/file/OpenOption;

    .line 20
    invoke-static {p3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/nio/file/OpenOption;

    invoke-static {p2, p3}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object p3

    const-string v0, "newOutputStream(...)"

    invoke-static {p3, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lbb/c;

    new-instance v1, Lbb/w;

    .line 22
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 23
    invoke-direct {v0, v2, p3, v1}, Lbb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 24
    invoke-static {v0}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object p3

    .line 25
    invoke-virtual {p3, p1}, Lbb/o;->g(Lbb/u;)J

    .line 26
    invoke-virtual {p3}, Lbb/o;->flush()V

    .line 27
    invoke-interface {p2}, Ljava/nio/file/Path;->toFile()Ljava/io/File;

    move-result-object p1

    const-string p2, "toFile(...)"

    invoke-static {p1, p2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    array-length p2, p4

    invoke-static {p4, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->pmInstall(Ldadb/Dadb;Ljava/io/File;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs install(Ldadb/Dadb;Ljava/io/File;[Ljava/lang/String;)V
    .locals 3

    const-string v0, "file"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v0, "cmd"

    invoke-interface {p0, v0}, Ldadb/Dadb;->supportsFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Lpc/h;->x(Ljava/io/File;)Lbb/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-interface {p0, v0, v1, v2, p1}, Ldadb/Dadb;->install(Lbb/u;J[Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    invoke-static {p0, p1, p2}, Ldadb/Dadb$DefaultImpls;->pmInstall(Ldadb/Dadb;Ljava/io/File;[Ljava/lang/String;)V

    return-void
.end method

.method public static varargs installMultiple(Ldadb/Dadb;Ljava/util/List;[Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldadb/Dadb;",
            "Ljava/util/List<",
            "+",
            "Ljava/io/File;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "apks"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "options"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "cmd"

    invoke-interface {v1, v3}, Ldadb/Dadb;->supportsFeature(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "failed to create session"

    const-string v9, "Install failed: "

    const-string v10, "failed to finalize session: "

    const-string v5, "matcher(...)"

    const-string v6, "compile(...)"

    const-string v7, "\\[(\\w+)]"

    const-string v8, "Empty collection can\'t be reduced."

    const/16 v12, 0xa

    const-string v13, "Success"

    const/4 v14, 0x0

    if-eqz v3, :cond_a

    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    add-long v19, v19, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_1

    :cond_1
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v15

    new-instance v3, Lc5/o;

    const/4 v8, 0x5

    invoke-direct {v3, v8}, Lc5/o;-><init>(I)V

    iget-object v8, v3, Lc5/o;->m:Ljava/util/ArrayList;

    const-string v12, "package"

    invoke-virtual {v3, v12}, Lc5/o;->b(Ljava/lang/Object;)V

    const-string v11, "install-create"

    invoke-virtual {v3, v11}, Lc5/o;->b(Ljava/lang/Object;)V

    const-string v11, "-S"

    invoke-virtual {v3, v11}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Lc5/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ldadb/Dadb;->execCmd([Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v8

    sget-object v15, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-interface {v8, v15}, Lbb/i;->x(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v13, v14}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    invoke-static {v7, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-static {v6, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v14, v8}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v5, v5, Lr9/g;->c:Lr9/f;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lr9/f;->b(I)Lr9/d;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v4, v5, Lr9/d;->a:Ljava/lang/String;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    new-instance v7, Lc5/o;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Lc5/o;-><init>(I)V

    iget-object v8, v7, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v12}, Lc5/o;->b(Ljava/lang/Object;)V

    const-string v15, "install-write"

    invoke-virtual {v7, v15}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v7, v11}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v7, v4}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v14, "getName(...)"

    invoke-static {v15, v14}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v15}, Lc5/o;->b(Ljava/lang/Object;)V

    const-string v14, "-"

    invoke-virtual {v7, v14}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v7, v2}, Lc5/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    invoke-interface {v1, v7}, Ldadb/Dadb;->execCmd([Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v7}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object v8

    invoke-static {v6}, Lpc/h;->x(Ljava/io/File;)Lbb/d;

    move-result-object v6

    invoke-interface {v8, v6}, Lbb/h;->g(Lbb/u;)J

    invoke-interface {v7}, Ldadb/AdbStream;->getSink()Lbb/h;

    move-result-object v6

    invoke-interface {v6}, Lbb/h;->flush()V

    invoke-interface {v7}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v6

    sget-object v8, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-interface {v6, v8}, Lbb/i;->x(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v13, v8}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v14, :cond_2

    const/4 v8, 0x0

    :try_start_2
    invoke-static {v7, v8}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    move-object v5, v6

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_5

    :cond_2
    const/4 v8, 0x0

    invoke-static {v7, v8}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    const/4 v14, 0x0

    goto/16 :goto_2

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {v7, v1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_3
    if-nez v5, :cond_4

    const-string v0, "install-commit"

    goto :goto_4

    :cond_4
    const-string v0, "install-abandon"

    :goto_4
    new-instance v6, Lc5/o;

    const/4 v7, 0x4

    invoke-direct {v6, v7}, Lc5/o;-><init>(I)V

    iget-object v7, v6, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {v6, v12}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v4}, Lc5/o;->b(Ljava/lang/Object;)V

    invoke-virtual {v6, v2}, Lc5/o;->f(Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {v1, v0}, Ldadb/Dadb;->execCmd([Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface {v1}, Ldadb/AdbStream;->getSource()Lbb/i;

    move-result-object v0

    sget-object v2, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-interface {v0, v2}, Lbb/i;->x(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x0

    invoke-static {v0, v13, v8}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_6

    const/4 v8, 0x0

    :try_start_6
    invoke-static {v1, v8}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v5, :cond_5

    invoke-static {v3, v8}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :try_start_7
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_6
    :try_start_8
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_9
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    :try_start_a
    invoke-static {v1, v2}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect error for create: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_5
    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    invoke-static {v3, v1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v11

    invoke-direct {v3, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v19

    add-long v19, v19, v14

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    goto :goto_7

    :cond_c
    check-cast v8, Ljava/lang/Number;

    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v14

    const/16 v3, 0x3e

    const-string v11, " "

    invoke-static {v3, v11, v2}, Lu8/l;->y0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "pm install-create -S "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object v2

    invoke-virtual {v2}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v13, v8}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-static {v3, v6}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object v2

    const-string v6, "input"

    invoke-static {v2, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-static {v3, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v8, v2}, Ly4/s;->b(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lr9/g;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v2, v2, Lr9/g;->c:Lr9/f;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lr9/f;->b(I)Lr9/d;

    move-result-object v2

    if-eqz v2, :cond_15

    iget-object v14, v2, Lr9/d;->a:Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_d
    new-instance v3, Ljava/util/ArrayList;

    invoke-static {v2, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_e

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/data/local/tmp/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_e
    invoke-static {v0, v3}, Lu8/m;->G0(Ljava/util/List;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v15, :cond_11

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v17, v3, 0x1

    add-int/lit8 v19, v2, 0x1

    if-ltz v2, :cond_10

    check-cast v4, Lt8/j;

    iget-object v3, v4, Lt8/j;->l:Ljava/lang/Object;

    check-cast v3, Ljava/io/File;

    iget-object v4, v4, Lt8/j;->m:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0xc

    const/4 v8, 0x0

    move v5, v2

    move-object v2, v3

    move-object v3, v4

    const/4 v4, 0x0

    move/from16 v20, v5

    const-wide/16 v5, 0x0

    move-object/from16 p1, v12

    move/from16 v12, v20

    :try_start_c
    invoke-static/range {v1 .. v8}, Ldadb/Dadb$DefaultImpls;->push$default(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;IJILjava/lang/Object;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "pm install-write -S "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object v2

    invoke-virtual {v2}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    invoke-static {v3, v13, v8}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_f

    invoke-virtual {v2}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :cond_f
    :goto_b
    move-object/from16 v12, p1

    move/from16 v3, v17

    move/from16 v2, v19

    goto :goto_a

    :cond_10
    invoke-static {}, Lg5/f;->P()V

    const/16 v18, 0x0

    throw v18

    :cond_11
    if-nez v0, :cond_12

    const-string v2, "pm install-commit "

    :goto_c
    invoke-virtual {v2, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_12
    const-string v2, "pm install-abandon "

    goto :goto_c

    :goto_d
    invoke-interface {v1, v2}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object v1

    invoke-virtual {v1}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-static {v2, v13, v8}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "pm create session failed: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openShell(Ldadb/Dadb;Ljava/lang/String;)Ldadb/AdbShellStream;
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shell,v2,raw:"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ldadb/Dadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    new-instance p1, Ldadb/AdbShellStream;

    invoke-direct {p1, p0}, Ldadb/AdbShellStream;-><init>(Ldadb/AdbStream;)V

    return-object p1
.end method

.method public static synthetic openShell$default(Ldadb/Dadb;Ljava/lang/String;ILjava/lang/Object;)Ldadb/AdbShellStream;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, ""

    :cond_0
    invoke-interface {p0, p1}, Ldadb/Dadb;->openShell(Ljava/lang/String;)Ldadb/AdbShellStream;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: openShell"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static openSync(Ldadb/Dadb;)Ldadb/AdbSyncStream;
    .locals 1

    const-string v0, "sync:"

    invoke-interface {p0, v0}, Ldadb/Dadb;->open(Ljava/lang/String;)Ldadb/AdbStream;

    move-result-object p0

    new-instance v0, Ldadb/AdbSyncStream;

    invoke-direct {v0, p0}, Ldadb/AdbSyncStream;-><init>(Ldadb/AdbStream;)V

    return-object v0
.end method

.method private static varargs pmInstall(Ldadb/Dadb;Ljava/io/File;[Ljava/lang/String;)V
    .locals 10

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/data/local/tmp/"

    invoke-static {v1, v0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v8, 0xc

    const/4 v9, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v9}, Ldadb/Dadb$DefaultImpls;->push$default(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;IJILjava/lang/Object;)V

    const-string p0, " "

    const/16 p1, 0x3e

    invoke-static {p1, p0, p2}, Lu8/l;->y0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, " \""

    const-string p2, "\""

    const-string v0, "pm install "

    invoke-static {v0, p0, p1, v4, p2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v2, p0}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    return-void
.end method

.method public static pull(Ldadb/Dadb;Lbb/t;Ljava/lang/String;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ldadb/Dadb;->openSync()Ldadb/AdbSyncStream;

    move-result-object p0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ldadb/AdbSyncStream;->recv(Lbb/t;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 3
    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static pull(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;)V
    .locals 3

    const-string v0, "dst"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 5
    new-instance p1, Lbb/c;

    new-instance v1, Lbb/w;

    .line 6
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 7
    invoke-direct {p1, v2, v0, v1}, Lbb/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-interface {p0, p1, p2}, Ldadb/Dadb;->pull(Lbb/t;Ljava/lang/String;)V

    return-void
.end method

.method public static push(Ldadb/Dadb;Lbb/u;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {p0}, Ldadb/Dadb;->openSync()Ldadb/AdbSyncStream;

    move-result-object p0

    .line 3
    :try_start_0
    invoke-virtual/range {p0 .. p5}, Ldadb/AdbSyncStream;->send(Lbb/u;Ljava/lang/String;IJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 4
    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object p2, v0

    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static push(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;IJ)V
    .locals 1

    const-string v0, "src"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remotePath"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lpc/h;->x(Ljava/io/File;)Lbb/d;

    move-result-object p1

    invoke-interface/range {p0 .. p5}, Ldadb/Dadb;->push(Lbb/u;Ljava/lang/String;IJ)V

    return-void
.end method

.method public static synthetic push$default(Ldadb/Dadb;Ljava/io/File;Ljava/lang/String;IJILjava/lang/Object;)V
    .locals 6

    if-nez p7, :cond_2

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    sget-object p3, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    invoke-static {p3, p1}, Ldadb/Dadb$Companion;->access$readMode(Ldadb/Dadb$Companion;Ljava/io/File;)I

    move-result p3

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x8

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide p4

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Ldadb/Dadb;->push(Ljava/io/File;Ljava/lang/String;IJ)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: push"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static root(Ldadb/Dadb;)V
    .locals 4

    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    const-string v1, "root:"

    invoke-static {v0, p0, v1}, Ldadb/Dadb$Companion;->access$restartAdb(Ldadb/Dadb$Companion;Ldadb/Dadb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "restarting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "already"

    invoke-static {v1, v2, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to restart adb as root: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Ldadb/Dadb$Companion;->access$waitRootOrClose(Ldadb/Dadb$Companion;Ldadb/Dadb;Z)V

    return-void
.end method

.method public static shell(Ldadb/Dadb;Ljava/lang/String;)Ldadb/AdbShellResponse;
    .locals 1

    const-string v0, "command"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Ldadb/Dadb;->openShell(Ljava/lang/String;)Ldadb/AdbShellStream;

    move-result-object p0

    :try_start_0
    invoke-virtual {p0}, Ldadb/AdbShellStream;->readAll()Ldadb/AdbShellResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Lwa/h;->l(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static tcpForward(Ldadb/Dadb;II)Ljava/lang/AutoCloseable;
    .locals 1

    new-instance v0, Ldadb/forwarding/TcpForwarder;

    invoke-direct {v0, p0, p1, p2}, Ldadb/forwarding/TcpForwarder;-><init>(Ldadb/Dadb;II)V

    invoke-virtual {v0}, Ldadb/forwarding/TcpForwarder;->start()V

    return-object v0
.end method

.method public static uninstall(Ldadb/Dadb;Ljava/lang/String;)V
    .locals 1

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cmd package uninstall "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ldadb/Dadb;->shell(Ljava/lang/String;)Ldadb/AdbShellResponse;

    move-result-object p0

    invoke-virtual {p0}, Ldadb/AdbShellResponse;->getExitCode()I

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ldadb/AdbShellResponse;->getAllOutput()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Uninstall failed: "

    invoke-static {v0, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static unroot(Ldadb/Dadb;)V
    .locals 4

    sget-object v0, Ldadb/Dadb;->Companion:Ldadb/Dadb$Companion;

    const-string v1, "unroot:"

    invoke-static {v0, p0, v1}, Ldadb/Dadb$Companion;->access$restartAdb(Ldadb/Dadb$Companion;Ldadb/Dadb;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "restarting"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "not running as root"

    invoke-static {v1, v2, v3}, Lr9/k;->W(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Failed to restart adb as root: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {v0, p0, v3}, Ldadb/Dadb$Companion;->access$waitRootOrClose(Ldadb/Dadb$Companion;Ldadb/Dadb;Z)V

    return-void
.end method
