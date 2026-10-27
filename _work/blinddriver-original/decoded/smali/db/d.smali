.class public final Ldb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/RenderedImage;


# instance fields
.field public final a:Leb/d;

.field public final b:[C

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:I


# direct methods
.method public constructor <init>(Leb/d;Ldb/a;)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Ldb/d;->a:Leb/d;

    new-instance v2, Ldb/b;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Ldb/b;->o:Ljava/util/HashMap;

    invoke-virtual {v1}, Leb/d;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v5, v6}, Leb/d;->n(J)V

    invoke-virtual {v1}, Leb/d;->readUnsignedShort()I

    move-result v7

    const/16 v8, 0x4949

    const/16 v9, 0x4d4d

    if-eq v7, v8, :cond_1

    if-ne v7, v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TIFFDirectory1"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne v7, v9, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v2, Ldb/b;->l:Z

    invoke-virtual {v2, v1}, Ldb/b;->d(Leb/d;)I

    move-result v9

    const/16 v11, 0x2a

    if-ne v9, v11, :cond_52

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    move-result-wide v11

    cmp-long v5, v11, v5

    if-eqz v5, :cond_51

    invoke-virtual {v1, v11, v12}, Leb/d;->n(J)V

    invoke-virtual {v2, v1}, Ldb/b;->d(Leb/d;)I

    move-result v5

    iput v5, v2, Ldb/b;->m:I

    new-array v5, v5, [Ldb/c;

    iput-object v5, v2, Ldb/b;->n:[Ldb/c;

    const/4 v5, 0x0

    :goto_2
    iget v6, v2, Ldb/b;->m:I

    const/4 v13, 0x4

    const/4 v14, 0x2

    if-ge v5, v6, :cond_10

    invoke-virtual {v2, v1}, Ldb/b;->d(Leb/d;)I

    move-result v6

    invoke-virtual {v2, v1}, Ldb/b;->d(Leb/d;)I

    move-result v15

    const-wide v16, 0xffffffffL

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    move-result-wide v11

    long-to-int v11, v11

    invoke-virtual {v1}, Leb/d;->c()J

    move-result-wide v18

    const-wide/16 v20, 0x4

    const/16 p2, 0x1

    const/16 v12, 0x20

    add-long v9, v18, v20

    :try_start_0
    sget-object v18, Ldb/b;->p:[I

    aget v18, v18, v15

    move/from16 v19, v12

    mul-int v12, v11, v18

    if-le v12, v13, :cond_3

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    move-result-wide v12

    long-to-int v12, v12

    int-to-long v12, v12

    invoke-virtual {v1, v12, v13}, Leb/d;->n(J)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move/from16 v21, v5

    move/from16 v20, v7

    goto/16 :goto_15

    :cond_3
    :goto_3
    iget-object v12, v2, Ldb/b;->o:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v18, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v12, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    packed-switch v15, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFDirectory0"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v8, v11, [D

    move/from16 v12, v18

    :goto_4
    if-ge v12, v11, :cond_5

    if-eqz v7, :cond_4

    invoke-virtual {v1}, Leb/d;->readDouble()D

    move-result-wide v13

    move/from16 v20, v7

    move-object/from16 v21, v8

    goto :goto_5

    :cond_4
    invoke-virtual {v1}, Leb/d;->d()I

    move-result v13

    invoke-virtual {v1}, Leb/d;->d()I

    move-result v14

    move/from16 v20, v7

    move-object/from16 v21, v8

    int-to-long v7, v14

    shl-long v7, v7, v19

    int-to-long v13, v13

    and-long v13, v13, v16

    add-long/2addr v7, v13

    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v13

    :goto_5
    aput-wide v13, v21, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v20

    move-object/from16 v8, v21

    goto :goto_4

    :cond_5
    move/from16 v20, v7

    move-object/from16 v21, v8

    :cond_6
    move/from16 v21, v5

    goto/16 :goto_14

    :pswitch_1
    move/from16 v20, v7

    new-array v8, v11, [F

    move/from16 v7, v18

    :goto_6
    if-ge v7, v11, :cond_6

    if-eqz v20, :cond_7

    invoke-virtual {v1}, Leb/d;->readFloat()F

    move-result v12

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Leb/d;->d()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    :goto_7
    aput v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :pswitch_2
    move/from16 v20, v7

    new-array v7, v14, [I

    aput v14, v7, p2

    aput v11, v7, v18

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, [[I

    move/from16 v7, v18

    :goto_8
    if-ge v7, v11, :cond_6

    aget-object v12, v8, v7

    if-eqz v20, :cond_8

    invoke-virtual {v1}, Leb/d;->readInt()I

    move-result v13

    goto :goto_9

    :cond_8
    invoke-virtual {v1}, Leb/d;->d()I

    move-result v13

    :goto_9
    aput v13, v12, v18

    aget-object v12, v8, v7

    if-eqz v20, :cond_9

    invoke-virtual {v1}, Leb/d;->readInt()I

    move-result v13

    goto :goto_a

    :cond_9
    invoke-virtual {v1}, Leb/d;->d()I

    move-result v13

    :goto_a
    aput v13, v12, p2

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :pswitch_3
    move/from16 v20, v7

    new-array v8, v11, [I

    move/from16 v7, v18

    :goto_b
    if-ge v7, v11, :cond_6

    if-eqz v20, :cond_a

    invoke-virtual {v1}, Leb/d;->readInt()I

    move-result v12

    goto :goto_c

    :cond_a
    invoke-virtual {v1}, Leb/d;->d()I

    move-result v12

    :goto_c
    aput v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :pswitch_4
    move/from16 v20, v7

    new-array v8, v11, [S

    move/from16 v7, v18

    :goto_d
    if-ge v7, v11, :cond_6

    if-eqz v20, :cond_b

    invoke-virtual {v1}, Leb/d;->readShort()S

    move-result v12

    goto :goto_e

    :cond_b
    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v12

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v13

    or-int v14, v12, v13

    if-ltz v14, :cond_c

    shl-int/lit8 v13, v13, 0x8

    add-int/2addr v13, v12

    int-to-short v12, v13

    :goto_e
    aput-short v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_c
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :pswitch_5
    move/from16 v20, v7

    new-array v7, v14, [I

    aput v14, v7, p2

    aput v11, v7, v18

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, [[J

    move/from16 v7, v18

    :goto_f
    if-ge v7, v11, :cond_6

    aget-object v12, v8, v7

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    move-result-wide v13

    aput-wide v13, v12, v18

    aget-object v12, v8, v7

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    move-result-wide v13

    aput-wide v13, v12, p2

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :pswitch_6
    move/from16 v20, v7

    new-array v8, v11, [J

    move/from16 v7, v18

    :goto_10
    if-ge v7, v11, :cond_6

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    move-result-wide v12

    aput-wide v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    :pswitch_7
    move/from16 v20, v7

    new-array v8, v11, [C

    move/from16 v7, v18

    :goto_11
    if-ge v7, v11, :cond_6

    invoke-virtual {v2, v1}, Ldb/b;->d(Leb/d;)I

    move-result v12

    int-to-char v12, v12

    aput-char v12, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :pswitch_8
    move/from16 v20, v7

    new-array v8, v11, [B

    move/from16 v7, v18

    invoke-virtual {v1, v8, v7, v11}, Leb/d;->readFully([BII)V

    if-ne v15, v14, :cond_6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_12
    if-ge v12, v11, :cond_f

    :goto_13
    if-ge v12, v11, :cond_e

    add-int/lit8 v14, v12, 0x1

    aget-byte v12, v8, v12

    if-eqz v12, :cond_d

    move v12, v14

    goto :goto_13

    :cond_d
    move v12, v14

    :cond_e
    new-instance v14, Ljava/lang/String;

    move/from16 v21, v5

    sub-int v5, v12, v13

    move/from16 v22, v11

    const-string v11, "UTF-8"

    invoke-direct {v14, v8, v13, v5, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v12

    move/from16 v5, v21

    move/from16 v11, v22

    goto :goto_12

    :cond_f
    move/from16 v21, v5

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v8, v5, [Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    :goto_14
    iget-object v5, v2, Ldb/b;->n:[Ldb/c;

    new-instance v7, Ldb/c;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput v6, v7, Ldb/c;->l:I

    iput v15, v7, Ldb/c;->m:I

    iput-object v8, v7, Ldb/c;->n:Ljava/lang/Object;

    aput-object v7, v5, v21

    invoke-virtual {v1, v9, v10}, Leb/d;->n(J)V

    goto :goto_16

    :goto_15
    invoke-virtual {v1, v9, v10}, Leb/d;->n(J)V

    :goto_16
    add-int/lit8 v5, v21, 0x1

    move/from16 v7, v20

    goto/16 :goto_2

    :cond_10
    const/16 p2, 0x1

    const-wide v16, 0xffffffffL

    const/16 v19, 0x20

    invoke-virtual {v2, v1}, Ldb/b;->c(Leb/d;)J

    invoke-virtual {v1, v3, v4}, Leb/d;->n(J)V

    const/16 v1, 0x115

    invoke-virtual {v2, v1}, Ldb/b;->a(I)Ldb/c;

    move-result-object v1

    if-nez v1, :cond_11

    move/from16 v1, p2

    goto :goto_17

    :cond_11
    invoke-virtual {v1}, Ldb/c;->b()J

    move-result-wide v3

    long-to-int v1, v3

    :goto_17
    const/16 v3, 0x11c

    invoke-virtual {v2, v3}, Ldb/b;->a(I)Ldb/c;

    move-result-object v3

    if-nez v3, :cond_12

    move/from16 v4, p2

    new-array v3, v4, [C

    const/16 v18, 0x0

    aput-char v4, v3, v18

    goto :goto_18

    :cond_12
    move/from16 v4, p2

    const/16 v18, 0x0

    iget-object v3, v3, Ldb/c;->n:Ljava/lang/Object;

    check-cast v3, [C

    :goto_18
    aget-char v3, v3, v18

    if-eq v3, v4, :cond_14

    if-ne v1, v4, :cond_13

    goto :goto_19

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage0"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_19
    const/16 v3, 0x102

    invoke-virtual {v2, v3}, Ldb/b;->a(I)Ldb/c;

    move-result-object v3

    if-eqz v3, :cond_15

    iget-object v3, v3, Ldb/c;->n:Ljava/lang/Object;

    check-cast v3, [C

    const/16 v18, 0x0

    goto :goto_1a

    :cond_15
    const/4 v4, 0x1

    new-array v3, v4, [C

    const/16 v18, 0x0

    aput-char v4, v3, v18

    :goto_1a
    aget-char v3, v3, v18

    iput v3, v0, Ldb/d;->c:I

    const/16 v3, 0x153

    invoke-virtual {v2, v3}, Ldb/b;->a(I)Ldb/c;

    move-result-object v3

    if-eqz v3, :cond_18

    iget-object v3, v3, Ldb/c;->n:Ljava/lang/Object;

    check-cast v3, [C

    const/4 v4, 0x1

    :goto_1b
    array-length v5, v3

    if-ge v4, v5, :cond_17

    aget-char v5, v3, v4

    aget-char v6, v3, v18

    if-ne v5, v6, :cond_16

    add-int/lit8 v4, v4, 0x1

    const/16 v18, 0x0

    goto :goto_1b

    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage2"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    const/4 v4, 0x1

    const/4 v7, 0x0

    goto :goto_1c

    :cond_18
    const/4 v4, 0x1

    new-array v3, v4, [C

    const/4 v7, 0x0

    aput-char v4, v3, v7

    :goto_1c
    iget v5, v0, Ldb/d;->c:I

    const/16 v6, 0x10

    const/16 v8, 0x8

    const/4 v9, 0x3

    if-eq v5, v4, :cond_1b

    if-eq v5, v13, :cond_1b

    if-eq v5, v8, :cond_1b

    if-eq v5, v6, :cond_19

    move/from16 v12, v19

    if-ne v5, v12, :cond_50

    aget-char v3, v3, v7

    if-eq v3, v9, :cond_50

    iput v9, v0, Ldb/d;->g:I

    goto :goto_1e

    :cond_19
    aget-char v3, v3, v7

    if-eq v3, v9, :cond_50

    if-ne v3, v14, :cond_1a

    move v3, v14

    goto :goto_1d

    :cond_1a
    const/4 v3, 0x1

    :goto_1d
    iput v3, v0, Ldb/d;->g:I

    goto :goto_1e

    :cond_1b
    aget-char v3, v3, v7

    if-eq v3, v9, :cond_50

    iput v7, v0, Ldb/d;->g:I

    :goto_1e
    const/16 v3, 0x103

    invoke-virtual {v2, v3}, Ldb/b;->a(I)Ldb/c;

    move-result-object v3

    if-nez v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1f

    :cond_1c
    invoke-virtual {v3}, Ldb/c;->a()I

    move-result v3

    :goto_1f
    const/16 v4, 0x106

    invoke-virtual {v2, v4}, Ldb/b;->a(I)Ldb/c;

    move-result-object v4

    if-nez v4, :cond_1d

    const/4 v4, 0x0

    goto :goto_20

    :cond_1d
    invoke-virtual {v4}, Ldb/c;->a()I

    move-result v4

    :goto_20
    const/4 v5, -0x1

    iput v5, v0, Ldb/d;->e:I

    const/4 v7, 0x5

    if-eqz v4, :cond_25

    const/4 v10, 0x1

    if-eq v4, v10, :cond_24

    if-eq v4, v14, :cond_21

    if-eq v4, v9, :cond_1f

    if-eq v4, v13, :cond_1e

    iget v4, v0, Ldb/d;->c:I

    rem-int/2addr v4, v8

    if-nez v4, :cond_2a

    iput v8, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_1e
    iget v4, v0, Ldb/d;->c:I

    if-ne v4, v10, :cond_2a

    if-ne v1, v10, :cond_2a

    const/4 v4, 0x0

    iput v4, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_1f
    if-ne v1, v10, :cond_2a

    iget v4, v0, Ldb/d;->c:I

    if-eq v4, v13, :cond_20

    if-eq v4, v8, :cond_20

    if-ne v4, v6, :cond_2a

    :cond_20
    iput v13, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_21
    iget v4, v0, Ldb/d;->c:I

    rem-int/2addr v4, v8

    if-nez v4, :cond_2a

    if-ne v1, v9, :cond_22

    iput v7, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_22
    if-ne v1, v13, :cond_23

    const/4 v4, 0x6

    iput v4, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_23
    iput v8, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_24
    move v4, v10

    goto :goto_21

    :cond_25
    const/4 v4, 0x1

    iput-boolean v4, v0, Ldb/d;->f:Z

    :goto_21
    iget v10, v0, Ldb/d;->c:I

    if-ne v10, v4, :cond_26

    if-ne v1, v4, :cond_26

    const/4 v11, 0x0

    iput v11, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_26
    if-ne v10, v13, :cond_27

    if-ne v1, v4, :cond_27

    iput v4, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_27
    rem-int/2addr v10, v8

    if-nez v10, :cond_2a

    if-ne v1, v4, :cond_28

    iput v14, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_28
    if-ne v1, v14, :cond_29

    iput v9, v0, Ldb/d;->e:I

    goto :goto_22

    :cond_29
    iput v8, v0, Ldb/d;->e:I

    :cond_2a
    :goto_22
    iget v4, v0, Ldb/d;->e:I

    const-string v10, "TIFFImage4"

    const-string v11, ": "

    if-eq v4, v5, :cond_4f

    new-instance v4, Ljava/awt/Rectangle;

    const/16 v5, 0x100

    invoke-virtual {v2, v5}, Ldb/b;->b(I)J

    move-result-wide v6

    long-to-int v5, v6

    const/16 v6, 0x101

    invoke-virtual {v2, v6}, Ldb/b;->b(I)J

    move-result-wide v6

    long-to-int v6, v6

    const/4 v7, 0x0

    invoke-direct {v4, v7, v7, v5, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput v1, v0, Ldb/d;->d:I

    const/16 v5, 0x152

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    if-nez v5, :cond_2b

    const/4 v7, 0x0

    goto :goto_23

    :cond_2b
    invoke-virtual {v5}, Ldb/c;->b()J

    move-result-wide v5

    long-to-int v5, v5

    move v7, v5

    :goto_23
    const/16 v5, 0x144

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v6

    const/16 v15, 0x143

    const/16 v12, 0x142

    if-eqz v6, :cond_2c

    move-object/from16 v20, v10

    invoke-virtual {v2, v12}, Ldb/b;->b(I)J

    move-result-wide v9

    long-to-int v9, v9

    move v10, v7

    invoke-virtual {v2, v15}, Ldb/b;->b(I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    iget-object v5, v5, Ldb/c;->n:Ljava/lang/Object;

    check-cast v5, [J

    const/16 v5, 0x145

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    invoke-static {v5}, Ldb/d;->c(Ldb/c;)V

    :goto_24
    move/from16 v25, v6

    goto :goto_2a

    :cond_2c
    move-object/from16 v20, v10

    move v10, v7

    invoke-virtual {v2, v12}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    if-eqz v5, :cond_2d

    invoke-virtual {v2, v12}, Ldb/b;->b(I)J

    move-result-wide v5

    long-to-int v5, v5

    :goto_25
    move v9, v5

    goto :goto_26

    :cond_2d
    iget v5, v4, Ljava/awt/Rectangle;->width:I

    goto :goto_25

    :goto_26
    const/16 v5, 0x116

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    if-nez v5, :cond_2f

    invoke-virtual {v2, v15}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    if-eqz v5, :cond_2e

    invoke-virtual {v2, v15}, Ldb/b;->b(I)J

    move-result-wide v5

    goto :goto_28

    :cond_2e
    iget v5, v4, Ljava/awt/Rectangle;->height:I

    :goto_27
    move v6, v5

    goto :goto_29

    :cond_2f
    invoke-virtual {v5}, Ldb/c;->b()J

    move-result-wide v5

    cmp-long v7, v5, v16

    if-nez v7, :cond_30

    iget v5, v4, Ljava/awt/Rectangle;->height:I

    goto :goto_27

    :cond_30
    :goto_28
    long-to-int v5, v5

    goto :goto_27

    :goto_29
    const/16 v5, 0x111

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    if-eqz v5, :cond_4e

    invoke-static {v5}, Ldb/d;->c(Ldb/c;)V

    const/16 v5, 0x117

    invoke-virtual {v2, v5}, Ldb/b;->a(I)Ldb/c;

    move-result-object v5

    if-eqz v5, :cond_4d

    invoke-static {v5}, Ldb/d;->c(Ldb/c;)V

    goto :goto_24

    :goto_2a
    iget v5, v4, Ljava/awt/Rectangle;->width:I

    add-int/2addr v5, v9

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    div-int/2addr v5, v9

    iget v4, v4, Ljava/awt/Rectangle;->height:I

    add-int v4, v4, v25

    sub-int/2addr v4, v6

    div-int v4, v4, v25

    const/16 v4, 0x10a

    invoke-virtual {v2, v4}, Ldb/b;->a(I)Ldb/c;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v4}, Ldb/c;->a()I

    :cond_31
    const v4, 0x8005

    if-eq v3, v4, :cond_3a

    const v4, 0x80b2

    if-eq v3, v4, :cond_39

    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIFFImage10"

    invoke-static {v2}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage15"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_a
    const/16 v3, 0x13d

    invoke-virtual {v2, v3}, Ldb/b;->a(I)Ldb/c;

    move-result-object v3

    if-nez v3, :cond_32

    goto :goto_2c

    :cond_32
    invoke-virtual {v3}, Ldb/c;->a()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_34

    if-ne v3, v14, :cond_33

    goto :goto_2b

    :cond_33
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage8"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_34
    :goto_2b
    if-ne v3, v14, :cond_3a

    iget v3, v0, Ldb/d;->c:I

    if-ne v3, v8, :cond_35

    goto :goto_2c

    :cond_35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage9"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b
    iget v4, v0, Ldb/d;->c:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_38

    const/4 v6, 0x3

    if-ne v3, v6, :cond_36

    const/16 v4, 0x124

    invoke-virtual {v2, v4}, Ldb/b;->a(I)Ldb/c;

    move-result-object v4

    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ldb/c;->b()J

    :cond_36
    if-ne v3, v13, :cond_37

    const/16 v3, 0x125

    invoke-virtual {v2, v3}, Ldb/b;->a(I)Ldb/c;

    move-result-object v3

    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ldb/c;->b()J

    :cond_37
    new-array v3, v9, [I

    new-array v3, v9, [I

    goto :goto_2c

    :cond_38
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage7"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_39
    new-instance v3, Ljava/util/zip/Inflater;

    invoke-direct {v3}, Ljava/util/zip/Inflater;-><init>()V

    :cond_3a
    :goto_2c
    :pswitch_c
    iget v3, v0, Ldb/d;->e:I

    packed-switch v3, :pswitch_data_2

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v20 .. v20}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ldb/d;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_d
    new-array v1, v1, [I

    const/4 v8, 0x0

    :goto_2d
    iget v3, v0, Ldb/d;->d:I

    if-ge v8, v3, :cond_3b

    aput v8, v1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2d

    :cond_3b
    new-instance v22, Ljava/awt/image/PixelInterleavedSampleModel;

    iget v3, v0, Ldb/d;->g:I

    iget v0, v0, Ldb/d;->d:I

    mul-int v27, v0, v9

    move/from16 v26, v0

    move-object/from16 v28, v1

    move/from16 v23, v3

    move/from16 v24, v9

    invoke-direct/range {v22 .. v28}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    goto/16 :goto_37

    :pswitch_e
    move/from16 v3, v25

    const/16 v1, 0x140

    invoke-virtual {v2, v1}, Ldb/b;->a(I)Ldb/c;

    move-result-object v1

    if-eqz v1, :cond_41

    iget-object v1, v1, Ldb/c;->n:Ljava/lang/Object;

    check-cast v1, [C

    iput-object v1, v0, Ldb/d;->b:[C

    const/4 v4, 0x1

    iput v4, v0, Ldb/d;->d:I

    iget v5, v0, Ldb/d;->c:I

    if-ne v5, v13, :cond_3c

    new-instance v4, Ljava/awt/image/MultiPixelPackedSampleModel;

    iget v5, v0, Ldb/d;->c:I

    const/4 v7, 0x0

    invoke-direct {v4, v7, v9, v3, v5}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    goto :goto_2e

    :cond_3c
    const/4 v7, 0x0

    if-ne v5, v8, :cond_3d

    invoke-static {v7, v9, v3, v4}, Ldb/d;->b(IIII)V

    goto :goto_2e

    :cond_3d
    const/16 v7, 0x10

    if-ne v5, v7, :cond_3e

    iput v4, v0, Ldb/d;->g:I

    invoke-static {v4, v9, v3, v4}, Ldb/d;->b(IIII)V

    :cond_3e
    :goto_2e
    array-length v1, v1

    const/4 v6, 0x3

    div-int/2addr v1, v6

    new-array v3, v1, [B

    new-array v4, v1, [B

    new-array v5, v1, [B

    mul-int/lit8 v6, v1, 0x2

    iget v7, v0, Ldb/d;->g:I

    if-ne v7, v14, :cond_3f

    const/4 v7, 0x0

    :goto_2f
    if-ge v7, v1, :cond_40

    iget-object v9, v0, Ldb/d;->b:[C

    aget-char v10, v9, v7

    int-to-short v10, v10

    add-int/lit16 v10, v10, -0x8000

    shr-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int v10, v1, v7

    aget-char v10, v9, v10

    int-to-short v10, v10

    add-int/lit16 v10, v10, -0x8000

    shr-int/2addr v10, v8

    int-to-byte v10, v10

    aput-byte v10, v4, v7

    add-int v10, v6, v7

    aget-char v9, v9, v10

    int-to-short v9, v9

    add-int/lit16 v9, v9, -0x8000

    shr-int/2addr v9, v8

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    :cond_3f
    const/4 v7, 0x0

    :goto_30
    if-ge v7, v1, :cond_40

    iget-object v9, v0, Ldb/d;->b:[C

    aget-char v10, v9, v7

    const v11, 0xffff

    and-int/2addr v10, v11

    shr-int/2addr v10, v8

    and-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v3, v7

    add-int v10, v1, v7

    aget-char v10, v9, v10

    and-int/2addr v10, v11

    shr-int/2addr v10, v8

    and-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v4, v7

    add-int v10, v6, v7

    aget-char v9, v9, v10

    and-int/2addr v9, v11

    shr-int/2addr v9, v8

    and-int/2addr v9, v11

    int-to-byte v9, v9

    aput-byte v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_30

    :cond_40
    new-instance v19, Ljava/awt/image/IndexColorModel;

    iget v0, v0, Ldb/d;->c:I

    move/from16 v20, v0

    move/from16 v21, v1

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v5

    invoke-direct/range {v19 .. v24}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    goto/16 :goto_37

    :cond_41
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage11"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f
    move/from16 v3, v25

    const/4 v6, 0x3

    new-array v1, v1, [I

    const/4 v7, 0x0

    :goto_31
    iget v4, v0, Ldb/d;->d:I

    if-ge v7, v4, :cond_42

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v7

    aput v4, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_31

    :cond_42
    new-instance v22, Ljava/awt/image/PixelInterleavedSampleModel;

    iget v4, v0, Ldb/d;->g:I

    iget v5, v0, Ldb/d;->d:I

    mul-int v27, v5, v9

    move-object/from16 v28, v1

    move/from16 v25, v3

    move/from16 v23, v4

    move/from16 v26, v5

    move/from16 v24, v9

    invoke-direct/range {v22 .. v28}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iget v1, v0, Ldb/d;->e:I

    if-eq v1, v14, :cond_47

    const/4 v12, 0x5

    if-eq v1, v12, :cond_46

    const/4 v4, 0x1

    if-ne v10, v4, :cond_43

    move v14, v6

    goto :goto_32

    :cond_43
    if-ne v10, v14, :cond_44

    goto :goto_32

    :cond_44
    move v14, v4

    :goto_32
    iget v1, v0, Ldb/d;->g:I

    iget v0, v0, Ldb/d;->d:I

    if-ne v10, v4, :cond_45

    const/4 v8, 0x1

    goto :goto_33

    :cond_45
    const/4 v8, 0x0

    :goto_33
    invoke-static {v1, v0, v8, v14}, Ldb/d;->a(IIZI)V

    goto/16 :goto_37

    :cond_46
    new-instance v15, Ljava/awt/image/ComponentColorModel;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v16

    iget v1, v0, Ldb/d;->c:I

    filled-new-array {v1, v1, v1}, [I

    move-result-object v17

    const/16 v20, 0x1

    iget v0, v0, Ldb/d;->g:I

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v21, v0

    invoke-direct/range {v15 .. v21}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    goto/16 :goto_37

    :cond_47
    new-instance v3, Ljava/awt/image/ComponentColorModel;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v4

    iget v1, v0, Ldb/d;->c:I

    filled-new-array {v1}, [I

    move-result-object v5

    const/4 v8, 0x1

    iget v9, v0, Ldb/d;->g:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v3 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    goto :goto_37

    :pswitch_10
    move/from16 v3, v25

    new-instance v1, Ljava/awt/image/MultiPixelPackedSampleModel;

    iget v4, v0, Ldb/d;->g:I

    iget v5, v0, Ldb/d;->c:I

    invoke-direct {v1, v4, v9, v3, v5}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    iget v1, v0, Ldb/d;->e:I

    const/16 v7, 0xff

    if-nez v1, :cond_4a

    iget-boolean v0, v0, Ldb/d;->f:Z

    if-eqz v0, :cond_48

    move v1, v7

    goto :goto_34

    :cond_48
    const/4 v1, 0x0

    :goto_34
    int-to-byte v1, v1

    if-eqz v0, :cond_49

    const/4 v7, 0x0

    :cond_49
    int-to-byte v0, v7

    new-array v6, v14, [B

    const/16 v18, 0x0

    aput-byte v1, v6, v18

    const/4 v4, 0x1

    aput-byte v0, v6, v4

    new-instance v3, Ljava/awt/image/IndexColorModel;

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v7, v6

    move-object v8, v6

    invoke-direct/range {v3 .. v8}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    goto :goto_37

    :cond_4a
    const/16 v1, 0x10

    const/16 v18, 0x0

    new-array v11, v1, [B

    iget-boolean v0, v0, Ldb/d;->f:Z

    if-eqz v0, :cond_4b

    move/from16 v8, v18

    :goto_35
    if-ge v8, v1, :cond_4c

    mul-int/lit8 v0, v8, 0x10

    rsub-int v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_35

    :cond_4b
    move/from16 v8, v18

    :goto_36
    if-ge v8, v1, :cond_4c

    mul-int/lit8 v0, v8, 0x10

    int-to-byte v0, v0

    aput-byte v0, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_36

    :cond_4c
    new-instance v8, Ljava/awt/image/IndexColorModel;

    const/4 v9, 0x4

    const/16 v10, 0x10

    move-object v12, v11

    move-object v13, v11

    invoke-direct/range {v8 .. v13}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    :goto_37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "tiff_directory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    throw v0

    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage6"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage5"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    move-object/from16 v20, v10

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v20 .. v20}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ldb/d;->e:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_50
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "TIFFImage3"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TIFFDirectory3"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TIFFDirectory2"

    invoke-static {v1}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_8
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method public static a(IIZI)V
    .locals 10

    const-string v0, ": "

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    :goto_0
    move-object v4, v2

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TIFFImage19"

    invoke-static {p3}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v2, 0x3eb

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    goto :goto_0

    :goto_1
    if-eqz p0, :cond_4

    const/4 v2, 0x1

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const/16 v0, 0x20

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "TIFFImage20"

    invoke-static {p3}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const/16 v0, 0x10

    goto :goto_2

    :cond_4
    const/16 v0, 0x8

    :goto_2
    new-array v5, p1, [I

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_5

    aput v0, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/awt/image/ComponentColorModel;

    const/4 v6, 0x1

    move v9, p0

    move v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v9}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    return-void
.end method

.method public static b(IIII)V
    .locals 7

    new-array v6, p3, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aput v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/image/PixelInterleavedSampleModel;

    mul-int v5, p1, p3

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    return-void
.end method

.method public static c(Ldb/c;)V
    .locals 4

    iget v0, p0, Ldb/c;->m:I

    iget-object v1, p0, Ldb/c;->n:Ljava/lang/Object;

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    check-cast v1, [C

    array-length p0, v1

    new-array p0, p0, [J

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-char v2, v1, v0

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-long v2, v2

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    check-cast v1, [J

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TIFFImage18"

    invoke-static {v2}, Leb/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ldb/c;->m:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
