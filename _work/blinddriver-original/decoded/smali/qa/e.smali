.class public abstract Lqa/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbb/j;->o:Lbb/j;

    const-string v0, "\"\\"

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    const-string v0, "\t ,="

    invoke-static {v0}, Ld7/g;->m(Ljava/lang/String;)Lbb/j;

    return-void
.end method

.method public static final a(Lla/c0;)Z
    .locals 4

    iget-object v0, p0, Lla/c0;->l:Lg7/c;

    iget-object v0, v0, Lg7/c;->b:Ljava/lang/String;

    const-string v1, "HEAD"

    invoke-static {v0, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lla/c0;->o:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    :cond_1
    const/16 v1, 0xcc

    if-eq v0, v1, :cond_2

    const/16 v1, 0x130

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lma/e;->e(Lla/c0;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    iget-object p0, p0, Lla/c0;->q:Lla/p;

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p0, v0}, Lla/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 p0, 0x0

    :cond_3
    const-string v0, "chunked"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Lla/b;Lla/r;Lla/p;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "<this>"

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "url"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "headers"

    invoke-static {v2, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lla/b;->m:Lla/b;

    if-ne v0, v3, :cond_0

    return-void

    :cond_0
    sget-object v0, Lla/m;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lla/p;->size()I

    move-result v0

    const/4 v3, 0x0

    move v5, v3

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v0, :cond_3

    invoke-virtual {v2, v5}, Lla/p;->b(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Set-Cookie"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v6, :cond_1

    new-instance v6, Ljava/util/ArrayList;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1
    invoke-virtual {v2, v5}, Lla/p;->d(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "unmodifiableList(...)"

    if-eqz v6, :cond_4

    invoke-static {v6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    sget-object v5, Lu8/r;->l:Lu8/r;

    if-nez v0, :cond_5

    move-object v6, v5

    goto :goto_2

    :cond_5
    move-object v6, v0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    move v8, v3

    const/4 v9, 0x0

    :goto_3
    if-ge v8, v7, :cond_26

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "setCookie"

    invoke-static {v10, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sget-object v0, Lma/c;->a:[B

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v13, 0x3b

    invoke-static {v10, v13, v3, v0}, Lma/c;->c(Ljava/lang/String;CII)I

    move-result v0

    const/16 v14, 0x3d

    invoke-static {v10, v14, v3, v0}, Lma/c;->c(Ljava/lang/String;CII)I

    move-result v15

    if-ne v15, v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {v3, v15, v10}, Lma/c;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v16

    if-nez v16, :cond_7

    goto :goto_4

    :cond_7
    invoke-static/range {v17 .. v17}, Lma/c;->f(Ljava/lang/String;)I

    move-result v4

    const/4 v3, -0x1

    if-eq v4, v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 v15, v15, 0x1

    invoke-static {v15, v0, v10}, Lma/c;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lma/c;->f(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_9

    :goto_4
    move-object/from16 v35, v5

    const/4 v0, 0x0

    const/4 v14, 0x0

    goto/16 :goto_f

    :cond_9
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    const-wide v19, 0xe677d21fdbffL

    move-wide/from16 v28, v19

    const/16 p2, 0x1

    const/4 v4, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    const/16 v30, 0x0

    :goto_5
    const-wide v31, 0x7fffffffffffffffL

    const-wide/high16 v33, -0x8000000000000000L

    if-ge v0, v3, :cond_17

    move-object/from16 v35, v5

    invoke-static {v10, v13, v0, v3}, Lma/c;->c(Ljava/lang/String;CII)I

    move-result v5

    invoke-static {v10, v14, v0, v5}, Lma/c;->c(Ljava/lang/String;CII)I

    move-result v13

    invoke-static {v0, v13, v10}, Lma/c;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ge v13, v5, :cond_a

    add-int/lit8 v13, v13, 0x1

    invoke-static {v13, v5, v10}, Lma/c;->n(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_6

    :cond_a
    const-string v13, ""

    :goto_6
    const-string v14, "expires"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    :try_start_0
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0, v13}, Lg5/f;->I(ILjava/lang/String;)J

    move-result-wide v28
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_7
    move/from16 v25, p2

    goto/16 :goto_8

    :cond_b
    const-string v14, "max-age"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    :try_start_1
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v21, 0x0

    cmp-long v0, v13, v21

    if-gtz v0, :cond_c

    move-wide/from16 v21, v33

    goto :goto_7

    :cond_c
    move-wide/from16 v21, v13

    goto :goto_7

    :catch_0
    move-exception v0

    :try_start_2
    const-string v14, "-?\\d+"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v14

    move-object/from16 v36, v0

    const-string v0, "compile(...)"

    invoke-static {v14, v0}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "-"

    const/4 v14, 0x0

    invoke-static {v13, v0, v14}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    move-wide/from16 v31, v33

    :cond_d
    move-wide/from16 v21, v31

    goto :goto_7

    :cond_e
    throw v36
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_f
    const-string v14, "domain"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_12

    :try_start_3
    const-string v0, "."

    invoke-static {v13, v0}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_11

    invoke-static {v13, v0}, Lr9/k;->m0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lma/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    move-object v4, v0

    const/16 v26, 0x0

    goto :goto_8

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_11
    const-string v0, "Failed requirement."

    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v13
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_12
    const-string v14, "path"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_13

    move-object v15, v13

    goto :goto_8

    :cond_13
    const-string v14, "secure"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_14

    move/from16 v30, p2

    goto :goto_8

    :cond_14
    const-string v14, "httponly"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_15

    move/from16 v16, p2

    goto :goto_8

    :cond_15
    const-string v14, "samesite"

    invoke-virtual {v0, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    move-object/from16 v27, v13

    :catch_1
    :cond_16
    :goto_8
    add-int/lit8 v0, v5, 0x1

    move-object/from16 v5, v35

    const/16 v13, 0x3b

    const/16 v14, 0x3d

    goto/16 :goto_5

    :cond_17
    move-object/from16 v35, v5

    cmp-long v0, v21, v33

    if-nez v0, :cond_18

    move-wide/from16 v19, v33

    goto :goto_9

    :cond_18
    cmp-long v0, v21, v23

    if-eqz v0, :cond_1b

    const-wide v13, 0x20c49ba5e353f7L

    cmp-long v0, v21, v13

    if-gtz v0, :cond_19

    const/16 v0, 0x3e8

    int-to-long v13, v0

    mul-long v31, v21, v13

    :cond_19
    add-long v31, v11, v31

    cmp-long v0, v31, v11

    if-ltz v0, :cond_1c

    cmp-long v0, v31, v19

    if-lez v0, :cond_1a

    goto :goto_9

    :cond_1a
    move-wide/from16 v19, v31

    goto :goto_9

    :cond_1b
    move-wide/from16 v19, v28

    :cond_1c
    :goto_9
    iget-object v0, v1, Lla/r;->d:Ljava/lang/String;

    if-nez v4, :cond_1d

    move-object v4, v0

    goto :goto_a

    :cond_1d
    invoke-static {v0, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_a

    :cond_1e
    invoke-static {v0, v4}, Lr9/r;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_1f

    sget-object v3, Lma/b;->a:Lr9/i;

    sget-object v3, Lma/b;->a:Lr9/i;

    invoke-virtual {v3, v0}, Lr9/i;->f(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    :goto_a
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v0, v3, :cond_20

    sget-object v0, Lya/a;->d:Lya/a;

    invoke-virtual {v0, v4}, Lya/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_20

    :cond_1f
    const/4 v14, 0x0

    const/16 v16, 0x0

    goto :goto_e

    :cond_20
    const-string v0, "/"

    const/4 v14, 0x0

    if-eqz v15, :cond_22

    invoke-static {v15, v0, v14}, Lr9/r;->S(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_21

    goto :goto_c

    :cond_21
    :goto_b
    move-object/from16 v22, v15

    move/from16 v24, v16

    goto :goto_d

    :cond_22
    :goto_c
    invoke-virtual {v1}, Lla/r;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x2f

    const/4 v10, 0x6

    invoke-static {v3, v5, v14, v10}, Lr9/k;->i0(Ljava/lang/String;CII)I

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v3, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v3, "substring(...)"

    invoke-static {v0, v3}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_23
    move-object v15, v0

    goto :goto_b

    :goto_d
    new-instance v16, Lla/m;

    move-object/from16 v21, v4

    move/from16 v23, v30

    invoke-direct/range {v16 .. v27}, Lla/m;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;)V

    :goto_e
    move-object/from16 v0, v16

    :goto_f
    if-nez v0, :cond_24

    goto :goto_10

    :cond_24
    if-nez v9, :cond_25

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    add-int/lit8 v8, v8, 0x1

    move v3, v14

    move-object/from16 v5, v35

    goto/16 :goto_3

    :cond_26
    move-object/from16 v35, v5

    if-eqz v9, :cond_27

    invoke-static {v9}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    :cond_27
    const/4 v4, 0x0

    :goto_11
    if-nez v4, :cond_28

    move-object/from16 v5, v35

    goto :goto_12

    :cond_28
    move-object v5, v4

    :goto_12
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    return-void
.end method
