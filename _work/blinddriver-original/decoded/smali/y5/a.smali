.class public final Ly5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lw5/d;

.field public final b:Ljava/io/InputStream;

.field public final c:[B

.field public d:I

.field public e:I

.field public final f:Z

.field public g:Z

.field public h:I


# direct methods
.method public constructor <init>(Lw5/d;Ljava/io/InputStream;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ly5/a;->g:Z

    .line 3
    iput-object p1, p0, Ly5/a;->a:Lw5/d;

    .line 4
    iput-object p2, p0, Ly5/a;->b:Ljava/io/InputStream;

    .line 5
    iget-object p2, p1, Lw5/d;->u:[B

    .line 6
    invoke-static {p2}, Lw5/d;->b(Ljava/lang/Object;)V

    .line 7
    iget-object p2, p1, Lw5/d;->p:La6/b;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, La6/b;->a(I)[B

    move-result-object p2

    iput-object p2, p1, Lw5/d;->u:[B

    .line 8
    iput-object p2, p0, Ly5/a;->c:[B

    .line 9
    iput v1, p0, Ly5/a;->d:I

    iput v1, p0, Ly5/a;->e:I

    .line 10
    iput-boolean v0, p0, Ly5/a;->f:Z

    return-void
.end method

.method public constructor <init>(Lw5/d;[BI)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Ly5/a;->g:Z

    .line 13
    iput-object p1, p0, Ly5/a;->a:Lw5/d;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Ly5/a;->b:Ljava/io/InputStream;

    .line 15
    iput-object p2, p0, Ly5/a;->c:[B

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Ly5/a;->d:I

    .line 17
    iput p3, p0, Ly5/a;->e:I

    .line 18
    iput-boolean p1, p0, Ly5/a;->f:Z

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/CharConversionException;

    const-string v1, "Unsupported UCS-4 endianness ("

    const-string v2, ") detected"

    invoke-static {v1, p0, v2}, Lr0/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(ILs5/o;Lz5/b;Lz5/e;I)Ly5/c;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p3

    move/from16 v1, p5

    iget v3, v0, Ly5/a;->d:I

    const/4 v4, 0x5

    invoke-static {v4, v1}, Lr0/i;->a(II)Z

    move-result v5

    const-string v6, "Internal error: this code path should never get executed"

    const/4 v7, 0x4

    const/4 v11, 0x2

    iget-object v13, v0, Ly5/a;->a:Lw5/d;

    iget-object v15, v0, Ly5/a;->c:[B

    const/16 v16, 0x0

    const/4 v10, 0x1

    if-eqz v5, :cond_14

    invoke-virtual {v0, v7}, Ly5/a;->b(I)Z

    move-result v5

    const v17, 0xff00

    if-eqz v5, :cond_d

    iget v5, v0, Ly5/a;->d:I

    aget-byte v18, v15, v5

    shl-int/lit8 v18, v18, 0x18

    add-int/lit8 v19, v5, 0x1

    const/16 v20, 0x10

    aget-byte v14, v15, v19

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    or-int v14, v18, v14

    const/16 v18, 0x8

    add-int/lit8 v12, v5, 0x2

    aget-byte v4, v15, v12

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v4, v14

    add-int/lit8 v14, v5, 0x3

    aget-byte v8, v15, v14

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v4, v8

    const/high16 v8, -0x1010000

    const-string v22, "3412"

    if-eq v4, v8, :cond_c

    const/high16 v8, -0x20000

    if-eq v4, v8, :cond_b

    const v8, 0xfeff

    if-eq v4, v8, :cond_a

    const-string v5, "2143"

    const v7, 0xfffe

    if-eq v4, v7, :cond_9

    ushr-int/lit8 v9, v4, 0x10

    if-ne v9, v8, :cond_0

    iput v12, v0, Ly5/a;->d:I

    iput v11, v0, Ly5/a;->h:I

    iput-boolean v10, v0, Ly5/a;->g:Z

    goto :goto_2

    :cond_0
    if-ne v9, v7, :cond_1

    iput v12, v0, Ly5/a;->d:I

    iput v11, v0, Ly5/a;->h:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Ly5/a;->g:Z

    goto :goto_2

    :cond_1
    ushr-int/lit8 v7, v4, 0x8

    const v8, 0xefbbbf

    if-ne v7, v8, :cond_2

    iput v14, v0, Ly5/a;->d:I

    iput v10, v0, Ly5/a;->h:I

    iput-boolean v10, v0, Ly5/a;->g:Z

    goto :goto_2

    :cond_2
    shr-int/lit8 v7, v4, 0x8

    if-nez v7, :cond_3

    iput-boolean v10, v0, Ly5/a;->g:Z

    :goto_0
    const/4 v4, 0x4

    goto :goto_1

    :cond_3
    const v7, 0xffffff

    and-int/2addr v7, v4

    if-nez v7, :cond_4

    const/4 v7, 0x0

    iput-boolean v7, v0, Ly5/a;->g:Z

    goto :goto_0

    :goto_1
    iput v4, v0, Ly5/a;->h:I

    :goto_2
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_4
    const v7, -0xff0001

    and-int/2addr v7, v4

    if-eqz v7, :cond_8

    const v7, -0xff01

    and-int/2addr v4, v7

    if-eqz v4, :cond_7

    and-int v4, v9, v17

    if-nez v4, :cond_5

    iput-boolean v10, v0, Ly5/a;->g:Z

    goto :goto_3

    :cond_5
    and-int/lit16 v4, v9, 0xff

    if-nez v4, :cond_6

    const/4 v4, 0x0

    iput-boolean v4, v0, Ly5/a;->g:Z

    :goto_3
    iput v11, v0, Ly5/a;->h:I

    goto :goto_2

    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_7
    invoke-static {v5}, Ly5/a;->c(Ljava/lang/String;)V

    throw v16

    :cond_8
    invoke-static/range {v22 .. v22}, Ly5/a;->c(Ljava/lang/String;)V

    throw v16

    :cond_9
    invoke-static {v5}, Ly5/a;->c(Ljava/lang/String;)V

    throw v16

    :cond_a
    iput-boolean v10, v0, Ly5/a;->g:Z

    const/4 v4, 0x4

    add-int/2addr v5, v4

    iput v5, v0, Ly5/a;->d:I

    iput v4, v0, Ly5/a;->h:I

    goto :goto_2

    :cond_b
    move v4, v7

    add-int/2addr v5, v4

    iput v5, v0, Ly5/a;->d:I

    iput v4, v0, Ly5/a;->h:I

    const/4 v4, 0x0

    iput-boolean v4, v0, Ly5/a;->g:Z

    goto :goto_2

    :cond_c
    invoke-static/range {v22 .. v22}, Ly5/a;->c(Ljava/lang/String;)V

    throw v16

    :cond_d
    const/16 v18, 0x8

    const/16 v20, 0x10

    invoke-virtual {v0, v11}, Ly5/a;->b(I)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, v0, Ly5/a;->d:I

    aget-byte v5, v15, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v10

    aget-byte v4, v15, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v5

    and-int v5, v4, v17

    if-nez v5, :cond_e

    iput-boolean v10, v0, Ly5/a;->g:Z

    const/4 v4, 0x0

    goto :goto_4

    :cond_e
    and-int/lit16 v4, v4, 0xff

    if-nez v4, :cond_6

    const/4 v4, 0x0

    iput-boolean v4, v0, Ly5/a;->g:Z

    :goto_4
    iput v11, v0, Ly5/a;->h:I

    :goto_5
    iget v5, v0, Ly5/a;->h:I

    if-eq v5, v10, :cond_13

    if-eq v5, v11, :cond_11

    const/4 v7, 0x4

    if-ne v5, v7, :cond_10

    iget-boolean v5, v0, Ly5/a;->g:Z

    if-eqz v5, :cond_f

    const/4 v5, 0x4

    goto :goto_7

    :cond_f
    const/4 v5, 0x5

    goto :goto_7

    :cond_10
    sget v0, La6/u;->a:I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    iget-boolean v5, v0, Ly5/a;->g:Z

    if-eqz v5, :cond_12

    move v5, v11

    goto :goto_7

    :cond_12
    const/4 v5, 0x3

    goto :goto_7

    :cond_13
    :goto_6
    move v5, v10

    :goto_7
    iput v5, v13, Lw5/d;->n:I

    goto :goto_8

    :cond_14
    const/4 v4, 0x0

    const/16 v18, 0x8

    const/16 v20, 0x10

    move v5, v10

    :goto_8
    iget v7, v0, Ly5/a;->d:I

    sub-int/2addr v7, v3

    if-ne v5, v10, :cond_15

    invoke-static {v11, v1}, Lr0/i;->a(II)Z

    move-result v3

    if-eqz v3, :cond_15

    new-instance v17, Lz5/b;

    iget v3, v2, Lz5/b;->c:I

    iget-object v4, v2, Lz5/b;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lz5/a;

    invoke-static {v10, v1}, Lr0/i;->a(II)Z

    move-result v5

    const/4 v6, 0x3

    invoke-static {v6, v1}, Lr0/i;->a(II)Z

    move-result v6

    move-object/from16 v1, v17

    invoke-direct/range {v1 .. v6}, Lz5/b;-><init>(Lz5/b;ILz5/a;ZZ)V

    new-instance v12, Ly5/j;

    iget v2, v0, Ly5/a;->d:I

    iget v3, v0, Ly5/a;->e:I

    iget-boolean v4, v0, Ly5/a;->f:Z

    iget-object v15, v0, Ly5/a;->b:Ljava/io/InputStream;

    iget-object v0, v0, Ly5/a;->c:[B

    move/from16 v14, p1

    move-object/from16 v16, p2

    move-object/from16 v18, v0

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v21, v7

    invoke-direct/range {v12 .. v22}, Ly5/j;-><init>(Lw5/d;ILjava/io/InputStream;Ls5/o;Lz5/b;[BIIIZ)V

    return-object v12

    :cond_15
    new-instance v1, Ly5/h;

    iget v2, v13, Lw5/d;->n:I

    const/16 v3, 0x20

    const/4 v5, 0x3

    if-eq v2, v10, :cond_19

    const/4 v7, 0x4

    if-eq v2, v11, :cond_18

    if-eq v2, v5, :cond_18

    const/4 v8, 0x5

    if-eq v2, v7, :cond_16

    if-ne v2, v8, :cond_17

    :cond_16
    move v9, v3

    goto :goto_9

    :cond_17
    throw v16

    :cond_18
    const/4 v8, 0x5

    move/from16 v9, v20

    goto :goto_9

    :cond_19
    const/4 v7, 0x4

    const/4 v8, 0x5

    move/from16 v9, v18

    :goto_9
    if-eq v2, v10, :cond_1e

    if-eq v2, v11, :cond_1d

    if-eq v2, v5, :cond_1c

    if-eq v2, v7, :cond_1b

    if-ne v2, v8, :cond_1a

    const-string v2, "UTF-32LE"

    :goto_a
    move/from16 v5, v18

    goto :goto_b

    :cond_1a
    throw v16

    :cond_1b
    const-string v2, "UTF-32BE"

    goto :goto_a

    :cond_1c
    const-string v2, "UTF-16LE"

    goto :goto_a

    :cond_1d
    const-string v2, "UTF-16BE"

    goto :goto_a

    :cond_1e
    const-string v2, "UTF-8"

    goto :goto_a

    :goto_b
    if-eq v9, v5, :cond_23

    move/from16 v5, v20

    if-eq v9, v5, :cond_23

    if-ne v9, v3, :cond_22

    new-instance v12, Lw5/l;

    iget v2, v0, Ly5/a;->d:I

    iget v3, v0, Ly5/a;->e:I

    iget v5, v13, Lw5/d;->n:I

    if-eq v5, v10, :cond_1f

    if-eq v5, v11, :cond_21

    const/4 v6, 0x3

    if-eq v5, v6, :cond_1f

    const/4 v7, 0x4

    if-eq v5, v7, :cond_21

    const/4 v8, 0x5

    if-ne v5, v8, :cond_20

    :cond_1f
    move/from16 v18, v4

    goto :goto_c

    :cond_20
    throw v16

    :cond_21
    move/from16 v18, v10

    :goto_c
    iget-object v14, v0, Ly5/a;->b:Ljava/io/InputStream;

    iget-object v15, v0, Ly5/a;->c:[B

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-direct/range {v12 .. v18}, Lw5/l;-><init>(Lw5/d;Ljava/io/InputStream;[BIIZ)V

    :goto_d
    move-object v15, v12

    goto :goto_f

    :cond_22
    sget v0, La6/u;->a:I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    iget-object v14, v0, Ly5/a;->b:Ljava/io/InputStream;

    if-nez v14, :cond_25

    iget v3, v0, Ly5/a;->e:I

    iget v4, v0, Ly5/a;->d:I

    sub-int/2addr v3, v4

    const/16 v4, 0x2000

    if-gt v3, v4, :cond_24

    new-instance v12, Ljava/io/StringReader;

    new-instance v4, Ljava/lang/String;

    iget v0, v0, Ly5/a;->d:I

    invoke-direct {v4, v15, v0, v3, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-direct {v12, v4}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_24
    new-instance v14, Ljava/io/ByteArrayInputStream;

    iget v3, v0, Ly5/a;->d:I

    iget v0, v0, Ly5/a;->e:I

    invoke-direct {v14, v15, v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    goto :goto_e

    :cond_25
    iget v3, v0, Ly5/a;->d:I

    iget v4, v0, Ly5/a;->e:I

    if-ge v3, v4, :cond_26

    new-instance v12, Lw5/g;

    iget v3, v0, Ly5/a;->d:I

    iget v4, v0, Ly5/a;->e:I

    iget-object v15, v0, Ly5/a;->c:[B

    move/from16 v16, v3

    move/from16 v17, v4

    invoke-direct/range {v12 .. v17}, Lw5/g;-><init>(Lw5/d;Ljava/io/InputStream;[BII)V

    move-object v14, v12

    :cond_26
    :goto_e
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v14, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto :goto_d

    :goto_f
    invoke-virtual/range {p4 .. p4}, Lz5/e;->c()Lz5/e;

    move-result-object v17

    move/from16 v14, p1

    move-object/from16 v16, p2

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Ly5/h;-><init>(Lw5/d;ILjava/io/Reader;Ls5/o;Lz5/e;)V

    return-object v12
.end method

.method public final b(I)Z
    .locals 6

    iget v0, p0, Ly5/a;->e:I

    iget v1, p0, Ly5/a;->d:I

    sub-int/2addr v0, v1

    :goto_0
    const/4 v1, 0x1

    if-ge v0, p1, :cond_2

    iget-object v2, p0, Ly5/a;->b:Ljava/io/InputStream;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    goto :goto_1

    :cond_0
    iget v3, p0, Ly5/a;->e:I

    iget-object v4, p0, Ly5/a;->c:[B

    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-virtual {v2, v4, v3, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    iget v1, p0, Ly5/a;->e:I

    add-int/2addr v1, v2

    iput v1, p0, Ly5/a;->e:I

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    return v1
.end method
