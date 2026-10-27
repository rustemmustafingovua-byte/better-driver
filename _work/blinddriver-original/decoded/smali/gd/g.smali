.class public final Lgd/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lla/s;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgd/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lqa/f;)Lla/c0;
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v0, v0, Lgd/g;->a:I

    const-string v2, "Content-Type"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    const-string v6, "Connection"

    const-string v7, "close"

    iget-object v8, v1, Lqa/f;->d:Lk4/h;

    invoke-static {v8}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v8, Lk4/h;->b:Ljava/lang/Object;

    check-cast v0, Lpa/p;

    iget-object v9, v8, Lk4/h;->d:Ljava/lang/Object;

    check-cast v9, Lqa/d;

    iget-object v1, v1, Lqa/f;->e:Lg7/c;

    iget-object v10, v1, Lg7/c;->e:Ljava/lang/Object;

    check-cast v10, Lla/a0;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    :try_start_0
    invoke-interface {v9, v1}, Lqa/d;->g(Lg7/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    iget-object v13, v1, Lg7/c;->b:Ljava/lang/String;

    invoke-static {v13}, Ll9/a;->t(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    if-eqz v10, :cond_3

    const-string v13, "100-continue"

    const-string v14, "Expect"

    iget-object v15, v1, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast v15, Lla/p;

    invoke-virtual {v15, v14}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v13, :cond_0

    :try_start_2
    invoke-interface {v9}, Lqa/d;->h()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v8, v4}, Lk4/h;->d(Z)Lla/b0;

    move-result-object v13

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v13, v3

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v8, v0}, Lk4/h;->e(Ljava/io/IOException;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_0
    move-object v13, v3

    :goto_0
    if-nez v13, :cond_1

    :try_start_4
    invoke-static {v10}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v10}, Lla/a0;->a()J

    move-result-wide v14

    invoke-interface {v9, v1, v14, v15}, Lqa/d;->e(Lg7/c;J)Lbb/t;

    move-result-object v0

    new-instance v4, Lpa/f;

    invoke-direct {v4, v8, v0, v14, v15}, Lpa/f;-><init>(Lk4/h;Lbb/t;J)V

    invoke-static {v4}, Lpc/h;->e(Lbb/t;)Lbb/o;

    move-result-object v0

    invoke-virtual {v10, v0}, Lla/a0;->c(Lbb/o;)V

    invoke-virtual {v0}, Lbb/o;->close()V

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :cond_1
    invoke-virtual {v0, v8, v4, v5, v3}, Lpa/p;->o(Lk4/h;ZZLjava/io/IOException;)Ljava/io/IOException;

    invoke-virtual {v8}, Lk4/h;->b()Lpa/q;

    move-result-object v0

    iget-object v0, v0, Lpa/q;->l:Lsa/p;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    if-nez v4, :cond_4

    invoke-interface {v9}, Lqa/d;->i()Lqa/c;

    move-result-object v0

    invoke-interface {v0}, Lqa/c;->e()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :cond_3
    :try_start_5
    invoke-virtual {v0, v8, v4, v5, v3}, Lpa/p;->o(Lk4/h;ZZLjava/io/IOException;)Ljava/io/IOException;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-object v13, v3

    :cond_4
    :goto_2
    :try_start_6
    invoke-interface {v9}, Lqa/d;->a()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    move-object v4, v3

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_7
    invoke-virtual {v8, v0}, Lk4/h;->e(Ljava/io/IOException;)V

    throw v0
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v8, v0}, Lk4/h;->e(Ljava/io/IOException;)V

    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    instance-of v4, v0, Lsa/a;

    if-nez v4, :cond_11

    iget-boolean v4, v8, Lk4/h;->a:Z

    if-eqz v4, :cond_10

    move-object v4, v0

    :goto_4
    if-nez v13, :cond_5

    :try_start_9
    invoke-virtual {v8, v5}, Lk4/h;->d(Z)Lla/b0;

    move-result-object v13

    invoke-static {v13}, Lj9/n;->d(Ljava/lang/Object;)V

    goto :goto_5

    :catch_5
    move-exception v0

    goto/16 :goto_9

    :cond_5
    :goto_5
    iput-object v1, v13, Lla/b0;->a:Lg7/c;

    invoke-virtual {v8}, Lk4/h;->b()Lpa/q;

    move-result-object v0

    iget-object v0, v0, Lpa/q;->g:Lla/o;

    iput-object v0, v13, Lla/b0;->e:Lla/o;

    iput-wide v11, v13, Lla/b0;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v13, Lla/b0;->l:J

    invoke-virtual {v13}, Lla/b0;->a()Lla/c0;

    move-result-object v0

    iget v10, v0, Lla/c0;->o:I

    :goto_6
    const/16 v13, 0x64

    if-ne v10, v13, :cond_6

    goto :goto_7

    :cond_6
    const/16 v13, 0x66

    if-gt v13, v10, :cond_7

    const/16 v13, 0xc8

    if-ge v10, v13, :cond_7

    :goto_7
    invoke-virtual {v8, v5}, Lk4/h;->d(Z)Lla/b0;

    move-result-object v0

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    iput-object v1, v0, Lla/b0;->a:Lg7/c;

    invoke-virtual {v8}, Lk4/h;->b()Lpa/q;

    move-result-object v10

    iget-object v10, v10, Lpa/q;->g:Lla/o;

    iput-object v10, v0, Lla/b0;->e:Lla/o;

    iput-wide v11, v0, Lla/b0;->k:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v0, Lla/b0;->l:J

    invoke-virtual {v0}, Lla/b0;->a()Lla/c0;

    move-result-object v0

    iget v10, v0, Lla/c0;->o:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_6

    :cond_7
    :try_start_a
    iget-object v1, v0, Lla/c0;->q:Lla/p;

    invoke-virtual {v1, v2}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    move-object v1, v3

    :cond_8
    invoke-interface {v9, v0}, Lqa/d;->c(Lla/c0;)J

    move-result-wide v11

    invoke-interface {v9, v0}, Lqa/d;->d(Lla/c0;)Lbb/u;

    move-result-object v2

    new-instance v5, Lpa/g;

    invoke-direct {v5, v8, v2, v11, v12}, Lpa/g;-><init>(Lk4/h;Lbb/u;J)V

    new-instance v2, Lqa/g;

    new-instance v13, Lbb/p;

    invoke-direct {v13, v5}, Lbb/p;-><init>(Lbb/u;)V

    invoke-direct {v2, v1, v11, v12, v13}, Lqa/g;-><init>(Ljava/lang/String;JLbb/p;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :try_start_b
    invoke-virtual {v0}, Lla/c0;->b()Lla/b0;

    move-result-object v0

    iput-object v2, v0, Lla/b0;->g:Lla/e0;

    new-instance v1, Lmb/q;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lmb/q;-><init>(I)V

    iput-object v1, v0, Lla/b0;->n:Lla/h0;

    invoke-virtual {v0}, Lla/b0;->a()Lla/c0;

    move-result-object v0

    iget-object v1, v0, Lla/c0;->l:Lg7/c;

    iget-object v1, v1, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast v1, Lla/p;

    invoke-virtual {v1, v6}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, v0, Lla/c0;->q:Lla/p;

    invoke-virtual {v1, v6}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    goto :goto_8

    :cond_9
    move-object v3, v1

    :goto_8
    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    :cond_a
    invoke-interface {v9}, Lqa/d;->i()Lqa/c;

    move-result-object v1

    invoke-interface {v1}, Lqa/c;->e()V

    :cond_b
    const/16 v1, 0xcc

    if-eq v10, v1, :cond_c

    const/16 v1, 0xcd

    if-ne v10, v1, :cond_d

    :cond_c
    iget-object v1, v0, Lla/c0;->r:Lla/e0;

    invoke-virtual {v1}, Lla/e0;->c()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-gtz v1, :cond_e

    :cond_d
    return-object v0

    :cond_e
    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HTTP "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " had non-zero Content-Length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lla/c0;->r:Lla/e0;

    invoke-virtual {v0}, Lla/e0;->c()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_6
    move-exception v0

    invoke-virtual {v8, v0}, Lk4/h;->e(Ljava/io/IOException;)V

    throw v0
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    :goto_9
    if-eqz v4, :cond_f

    invoke-static {v4, v0}, Lwa/h;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    throw v4

    :cond_f
    throw v0

    :cond_10
    throw v0

    :cond_11
    throw v0

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v6, v1, Lqa/f;->e:Lg7/c;

    new-instance v0, Lg5/c;

    const/16 v7, 0xa

    invoke-direct {v0, v7, v6, v3}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v8, v6, Lg7/c;->g:Ljava/lang/Object;

    check-cast v8, Lla/c;

    if-nez v8, :cond_2c

    sget v8, Lla/c;->n:I

    iget-object v8, v6, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast v8, Lla/p;

    const-string v9, "headers"

    invoke-static {v8, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Lla/p;->size()I

    move-result v9

    move-object v13, v3

    move v12, v4

    move v11, v5

    move v14, v11

    move v15, v14

    move/from16 v18, v15

    move/from16 v19, v18

    move/from16 v20, v19

    move/from16 v23, v20

    move/from16 v24, v23

    move/from16 v25, v24

    const/16 v16, -0x1

    const/16 v17, -0x1

    const/16 v21, -0x1

    const/16 v22, -0x1

    :goto_a
    if-ge v11, v9, :cond_2a

    move/from16 p0, v4

    invoke-virtual {v8, v11}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v11}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v5

    const-string v3, "Cache-Control"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    if-eqz v13, :cond_12

    :goto_b
    const/4 v12, 0x0

    goto :goto_c

    :cond_12
    move-object v13, v5

    goto :goto_c

    :cond_13
    const-string v3, "Pragma"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    goto :goto_b

    :goto_c
    const/4 v3, 0x0

    :goto_d
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_29

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    move v7, v3

    :goto_e
    if-ge v7, v4, :cond_15

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move-object/from16 v28, v0

    const-string v0, "=,;"

    invoke-static {v0, v10}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v0

    if-eqz v0, :cond_14

    goto :goto_f

    :cond_14
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v28

    goto :goto_e

    :cond_15
    move-object/from16 v28, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    :goto_f
    invoke-virtual {v5, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "substring(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v7, v4, :cond_16

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x2c

    if-eq v4, v10, :cond_16

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x3b

    if-ne v4, v10, :cond_17

    :cond_16
    move-object/from16 v30, v8

    goto/16 :goto_14

    :cond_17
    add-int/lit8 v7, v7, 0x1

    sget-object v4, Lma/c;->a:[B

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    :goto_10
    if-ge v7, v4, :cond_19

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    move/from16 v29, v4

    const/16 v4, 0x20

    if-eq v10, v4, :cond_18

    const/16 v4, 0x9

    if-eq v10, v4, :cond_18

    goto :goto_11

    :cond_18
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v29

    goto :goto_10

    :cond_19
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    :goto_11
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v7, v4, :cond_1a

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v10, 0x22

    if-ne v4, v10, :cond_1a

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x4

    invoke-static {v5, v10, v7, v4}, Lr9/k;->d0(Ljava/lang/CharSequence;CII)I

    move-result v4

    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    move v3, v4

    move-object/from16 v30, v8

    goto :goto_15

    :cond_1a
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    move v10, v7

    :goto_12
    if-ge v10, v4, :cond_1c

    move/from16 v29, v4

    invoke-virtual {v5, v10}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v30, v8

    const-string v8, ",;"

    invoke-static {v8, v4}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_1b

    goto :goto_13

    :cond_1b
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v29

    move-object/from16 v8, v30

    goto :goto_12

    :cond_1c
    move-object/from16 v30, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    :goto_13
    invoke-virtual {v5, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v7, v3

    move v3, v10

    goto :goto_15

    :goto_14
    add-int/lit8 v7, v7, 0x1

    move v3, v7

    const/4 v7, 0x0

    :goto_15
    const-string v4, "no-cache"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e

    move/from16 v14, p0

    :cond_1d
    :goto_16
    move-object/from16 v0, v28

    move-object/from16 v8, v30

    const/16 v7, 0xa

    goto/16 :goto_d

    :cond_1e
    const-string v4, "no-store"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1f

    move/from16 v15, p0

    goto :goto_16

    :cond_1f
    const-string v4, "max-age"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    const/4 v4, -0x1

    invoke-static {v4, v7}, Lma/c;->m(ILjava/lang/String;)I

    move-result v16

    goto :goto_16

    :cond_20
    const/4 v4, -0x1

    const-string v8, "s-maxage"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_21

    invoke-static {v4, v7}, Lma/c;->m(ILjava/lang/String;)I

    move-result v17

    goto :goto_16

    :cond_21
    const-string v4, "private"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    move/from16 v18, p0

    goto :goto_16

    :cond_22
    const-string v4, "public"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_23

    move/from16 v19, p0

    goto :goto_16

    :cond_23
    const-string v4, "must-revalidate"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_24

    move/from16 v20, p0

    goto :goto_16

    :cond_24
    const-string v4, "max-stale"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    const v0, 0x7fffffff

    invoke-static {v0, v7}, Lma/c;->m(ILjava/lang/String;)I

    move-result v21

    goto :goto_16

    :cond_25
    const-string v4, "min-fresh"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    const/4 v4, -0x1

    invoke-static {v4, v7}, Lma/c;->m(ILjava/lang/String;)I

    move-result v22

    goto :goto_16

    :cond_26
    const/4 v4, -0x1

    const-string v7, "only-if-cached"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_27

    move/from16 v23, p0

    goto :goto_16

    :cond_27
    const-string v7, "no-transform"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_28

    move/from16 v24, p0

    goto/16 :goto_16

    :cond_28
    const-string v7, "immutable"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    move/from16 v25, p0

    goto/16 :goto_16

    :cond_29
    move-object/from16 v28, v0

    move-object/from16 v30, v8

    const/4 v4, -0x1

    add-int/lit8 v11, v11, 0x1

    move/from16 v4, p0

    move-object/from16 v0, v28

    move-object/from16 v8, v30

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xa

    goto/16 :goto_a

    :cond_2a
    move-object/from16 v28, v0

    if-nez v12, :cond_2b

    const/16 v26, 0x0

    goto :goto_17

    :cond_2b
    move-object/from16 v26, v13

    :goto_17
    new-instance v13, Lla/c;

    invoke-direct/range {v13 .. v26}, Lla/c;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    iput-object v13, v6, Lg7/c;->g:Ljava/lang/Object;

    move-object v8, v13

    goto :goto_18

    :cond_2c
    move-object/from16 v28, v0

    :goto_18
    iget-boolean v0, v8, Lla/c;->j:Z

    if-eqz v0, :cond_2d

    new-instance v0, Lg5/c;

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v4}, Lg5/c;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    goto :goto_19

    :cond_2d
    move-object/from16 v0, v28

    :goto_19
    iget-object v3, v0, Lg5/c;->m:Ljava/lang/Object;

    check-cast v3, Lg7/c;

    iget-object v0, v0, Lg5/c;->n:Ljava/lang/Object;

    check-cast v0, Lla/c0;

    const/16 v4, 0x14

    if-nez v3, :cond_2e

    if-nez v0, :cond_2e

    sget-object v12, Lla/e0;->l:Lla/d0;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v7, Lla/w;->o:Lla/w;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    new-instance v11, Lla/p;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {v11, v0}, Lla/p;-><init>([Ljava/lang/String;)V

    new-instance v5, Lla/c0;

    const-string v8, "Unsatisfiable Request (only-if-cached)"

    const/16 v9, 0x1f8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    const/16 v20, 0x0

    sget-object v21, Lla/h0;->c:Lla/b;

    invoke-direct/range {v5 .. v21}, Lla/c0;-><init>(Lg7/c;Lla/w;Ljava/lang/String;ILla/o;Lla/p;Lla/e0;Lla/c0;Lla/c0;Lla/c0;JJLk4/h;Lla/h0;)V

    goto/16 :goto_21

    :cond_2e
    const-string v5, "cacheResponse"

    if-nez v3, :cond_2f

    invoke-static {v0}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lla/c0;->b()Lla/b0;

    move-result-object v1

    invoke-static {v0}, Lwa/h;->x(Lla/c0;)Lla/c0;

    move-result-object v0

    invoke-static {v5, v0}, Lla/b0;->b(Ljava/lang/String;Lla/c0;)V

    iput-object v0, v1, Lla/b0;->i:Lla/c0;

    invoke-virtual {v1}, Lla/b0;->a()Lla/c0;

    move-result-object v5

    goto/16 :goto_21

    :cond_2f
    invoke-virtual {v1, v3}, Lqa/f;->b(Lg7/c;)Lla/c0;

    move-result-object v1

    const-string v3, "networkResponse"

    if-eqz v0, :cond_3a

    iget v6, v1, Lla/c0;->o:I

    const/16 v7, 0x130

    if-ne v6, v7, :cond_39

    invoke-virtual {v0}, Lla/c0;->b()Lla/b0;

    move-result-object v6

    iget-object v7, v0, Lla/c0;->q:Lla/p;

    iget-object v8, v1, Lla/c0;->q:Lla/p;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Lla/p;->size()I

    move-result v4

    const/4 v10, 0x0

    :goto_1a
    const-string v11, "Content-Encoding"

    const-string v12, "Content-Length"

    if-ge v10, v4, :cond_35

    invoke-virtual {v7, v10}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v14

    const-string v15, "Warning"

    invoke-virtual {v15, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_30

    const-string v15, "1"

    move/from16 p0, v4

    const/4 v4, 0x0

    invoke-static {v14, v15, v4}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v15

    if-eqz v15, :cond_31

    goto :goto_1c

    :cond_30
    move/from16 p0, v4

    :cond_31
    invoke-virtual {v12, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-virtual {v2, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_1b

    :cond_32
    invoke-static {v13}, Lr5/u0;->p(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-virtual {v8, v13}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_34

    :cond_33
    :goto_1b
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v14}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_34
    :goto_1c
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, p0

    goto :goto_1a

    :cond_35
    invoke-virtual {v8}, Lla/p;->size()I

    move-result v4

    const/4 v7, 0x0

    :goto_1d
    if-ge v7, v4, :cond_38

    invoke-virtual {v8, v7}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_37

    invoke-virtual {v11, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_37

    invoke-virtual {v2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_36

    goto :goto_1e

    :cond_36
    invoke-static {v10}, Lr5/u0;->p(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_37

    invoke-virtual {v8, v7}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v13}, Lr9/k;->w0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_37
    :goto_1e
    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_38
    new-instance v2, Lla/p;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-direct {v2, v4}, Lla/p;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2}, Lla/p;->c()Lc5/o;

    move-result-object v2

    iput-object v2, v6, Lla/b0;->f:Lc5/o;

    iget-wide v7, v1, Lla/c0;->v:J

    iput-wide v7, v6, Lla/b0;->k:J

    iget-wide v7, v1, Lla/c0;->w:J

    iput-wide v7, v6, Lla/b0;->l:J

    invoke-static {v0}, Lwa/h;->x(Lla/c0;)Lla/c0;

    move-result-object v0

    invoke-static {v5, v0}, Lla/b0;->b(Ljava/lang/String;Lla/c0;)V

    iput-object v0, v6, Lla/b0;->i:Lla/c0;

    invoke-static {v1}, Lwa/h;->x(Lla/c0;)Lla/c0;

    move-result-object v0

    invoke-static {v3, v0}, Lla/b0;->b(Ljava/lang/String;Lla/c0;)V

    iput-object v0, v6, Lla/b0;->h:Lla/c0;

    invoke-virtual {v6}, Lla/b0;->a()Lla/c0;

    iget-object v0, v1, Lla/c0;->r:Lla/e0;

    invoke-virtual {v0}, Lla/e0;->close()V

    const/16 v27, 0x0

    invoke-static/range {v27 .. v27}, Lj9/n;->d(Ljava/lang/Object;)V

    throw v27

    :cond_39
    const/16 v27, 0x0

    iget-object v2, v0, Lla/c0;->r:Lla/e0;

    invoke-static {v2}, Lma/c;->b(Ljava/io/Closeable;)V

    goto :goto_1f

    :cond_3a
    const/16 v27, 0x0

    :goto_1f
    invoke-virtual {v1}, Lla/c0;->b()Lla/b0;

    move-result-object v2

    if-eqz v0, :cond_3b

    invoke-static {v0}, Lwa/h;->x(Lla/c0;)Lla/c0;

    move-result-object v0

    goto :goto_20

    :cond_3b
    move-object/from16 v0, v27

    :goto_20
    invoke-static {v5, v0}, Lla/b0;->b(Ljava/lang/String;Lla/c0;)V

    iput-object v0, v2, Lla/b0;->i:Lla/c0;

    invoke-static {v1}, Lwa/h;->x(Lla/c0;)Lla/c0;

    move-result-object v0

    invoke-static {v3, v0}, Lla/b0;->b(Ljava/lang/String;Lla/c0;)V

    iput-object v0, v2, Lla/b0;->h:Lla/c0;

    invoke-virtual {v2}, Lla/b0;->a()Lla/c0;

    move-result-object v5

    :goto_21
    return-object v5

    :pswitch_1
    iget-object v0, v1, Lqa/f;->e:Lg7/c;

    invoke-virtual {v0}, Lg7/c;->a()Landroidx/lifecycle/a1;

    move-result-object v0

    sget-object v2, Lgd/h;->a:Lr9/i;

    const-string v2, "BlindDriver/1.0.1 (Android; personal use)"

    const-string v3, "User-Agent"

    invoke-virtual {v0, v3, v2}, Landroidx/lifecycle/a1;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lg7/c;

    invoke-direct {v2, v0}, Lg7/c;-><init>(Landroidx/lifecycle/a1;)V

    invoke-virtual {v1, v2}, Lqa/f;->b(Lg7/c;)Lla/c0;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
