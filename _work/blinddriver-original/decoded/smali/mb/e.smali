.class public final Lmb/e;
.super Lmb/m;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Lmb/h;

.field public final c:Lmb/k;

.field public final synthetic d:Lmb/n;


# direct methods
.method public constructor <init>(Lmb/n;ILmb/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/e;->d:Lmb/n;

    iput p2, p0, Lmb/e;->a:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Lmb/h;

    invoke-direct {p2, p1}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {p2}, Lmb/k;->a()V

    iput-object p2, p0, Lmb/e;->b:Lmb/h;

    iput-object p3, p0, Lmb/e;->c:Lmb/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 13

    iget-object v0, p0, Lmb/e;->c:Lmb/k;

    iget v1, v0, Lmb/k;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e

    iget-object v2, p0, Lmb/e;->b:Lmb/h;

    iget v3, v2, Lmb/k;->a:I

    sub-int/2addr v1, v3

    iget v3, p0, Lmb/e;->a:I

    const/16 v4, 0xa7

    const/4 v5, -0x3

    const/16 v6, -0x8000

    const/16 v7, 0x7fff

    iget-object v8, p0, Lmb/e;->d:Lmb/n;

    if-lt v3, v4, :cond_1

    const/16 v4, 0xa8

    if-gt v3, v4, :cond_1

    if-gt v1, v7, :cond_0

    if-ge v1, v6, :cond_c

    :cond_0
    invoke-virtual {v8, v2}, Lmb/n;->j(Lmb/h;)V

    new-instance v1, Lmb/h;

    invoke-direct {v1, v8}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v1}, Lmb/k;->a()V

    iput-object v1, p0, Lmb/e;->b:Lmb/h;

    invoke-virtual {v8, v5}, Lmb/n;->c(I)I

    iget v1, p0, Lmb/e;->a:I

    add-int/lit8 v1, v1, 0x21

    iput v1, p0, Lmb/e;->a:I

    invoke-virtual {v8, v1, v0}, Lmb/n;->r(ILmb/k;)V

    invoke-virtual {v8}, Lmb/n;->g()V

    return-void

    :cond_1
    const/16 v4, 0xc8

    const/16 v9, 0xc7

    const/16 v10, 0xc6

    const/16 v11, 0xa6

    const/16 v12, 0x99

    if-lt v3, v12, :cond_2

    if-le v3, v11, :cond_3

    :cond_2
    if-lt v3, v10, :cond_b

    if-gt v3, v9, :cond_b

    :cond_3
    if-gt v1, v7, :cond_4

    if-ge v1, v6, :cond_c

    :cond_4
    invoke-virtual {v8, v2}, Lmb/n;->j(Lmb/h;)V

    new-instance v1, Lmb/h;

    invoke-direct {v1, v8}, Lmb/k;-><init>(Lmb/n;)V

    invoke-virtual {v1}, Lmb/k;->a()V

    iput-object v1, p0, Lmb/e;->b:Lmb/h;

    invoke-virtual {v8, v5}, Lmb/n;->c(I)I

    new-instance v1, Lmb/d;

    invoke-direct {v1, v8}, Lmb/k;-><init>(Lmb/n;)V

    iget v2, p0, Lmb/e;->a:I

    sget-object v3, Lmb/n;->n:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lmb/e;->a:I

    invoke-virtual {v8, v2, v1}, Lmb/n;->r(ILmb/k;)V

    iget v2, p0, Lmb/e;->a:I

    if-lt v2, v12, :cond_5

    const/16 v3, 0x9e

    if-gt v2, v3, :cond_5

    invoke-virtual {v8}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    goto :goto_2

    :cond_5
    const/16 v3, 0x9f

    if-lt v2, v3, :cond_6

    const/16 v3, 0xa4

    if-gt v2, v3, :cond_6

    invoke-virtual {v8}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    invoke-virtual {v8}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    goto :goto_2

    :cond_6
    const/16 v3, 0xa5

    if-eq v2, v3, :cond_a

    if-ne v2, v11, :cond_7

    goto :goto_1

    :cond_7
    if-eq v2, v10, :cond_9

    if-ne v2, v9, :cond_8

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lmb/e;->a:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_9
    :goto_0
    invoke-virtual {v8}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    goto :goto_2

    :cond_a
    :goto_1
    invoke-virtual {v8}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    invoke-virtual {v8}, Lmb/n;->h()Lorg/codehaus/janino/util/r0;

    :goto_2
    invoke-virtual {v8, v4, v0}, Lmb/n;->r(ILmb/k;)V

    iget-object p0, v8, Lmb/n;->g:Lmb/h;

    iget-object p0, p0, Lmb/k;->d:Lmb/p6;

    iput-object p0, v1, Lmb/k;->d:Lmb/p6;

    invoke-virtual {v1}, Lmb/k;->a()V

    invoke-virtual {v8}, Lmb/n;->g()V

    return-void

    :cond_b
    if-lt v3, v4, :cond_d

    const/16 v0, 0xc9

    if-gt v3, v0, :cond_d

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lmb/e;->a:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_e
    new-instance p0, Lhb/b;

    const-string v0, "Cannot relocate branch to unset destination offset"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()V
    .locals 4

    iget-object v0, p0, Lmb/e;->c:Lmb/k;

    iget v0, v0, Lmb/k;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v1, p0, Lmb/e;->a:I

    const/16 v2, 0x99

    iget-object v3, p0, Lmb/e;->d:Lmb/n;

    if-lt v1, v2, :cond_0

    const/16 v2, 0xa8

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0xc6

    if-lt v1, v2, :cond_2

    const/16 v2, 0xc7

    if-gt v1, v2, :cond_2

    :cond_1
    iget-object p0, p0, Lmb/e;->b:Lmb/h;

    iget p0, p0, Lmb/k;->a:I

    sub-int/2addr v0, p0

    iget-object v1, v3, Lmb/n;->d:[B

    add-int/lit8 v2, p0, 0x1

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 p0, p0, 0x2

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    return-void

    :cond_2
    const/16 v2, 0xc8

    if-lt v1, v2, :cond_3

    const/16 v2, 0xc9

    if-gt v1, v2, :cond_3

    iget-object p0, p0, Lmb/e;->b:Lmb/h;

    iget p0, p0, Lmb/k;->a:I

    sub-int/2addr v0, p0

    iget-object v1, v3, Lmb/n;->d:[B

    add-int/lit8 v2, p0, 0x1

    shr-int/lit8 v3, v0, 0x18

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p0, 0x2

    shr-int/lit8 v3, v0, 0x10

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, p0, 0x3

    shr-int/lit8 v3, v0, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 p0, p0, 0x4

    int-to-byte v0, v0

    aput-byte v0, v1, p0

    return-void

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lmb/e;->a:I

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :cond_4
    new-instance p0, Lhb/b;

    const-string v0, "Cannot relocate branch to unset destination offset"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
