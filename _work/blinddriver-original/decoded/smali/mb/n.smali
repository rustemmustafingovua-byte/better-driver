.class public final Lmb/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final m:Z

.field public static final n:Ljava/util/Map;


# instance fields
.field public final a:Lorg/codehaus/janino/util/t0;

.field public b:I

.field public c:S

.field public d:[B

.field public final e:Lmb/k;

.field public final f:Lmb/h;

.field public g:Lmb/h;

.field public final h:Ljava/util/ArrayList;

.field public final i:Ljava/util/ArrayList;

.field public j:Lmb/j;

.field public k:S

.field public final l:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lmb/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".suppressStackMapTable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lmb/n;->m:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0xa5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xa3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x9d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lmb/n;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/janino/util/t0;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/n;->i:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/n;->l:Ljava/util/ArrayList;

    iput-object p1, p0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    const/4 p1, 0x0

    iput p1, p0, Lmb/n;->b:I

    iput-short p1, p0, Lmb/n;->c:S

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lmb/n;->d:[B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmb/n;->h:Ljava/util/ArrayList;

    new-instance v0, Lmb/k;

    invoke-direct {v0, p0}, Lmb/k;-><init>(Lmb/n;)V

    iput-object v0, p0, Lmb/n;->e:Lmb/k;

    iput p1, v0, Lmb/k;->a:I

    new-instance v1, Lmb/h;

    invoke-direct {v1, p0}, Lmb/k;-><init>(Lmb/n;)V

    iput-object v1, p0, Lmb/n;->g:Lmb/h;

    iput p1, v1, Lmb/k;->a:I

    new-instance v2, Lmb/p6;

    new-array v3, p1, [Lorg/codehaus/janino/util/r0;

    new-array p1, p1, [Lorg/codehaus/janino/util/r0;

    invoke-direct {v2, v3, p1}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    iput-object v2, v1, Lmb/k;->d:Lmb/p6;

    iget-object p1, p0, Lmb/n;->g:Lmb/h;

    iput-object p1, v0, Lmb/k;->c:Lmb/k;

    iput-object v0, p1, Lmb/k;->b:Lmb/k;

    iput-object p1, p0, Lmb/n;->f:Lmb/h;

    return-void
.end method


# virtual methods
.method public final a(Lmb/k;Lmb/k;Lmb/d;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lmb/f;

    if-nez p4, :cond_0

    const/4 p4, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1, p4}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result p4

    :goto_0
    invoke-direct {v0, p1, p2, p3, p4}, Lmb/f;-><init>(Lmb/k;Lmb/k;Lmb/d;S)V

    iget-object p0, p0, Lmb/n;->h:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;Lmb/b0;S)Lmb/j3;
    .locals 3

    iget-object v0, p0, Lmb/n;->j:Lmb/j;

    iget-object v0, v0, Lmb/j;->c:Ljava/util/ArrayList;

    new-instance v1, Lmb/j3;

    iget-short v2, p0, Lmb/n;->k:S

    invoke-direct {v1, p1, p2, v2}, Lmb/j3;-><init>(Ljava/lang/String;Lmb/b0;S)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lmb/n;->f()Lmb/k;

    move-result-object p1

    iput-object p1, v1, Lmb/j3;->d:Lmb/k;

    :cond_0
    iget-short p1, p0, Lmb/n;->k:S

    add-int/2addr p1, p3

    int-to-short p1, p1

    iput-short p1, p0, Lmb/n;->k:S

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmb/n;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-short p1, p0, Lmb/n;->k:S

    iget-short p2, p0, Lmb/n;->c:S

    if-le p1, p2, :cond_1

    iput-short p1, p0, Lmb/n;->c:S

    :cond_1
    return-object v1
.end method

.method public final c(I)I
    .locals 7

    iget-object v0, p0, Lmb/n;->g:Lmb/h;

    iget v0, v0, Lmb/k;->a:I

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lmb/n;->f:Lmb/h;

    if-gez p1, :cond_1

    iget-object v2, p0, Lmb/n;->d:[B

    sub-int v3, v0, p1

    iget v1, v1, Lmb/k;->a:I

    sub-int/2addr v1, v0

    add-int/2addr v1, p1

    invoke-static {v2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    :goto_0
    iget-object p0, p0, Lmb/k;->c:Lmb/k;

    if-eqz p0, :cond_4

    iget v1, p0, Lmb/k;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lmb/k;->a:I

    goto :goto_0

    :cond_1
    iget v2, v1, Lmb/k;->a:I

    add-int v3, v2, p1

    iget-object v4, p0, Lmb/n;->d:[B

    array-length v5, v4

    const/4 v6, 0x0

    if-gt v3, v5, :cond_3

    if-eq v0, v2, :cond_2

    add-int v1, v0, p1

    sub-int/2addr v2, v0

    invoke-static {v4, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmb/n;->d:[B

    invoke-static {v2, v0, v1, v6}, Ljava/util/Arrays;->fill([BIIB)V

    :cond_2
    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    :goto_1
    if-eqz p0, :cond_4

    iget v1, p0, Lmb/k;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lmb/k;->a:I

    iget-object p0, p0, Lmb/k;->c:Lmb/k;

    goto :goto_1

    :cond_3
    array-length v2, v4

    mul-int/lit8 v2, v2, 0x2

    const v3, 0xffff

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    array-length v5, v4

    add-int/2addr v5, p1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gt v2, v3, :cond_5

    new-array v2, v2, [B

    iput-object v2, p0, Lmb/n;->d:[B

    invoke-static {v4, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmb/n;->d:[B

    add-int v3, v0, p1

    iget v1, v1, Lmb/k;->a:I

    sub-int/2addr v1, v0

    invoke-static {v4, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmb/n;->d:[B

    invoke-static {v1, v0, v3, v6}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    :goto_2
    if-eqz p0, :cond_4

    iget v1, p0, Lmb/k;->a:I

    add-int/2addr v1, p1

    iput v1, p0, Lmb/k;->a:I

    iget-object p0, p0, Lmb/k;->c:Lmb/k;

    goto :goto_2

    :cond_4
    :goto_3
    return v0

    :cond_5
    new-instance p0, Lhb/b;

    const-string p1, "Code grows beyond 64 KB"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Lmb/d;
    .locals 1

    new-instance v0, Lmb/d;

    invoke-direct {v0, p0}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v0}, Lmb/k;->a()V

    return-object v0
.end method

.method public final e(IZZ)Lorg/codehaus/janino/util/l;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lmb/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v8, v2, [Lorg/codehaus/janino/util/k;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmb/f;

    new-instance v6, Lorg/codehaus/janino/util/k;

    iget-object v7, v5, Lmb/f;->a:Lmb/k;

    iget v7, v7, Lmb/k;->a:I

    int-to-short v7, v7

    iget-object v9, v5, Lmb/f;->b:Lmb/k;

    iget v9, v9, Lmb/k;->a:I

    int-to-short v9, v9

    iget-object v10, v5, Lmb/f;->c:Lmb/d;

    iget v10, v10, Lmb/k;->a:I

    int-to-short v10, v10

    iget-short v5, v5, Lmb/f;->d:S

    invoke-direct {v6, v7, v9, v10, v5}, Lorg/codehaus/janino/util/k;-><init>(SSSS)V

    aput-object v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, v0, Lmb/n;->e:Lmb/k;

    iget-object v4, v0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    if-eqz p2, :cond_4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v2

    :goto_1
    if-eqz v6, :cond_3

    instance-of v7, v6, Lmb/i;

    if-eqz v7, :cond_2

    iget v7, v6, Lmb/k;->a:I

    const v9, 0xffff

    if-gt v7, v9, :cond_1

    move-object v9, v6

    check-cast v9, Lmb/i;

    iget-short v9, v9, Lmb/i;->f:S

    new-instance v10, Lorg/codehaus/janino/util/g0;

    int-to-short v7, v7

    invoke-direct {v10, v7, v9}, Lorg/codehaus/janino/util/g0;-><init>(SS)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    new-instance v0, Lhb/b;

    const-string v1, "LineNumberTable entry offset out of range"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_2
    iget-object v6, v6, Lmb/k;->c:Lmb/k;

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lorg/codehaus/janino/util/g0;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/codehaus/janino/util/g0;

    new-instance v6, Lorg/codehaus/janino/util/s0;

    const-string v7, "LineNumberTable"

    invoke-virtual {v4, v7}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v7

    const/4 v9, 0x3

    invoke-direct {v6, v7, v5, v9}, Lorg/codehaus/janino/util/s0;-><init>(SLjava/lang/Object;I)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p3, :cond_8

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v0, Lmb/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x0

    :cond_5
    :goto_3
    if-ge v10, v9, :cond_6

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lmb/j3;

    iget-object v12, v11, Lmb/j3;->b:Ljava/lang/String;

    if-eqz v12, :cond_5

    iget-object v13, v11, Lmb/j3;->c:Lmb/b0;

    check-cast v13, Lmb/x;

    invoke-virtual {v13}, Lmb/x;->o()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v18

    invoke-virtual {v4, v12}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v17

    iget-object v12, v11, Lmb/j3;->d:Lmb/k;

    iget-object v13, v11, Lmb/j3;->e:Lmb/k;

    new-instance v14, Lorg/codehaus/janino/util/h0;

    iget v12, v12, Lmb/k;->a:I

    int-to-short v15, v12

    iget v13, v13, Lmb/k;->a:I

    sub-int/2addr v13, v12

    int-to-short v12, v13

    iget-short v11, v11, Lmb/j3;->a:S

    move/from16 v19, v11

    move/from16 v16, v12

    invoke-direct/range {v14 .. v19}, Lorg/codehaus/janino/util/h0;-><init>(SSSSS)V

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    goto :goto_4

    :cond_7
    new-instance v7, Lorg/codehaus/janino/util/s0;

    const-string v9, "LocalVariableTable"

    invoke-virtual {v4, v9}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v9

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Lorg/codehaus/janino/util/h0;

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lorg/codehaus/janino/util/h0;

    const/4 v10, 0x4

    invoke-direct {v7, v9, v6, v10}, Lorg/codehaus/janino/util/s0;-><init>(SLjava/lang/Object;I)V

    :goto_4
    if-eqz v7, :cond_8

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    sget-boolean v6, Lmb/n;->m:Z

    iget-object v7, v0, Lmb/n;->f:Lmb/h;

    if-nez v6, :cond_17

    iget-object v2, v2, Lmb/k;->c:Lmb/k;

    :goto_5
    if-eq v2, v7, :cond_9

    iget-object v6, v2, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v6}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v6

    array-length v6, v6

    move/from16 v9, p1

    if-ge v6, v9, :cond_9

    iget-object v2, v2, Lmb/k;->c:Lmb/k;

    goto :goto_5

    :cond_9
    iget-object v6, v2, Lmb/k;->c:Lmb/k;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_6
    if-eqz v6, :cond_15

    iget v10, v6, Lmb/k;->a:I

    iget v11, v7, Lmb/k;->a:I

    if-eq v10, v11, :cond_15

    instance-of v10, v6, Lmb/d;

    if-nez v10, :cond_a

    :goto_7
    const/16 v16, 0x0

    goto/16 :goto_c

    :cond_a
    iget-object v10, v6, Lmb/k;->c:Lmb/k;

    :goto_8
    if-eqz v10, :cond_c

    iget v11, v10, Lmb/k;->a:I

    iget v12, v6, Lmb/k;->a:I

    if-ne v11, v12, :cond_c

    instance-of v11, v10, Lmb/d;

    if-eqz v11, :cond_b

    move-object v6, v10

    :cond_b
    iget-object v10, v10, Lmb/k;->c:Lmb/k;

    goto :goto_8

    :cond_c
    iget-object v10, v6, Lmb/k;->d:Lmb/p6;

    if-nez v10, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_e

    iget v10, v6, Lmb/k;->a:I

    goto :goto_9

    :cond_e
    iget v10, v6, Lmb/k;->a:I

    iget v12, v2, Lmb/k;->a:I

    sub-int/2addr v10, v12

    sub-int/2addr v10, v11

    :goto_9
    iget-object v12, v6, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v12}, Lmb/p6;->b()[Lorg/codehaus/janino/util/r0;

    move-result-object v12

    array-length v13, v12

    iget-object v14, v6, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v14}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v14

    array-length v15, v14

    iget-object v2, v2, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v2

    const/16 v16, 0x0

    array-length v3, v2

    const/16 v5, 0x3f

    if-nez v13, :cond_10

    invoke-static {v14, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    if-gt v10, v5, :cond_f

    new-instance v2, Lorg/codehaus/janino/util/n0;

    const/4 v3, 0x0

    invoke-direct {v2, v10, v3}, Lorg/codehaus/janino/util/n0;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_a
    move-object/from16 v17, v6

    goto/16 :goto_b

    :cond_f
    new-instance v2, Lorg/codehaus/janino/util/n0;

    const/4 v3, 0x1

    invoke-direct {v2, v10, v3}, Lorg/codehaus/janino/util/n0;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    if-ne v13, v11, :cond_12

    invoke-static {v14, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    if-gt v10, v5, :cond_11

    new-instance v2, Lorg/codehaus/janino/util/o0;

    aget-object v3, v12, v16

    const/4 v5, 0x0

    invoke-direct {v2, v10, v5, v3}, Lorg/codehaus/janino/util/o0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    new-instance v2, Lorg/codehaus/janino/util/o0;

    aget-object v3, v12, v16

    const/4 v5, 0x1

    invoke-direct {v2, v10, v5, v3}, Lorg/codehaus/janino/util/o0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_12
    const/4 v5, 0x3

    move-object/from16 v17, v6

    if-nez v13, :cond_13

    sub-int v6, v3, v15

    if-lt v6, v11, :cond_13

    if-gt v6, v5, :cond_13

    invoke-static {v2, v15}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v14, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    new-instance v2, Lorg/codehaus/janino/util/k0;

    invoke-direct {v2, v10, v6}, Lorg/codehaus/janino/util/k0;-><init>(II)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    if-nez v13, :cond_14

    sub-int v5, v15, v3

    if-lt v5, v11, :cond_14

    const/4 v6, 0x3

    if-gt v5, v6, :cond_14

    invoke-static {v14, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v2, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    new-instance v2, Lorg/codehaus/janino/util/o0;

    invoke-static {v14, v3, v15}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/codehaus/janino/util/r0;

    const/4 v5, 0x2

    invoke-direct {v2, v10, v5, v3}, Lorg/codehaus/janino/util/o0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_14
    new-instance v2, Lorg/codehaus/janino/util/l0;

    invoke-direct {v2, v10, v14, v12}, Lorg/codehaus/janino/util/l0;-><init>(I[Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_b
    move-object/from16 v2, v17

    move-object v6, v2

    :goto_c
    iget-object v6, v6, Lmb/k;->c:Lmb/k;

    goto/16 :goto_6

    :cond_15
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_16

    const/4 v5, 0x0

    goto :goto_d

    :cond_16
    new-instance v5, Lorg/codehaus/janino/util/s0;

    const-string v2, "StackMapTable"

    invoke-virtual {v4, v2}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Lorg/codehaus/janino/util/p0;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/codehaus/janino/util/p0;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v3, v6}, Lorg/codehaus/janino/util/s0;-><init>(SLjava/lang/Object;I)V

    :goto_d
    if-eqz v5, :cond_17

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/codehaus/janino/util/h;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [Lorg/codehaus/janino/util/h;

    new-instance v3, Lorg/codehaus/janino/util/l;

    const-string v1, "Code"

    invoke-virtual {v4, v1}, Lorg/codehaus/janino/util/t0;->e(Ljava/lang/String;)S

    move-result v4

    iget v1, v0, Lmb/n;->b:I

    int-to-short v5, v1

    iget-short v6, v0, Lmb/n;->c:S

    iget-object v0, v0, Lmb/n;->d:[B

    iget v1, v7, Lmb/k;->a:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    invoke-direct/range {v3 .. v9}, Lorg/codehaus/janino/util/l;-><init>(SSS[B[Lorg/codehaus/janino/util/k;[Lorg/codehaus/janino/util/h;)V

    return-object v3
.end method

.method public final f()Lmb/k;
    .locals 1

    new-instance v0, Lmb/k;

    invoke-direct {v0, p0}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v0}, Lmb/k;->a()V

    return-object v0
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lmb/n;->g:Lmb/h;

    iget-object v1, v0, Lmb/h;->f:Lmb/h;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lmb/h;->f:Lmb/h;

    iput-object v1, p0, Lmb/n;->g:Lmb/h;

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    const-string v0, "Code inserter stack underflow"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final h()Lorg/codehaus/janino/util/r0;
    .locals 8

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget-object v0, p0, Lmb/k;->d:Lmb/p6;

    :goto_0
    invoke-virtual {v0}, Lmb/p6;->c()Lorg/codehaus/janino/util/r0;

    move-result-object v1

    new-instance v2, Lmb/p6;

    iget-object v3, v0, Lmb/p6;->a:[Lorg/codehaus/janino/util/r0;

    iget-object v0, v0, Lmb/p6;->b:[Lorg/codehaus/janino/util/r0;

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    new-array v5, v4, [Lorg/codehaus/janino/util/r0;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_0

    aget-object v7, v0, v6

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-direct {v2, v3, v5}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    sget-object v0, Lorg/codehaus/janino/util/s0;->d:Lorg/codehaus/janino/util/j0;

    if-eq v1, v0, :cond_1

    iput-object v2, p0, Lmb/k;->d:Lmb/p6;

    return-object v1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method public final i()V
    .locals 2

    invoke-virtual {p0}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    move-result-object v0

    sget-object v1, Lorg/codehaus/janino/util/s0;->e:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lorg/codehaus/janino/util/s0;->f:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-object v1, Lorg/codehaus/janino/util/s0;->g:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lorg/codehaus/janino/util/s0;->i:Lorg/codehaus/janino/util/j0;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lorg/codehaus/janino/util/m0;

    if-eqz v1, :cond_5

    check-cast v0, Lorg/codehaus/janino/util/m0;

    iget-short v0, v0, Lorg/codehaus/janino/util/m0;->a:S

    iget-object p0, p0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->k(S)Lorg/codehaus/janino/util/v;

    move-result-object v0

    check-cast v0, Lorg/codehaus/janino/util/m;

    iget-short v0, v0, Lorg/codehaus/janino/util/m;->a:S

    invoke-virtual {p0, v0}, Lorg/codehaus/janino/util/t0;->l(S)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lmb/o;->a:Ljava/util/Map;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    return-void

    :cond_5
    instance-of p0, v0, Lorg/codehaus/janino/util/q0;

    if-eqz p0, :cond_6

    :goto_0
    return-void

    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method public final j(Lmb/h;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lmb/h;->f:Lmb/h;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmb/n;->g:Lmb/h;

    iput-object v0, p1, Lmb/h;->f:Lmb/h;

    iput-object p1, p0, Lmb/n;->g:Lmb/h;

    return-void

    :cond_0
    new-instance p0, Lhb/b;

    const-string p1, "An Inserter can only be pushed once at a time"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k()V
    .locals 1

    sget-object v0, Lorg/codehaus/janino/util/s0;->e:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/codehaus/janino/util/m0;

    iget-object v1, p0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1, p1}, Lorg/codehaus/janino/util/t0;->c(Ljava/lang/String;)S

    move-result v1

    invoke-direct {v0, v1, p1}, Lorg/codehaus/janino/util/m0;-><init>(SLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lmb/o;->a:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lmb/n;->l(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "B"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "I"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Z"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lorg/codehaus/janino/util/s0;->g:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_2
    const-string v0, "F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lorg/codehaus/janino/util/s0;->f:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_3
    const-string v0, "J"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lorg/codehaus/janino/util/s0;->h:Lorg/codehaus/janino/util/j0;

    invoke-virtual {p0, p1}, Lmb/n;->n(Lorg/codehaus/janino/util/r0;)V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lmb/n;->k()V

    return-void
.end method

.method public final n(Lorg/codehaus/janino/util/r0;)V
    .locals 9

    iget-object v0, p0, Lmb/n;->g:Lmb/h;

    iget-object v1, v0, Lmb/k;->d:Lmb/p6;

    new-instance v2, Lmb/p6;

    iget-object v3, v1, Lmb/p6;->a:[Lorg/codehaus/janino/util/r0;

    iget-object v1, v1, Lmb/p6;->b:[Lorg/codehaus/janino/util/r0;

    array-length v4, v1

    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Lorg/codehaus/janino/util/r0;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    aget-object v8, v1, v7

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    aput-object p1, v5, v7

    invoke-direct {v2, v3, v5}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    iput-object v2, v0, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v2}, Lmb/p6;->b()[Lorg/codehaus/janino/util/r0;

    move-result-object p1

    array-length v0, p1

    move v1, v6

    :goto_1
    if-ge v6, v0, :cond_1

    aget-object v2, p1, v6

    invoke-interface {v2}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    iget p1, p0, Lmb/n;->b:I

    if-le v1, p1, :cond_2

    iput v1, p0, Lmb/n;->b:I

    :cond_2
    return-void
.end method

.method public final o(Lmb/k;Lmb/k;)V
    .locals 6

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p2, Lmb/k;->a:I

    iget v1, p1, Lmb/k;->a:I

    sub-int v2, v0, v1

    if-nez v2, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lmb/n;->d:[B

    iget-object v4, p0, Lmb/n;->f:Lmb/h;

    iget v5, v4, Lmb/k;->a:I

    sub-int/2addr v5, v0

    invoke-static {v3, v0, v3, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Lmb/k;->c:Lmb/k;

    :goto_1
    if-eq v1, p2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, v1, Lmb/k;->c:Lmb/k;

    const/16 v5, -0x4d

    iput v5, v1, Lmb/k;->a:I

    const/4 v5, 0x0

    iput-object v5, v1, Lmb/k;->b:Lmb/k;

    iput-object v5, v1, Lmb/k;->c:Lmb/k;

    move-object v1, v3

    goto :goto_1

    :cond_2
    :goto_2
    iget v3, v1, Lmb/k;->a:I

    sub-int/2addr v3, v2

    iput v3, v1, Lmb/k;->a:I

    if-ne v1, v4, :cond_a

    iget-object v1, p0, Lmb/n;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/m;

    instance-of v3, v2, Lmb/e;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lmb/e;

    iget-object v3, v3, Lmb/e;->b:Lmb/h;

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_4
    instance-of v3, v2, Lmb/l;

    if-eqz v3, :cond_3

    check-cast v2, Lmb/l;

    iget-object v2, v2, Lmb/l;->b:Lmb/k;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lmb/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/f;

    iget-object v2, v2, Lmb/f;->a:Lmb/k;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    :cond_7
    iget-object p0, p0, Lmb/n;->i:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_8
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/j3;

    iget-object v1, v1, Lmb/j3;->d:Lmb/k;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_9
    iput-object p2, p1, Lmb/k;->c:Lmb/k;

    iput-object p1, p2, Lmb/k;->b:Lmb/k;

    return-void

    :cond_a
    iget-object v1, v1, Lmb/k;->c:Lmb/k;

    goto/16 :goto_2
.end method

.method public final p()V
    .locals 9

    iget-object v0, p0, Lmb/n;->j:Lmb/j;

    iget-object v1, v0, Lmb/j;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/j3;

    iget-object v6, v5, Lmb/j3;->b:Ljava/lang/String;

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lmb/n;->f()Lmb/k;

    move-result-object v6

    iput-object v6, v5, Lmb/j3;->e:Lmb/k;

    :cond_0
    iget-object v6, p0, Lmb/n;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lmb/j;->a:Lmb/j;

    iput-object v1, p0, Lmb/n;->j:Lmb/j;

    iget-short v0, v0, Lmb/j;->b:S

    iput-short v0, p0, Lmb/n;->k:S

    if-eqz v1, :cond_6

    iget-object v0, p0, Lmb/n;->g:Lmb/h;

    iget-object v0, v0, Lmb/k;->d:Lmb/p6;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v1

    array-length v1, v1

    if-lez v1, :cond_6

    invoke-virtual {v0}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v4, v2, :cond_3

    aget-object v7, v1, v4

    iget-short v8, p0, Lmb/n;->k:S

    if-lt v5, v8, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v7}, Lorg/codehaus/janino/util/r0;->b()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-virtual {v0}, Lmb/p6;->a()[Lorg/codehaus/janino/util/r0;

    move-result-object v1

    array-length v1, v1

    sub-int/2addr v1, v6

    :goto_3
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_5

    new-instance v1, Lmb/p6;

    iget-object v4, v0, Lmb/p6;->a:[Lorg/codehaus/janino/util/r0;

    array-length v5, v4

    add-int/lit8 v5, v5, -0x1

    new-array v6, v5, [Lorg/codehaus/janino/util/r0;

    move v7, v3

    :goto_4
    if-ge v7, v5, :cond_4

    aget-object v8, v4, v7

    aput-object v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, v0, Lmb/p6;->b:[Lorg/codehaus/janino/util/r0;

    invoke-direct {v1, v6, v0}, Lmb/p6;-><init>([Lorg/codehaus/janino/util/r0;[Lorg/codehaus/janino/util/r0;)V

    move-object v0, v1

    move v1, v2

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iput-object v0, p0, Lmb/k;->d:Lmb/p6;

    :cond_6
    return-void
.end method

.method public final q()V
    .locals 4

    new-instance v0, Lmb/j;

    iget-object v1, p0, Lmb/n;->j:Lmb/j;

    iget-short v2, p0, Lmb/n;->k:S

    iget-object v3, p0, Lmb/n;->g:Lmb/h;

    iget-object v3, v3, Lmb/k;->d:Lmb/p6;

    invoke-direct {v0, v1, v2}, Lmb/j;-><init>(Lmb/j;S)V

    iput-object v0, p0, Lmb/n;->j:Lmb/j;

    return-void
.end method

.method public final r(ILmb/k;)V
    .locals 3

    iget v0, p2, Lmb/k;->a:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p2, Lmb/k;->d:Lmb/p6;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmb/n;->g:Lmb/h;

    iget-object v0, v0, Lmb/k;->d:Lmb/p6;

    iput-object v0, p2, Lmb/k;->d:Lmb/p6;

    :cond_0
    const/16 v0, 0x99

    iget-object v2, p0, Lmb/n;->l:Ljava/util/ArrayList;

    if-lt p1, v0, :cond_1

    const/16 v0, 0xa8

    if-le p1, v0, :cond_2

    :cond_1
    const/16 v0, 0xc6

    if-lt p1, v0, :cond_3

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_3

    :cond_2
    new-instance v0, Lmb/e;

    invoke-direct {v0, p0, p1, p2}, Lmb/e;-><init>(Lmb/n;ILmb/k;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-byte p1, p1

    const/4 p2, 0x3

    invoke-virtual {p0, p2}, Lmb/n;->c(I)I

    move-result p2

    iget-object p0, p0, Lmb/n;->d:[B

    add-int/lit8 v0, p2, 0x1

    aput-byte p1, p0, p2

    add-int/lit8 p2, p2, 0x2

    aput-byte v1, p0, v0

    aput-byte v1, p0, p2

    return-void

    :cond_3
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_4

    const/16 v0, 0xc9

    if-gt p1, v0, :cond_4

    new-instance v0, Lmb/e;

    invoke-direct {v0, p0, p1, p2}, Lmb/e;-><init>(Lmb/n;ILmb/k;)V

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    int-to-byte p1, p1

    const/4 p2, 0x5

    invoke-virtual {p0, p2}, Lmb/n;->c(I)I

    move-result p2

    iget-object p0, p0, Lmb/n;->d:[B

    add-int/lit8 v0, p2, 0x1

    aput-byte p1, p0, p2

    add-int/lit8 p1, p2, 0x2

    aput-byte v1, p0, v0

    add-int/lit8 v0, p2, 0x3

    aput-byte v1, p0, p1

    add-int/lit8 p2, p2, 0x4

    aput-byte v1, p0, v0

    aput-byte v1, p0, p2

    return-void

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/n;->a:Lorg/codehaus/janino/util/t0;

    invoke-virtual {v1}, Lorg/codehaus/janino/util/t0;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/cio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/n;->g:Lmb/h;

    iget p0, p0, Lmb/k;->a:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
