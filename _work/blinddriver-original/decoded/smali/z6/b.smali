.class public final Lz6/b;
.super Ls6/d;
.source "SourceFile"


# static fields
.field public static final A:Ljava/lang/String;


# instance fields
.field public final v:I

.field public final w:I

.field public final x:[Ljavax/xml/namespace/QName;

.field public final y:Ljava/util/BitSet;

.field public final synthetic z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/String;

    const-string v1, "xmlInfo"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lz6/b;->A:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ls6/d;)V
    .locals 10

    const/4 v0, 0x1

    iput v0, p0, Lz6/b;->z:I

    .line 26
    iget-object v0, p1, Ls6/d;->o:[Lq6/c;

    iget-object v1, p1, Ls6/d;->p:[Lq6/c;

    invoke-direct {p0, p1, v0, v1}, Ls6/d;-><init>(Ls6/d;[Lq6/c;[Lq6/c;)V

    .line 27
    array-length p1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    sget-object v3, Lz6/b;->A:Ljava/lang/String;

    const/4 v4, 0x0

    if-ge v2, p1, :cond_5

    aget-object v5, v0, v2

    .line 28
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object v5, v5, Lq6/c;->C:Ljava/util/HashMap;

    if-nez v5, :cond_0

    move-object v5, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 30
    :goto_1
    check-cast v5, La7/a;

    if-eqz v5, :cond_4

    .line 31
    iget-boolean v5, v5, La7/a;->b:Z

    if-eqz v5, :cond_4

    .line 32
    iget-object p1, p0, Ls6/d;->o:[Lq6/c;

    iget-object v0, p0, Ls6/d;->p:[Lq6/c;

    .line 33
    array-length v2, p1

    move v5, v1

    move v6, v5

    :goto_2
    if-ge v5, v2, :cond_6

    .line 34
    aget-object v7, p1, v5

    .line 35
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    iget-object v8, v7, Lq6/c;->C:Ljava/util/HashMap;

    if-nez v8, :cond_1

    move-object v8, v4

    goto :goto_3

    :cond_1
    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 37
    :goto_3
    check-cast v8, La7/a;

    if-eqz v8, :cond_3

    .line 38
    iget-boolean v8, v8, La7/a;->b:Z

    if-eqz v8, :cond_3

    sub-int v8, v5, v6

    if-lez v8, :cond_2

    add-int/lit8 v9, v6, 0x1

    .line 39
    invoke-static {p1, v6, p1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    aput-object v7, p1, v6

    if-eqz v0, :cond_2

    .line 41
    aget-object v7, v0, v5

    .line 42
    invoke-static {v0, v6, v0, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    aput-object v7, v0, v6

    :cond_2
    add-int/lit8 v6, v6, 0x1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    move v6, v1

    .line 44
    :cond_6
    iput v6, p0, Lz6/b;->v:I

    .line 45
    iget-object p1, p0, Ls6/d;->o:[Lq6/c;

    array-length p1, p1

    move v0, v1

    move-object v2, v4

    :goto_4
    if-ge v0, p1, :cond_a

    .line 46
    iget-object v5, p0, Ls6/d;->o:[Lq6/c;

    aget-object v5, v5, v0

    .line 47
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    iget-object v5, v5, Lq6/c;->C:Ljava/util/HashMap;

    if-nez v5, :cond_7

    move-object v5, v4

    goto :goto_5

    :cond_7
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 49
    :goto_5
    check-cast v5, La7/a;

    if-eqz v5, :cond_9

    .line 50
    iget-boolean v5, v5, La7/a;->d:Z

    if-eqz v5, :cond_9

    if-nez v2, :cond_8

    .line 51
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2, p1}, Ljava/util/BitSet;-><init>(I)V

    .line 52
    :cond_8
    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 53
    :cond_a
    iput-object v2, p0, Lz6/b;->y:Ljava/util/BitSet;

    .line 54
    iget-object p1, p0, Ls6/d;->o:[Lq6/c;

    array-length v0, p1

    new-array v0, v0, [Ljavax/xml/namespace/QName;

    iput-object v0, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    .line 55
    array-length p1, p1

    const/4 v0, -0x1

    :goto_6
    if-ge v1, p1, :cond_f

    .line 56
    iget-object v2, p0, Ls6/d;->o:[Lq6/c;

    aget-object v2, v2, v1

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object v5, v2, Lq6/c;->C:Ljava/util/HashMap;

    if-nez v5, :cond_b

    move-object v5, v4

    goto :goto_7

    :cond_b
    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    :goto_7
    check-cast v5, La7/a;

    if-eqz v5, :cond_c

    .line 60
    iget-object v6, v5, La7/a;->a:Ljava/lang/String;

    if-gez v0, :cond_d

    .line 61
    iget-boolean v5, v5, La7/a;->c:Z

    if-eqz v5, :cond_d

    move v0, v1

    goto :goto_8

    :cond_c
    move-object v6, v4

    .line 62
    :cond_d
    :goto_8
    iget-object v5, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    new-instance v7, Ljavax/xml/namespace/QName;

    if-nez v6, :cond_e

    const-string v6, ""

    .line 63
    :cond_e
    iget-object v2, v2, Lq6/c;->n:Lw5/k;

    .line 64
    iget-object v2, v2, Lw5/k;->l:Ljava/lang/String;

    .line 65
    invoke-direct {v7, v6, v2}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 66
    :cond_f
    iput v0, p0, Lz6/b;->w:I

    return-void
.end method

.method public constructor <init>(Lz6/b;Lf8/p2;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz6/b;->z:I

    .line 16
    iget-object v0, p1, Ls6/d;->q:Ljava/lang/Object;

    invoke-direct {p0, p1, p2, v0}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    .line 17
    iget p2, p1, Lz6/b;->v:I

    iput p2, p0, Lz6/b;->v:I

    .line 18
    iget p2, p1, Lz6/b;->w:I

    iput p2, p0, Lz6/b;->w:I

    .line 19
    iget-object p2, p1, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    .line 20
    iget-object p1, p1, Lz6/b;->y:Ljava/util/BitSet;

    iput-object p1, p0, Lz6/b;->y:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lz6/b;Lf8/p2;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lz6/b;->z:I

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V

    .line 2
    iget p2, p1, Lz6/b;->v:I

    iput p2, p0, Lz6/b;->v:I

    .line 3
    iget p2, p1, Lz6/b;->w:I

    iput p2, p0, Lz6/b;->w:I

    .line 4
    iget-object p2, p1, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    .line 5
    iget-object p1, p1, Lz6/b;->y:Ljava/util/BitSet;

    iput-object p1, p0, Lz6/b;->y:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lz6/b;Ljava/util/Set;Ljava/util/Set;I)V
    .locals 0

    iput p4, p0, Lz6/b;->z:I

    .line 6
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;Ljava/util/Set;Ljava/util/Set;)V

    .line 7
    iget p2, p1, Lz6/b;->v:I

    iput p2, p0, Lz6/b;->v:I

    .line 8
    iget p2, p1, Lz6/b;->w:I

    iput p2, p0, Lz6/b;->w:I

    .line 9
    iget-object p2, p1, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    .line 10
    iget-object p1, p1, Lz6/b;->y:Ljava/util/BitSet;

    iput-object p1, p0, Lz6/b;->y:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lz6/b;Lu6/r;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lz6/b;->z:I

    .line 11
    invoke-direct {p0, p1, p2}, Ls6/d;-><init>(Ls6/d;Lu6/r;)V

    .line 12
    iget p2, p1, Lz6/b;->v:I

    iput p2, p0, Lz6/b;->v:I

    .line 13
    iget p2, p1, Lz6/b;->w:I

    iput p2, p0, Lz6/b;->w:I

    .line 14
    iget-object p2, p1, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    .line 15
    iget-object p1, p1, Lz6/b;->y:Ljava/util/BitSet;

    iput-object p1, p0, Lz6/b;->y:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lz6/b;[Lq6/c;[Lq6/c;I)V
    .locals 0

    iput p4, p0, Lz6/b;->z:I

    .line 21
    invoke-direct {p0, p1, p2, p3}, Ls6/d;-><init>(Ls6/d;[Lq6/c;[Lq6/c;)V

    .line 22
    iget p2, p1, Lz6/b;->v:I

    iput p2, p0, Lz6/b;->v:I

    .line 23
    iget p2, p1, Lz6/b;->w:I

    iput p2, p0, Lz6/b;->w:I

    .line 24
    iget-object p2, p1, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    iput-object p2, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    .line 25
    iget-object p1, p1, Lz6/b;->y:Ljava/util/BitSet;

    iput-object p1, p0, Lz6/b;->y:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;Lr6/u;)V
    .locals 2

    invoke-virtual {p4}, Ln6/e;->c()Lr5/s0;

    move-result-object v0

    sget-object v1, Lr5/s0;->l:Lr5/s0;

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lz6/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz6/a;->t:Z

    invoke-super/range {p0 .. p5}, Ls6/d;->i(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;Lr6/u;)V

    iget p0, p0, Lz6/b;->v:I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, v0, Lz6/a;->t:Z

    :cond_0
    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Ls6/d;->i(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;Lr6/u;)V

    return-void
.end method

.method public isUnwrappingSerializer()Z
    .locals 1

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lb6/u;->isUnwrappingSerializer()Z

    move-result p0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Ls6/d;
    .locals 1

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-nez v0, :cond_0

    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Lr6/b;

    invoke-direct {v0, p0}, Lr6/b;-><init>(Ls6/d;)V

    move-object p0, v0

    :cond_0
    :pswitch_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 12

    const-string v0, "[anySetter]"

    instance-of v1, p2, Lz6/a;

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    move-object v1, p2

    check-cast v1, Lz6/a;

    iget-object v2, p0, Ls6/d;->p:[Lq6/c;

    if-eqz v2, :cond_1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    iget-object v2, p0, Ls6/d;->o:[Lq6/c;

    iget-boolean v3, v1, Lz6/a;->t:Z

    iget v4, p0, Lz6/b;->v:I

    if-lez v4, :cond_2

    const/4 v5, 0x1

    iput-boolean v5, v1, Lz6/a;->t:Z

    :cond_2
    iget-object v5, p0, Lz6/b;->x:[Ljavax/xml/namespace/QName;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_0
    array-length v8, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_7

    if-ne v9, v4, :cond_4

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {p0}, Lb6/u;->isUnwrappingSerializer()Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_1

    :catch_0
    move v7, v9

    goto :goto_3

    :catch_1
    move-exception p0

    move v7, v9

    goto :goto_5

    :cond_3
    :goto_1
    iput-boolean v7, v1, Lz6/a;->t:Z

    :cond_4
    aget-object v10, v5, v9

    aget-object v10, v2, v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_6

    iget-object v11, p0, Lz6/b;->y:Ljava/util/BitSet;

    if-eqz v11, :cond_5

    :try_start_2
    invoke-virtual {v11, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v10, p1, v1, p3}, Lq6/c;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v10, p1, v1, p3}, Lq6/c;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_7
    return-void

    :catch_2
    :goto_3
    new-instance p0, Lb6/p;

    const-string p3, "Infinite recursion (StackOverflowError)"

    invoke-direct {p0, p2, p3, v6}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    array-length p2, v2

    if-ne v7, p2, :cond_8

    goto :goto_4

    :cond_8
    aget-object p2, v2, v7

    iget-object p2, p2, Lq6/c;->n:Lw5/k;

    iget-object v0, p2, Lw5/k;->l:Ljava/lang/String;

    :goto_4
    new-instance p2, Lb6/o;

    invoke-direct {p2, p1, v0}, Lb6/o;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lb6/p;->f(Lb6/o;)V

    throw p0

    :catch_3
    move-exception p0

    :goto_5
    array-length p2, v2

    if-ne v7, p2, :cond_9

    goto :goto_6

    :cond_9
    aget-object p2, v2, v7

    iget-object p2, p2, Lq6/c;->n:Lw5/k;

    iget-object v0, p2, Lw5/k;->l:Ljava/lang/String;

    :goto_6
    invoke-static {p3, p0, p1, v0}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    throw v6
.end method

.method public final p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    instance-of v0, p2, Lz6/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Ls6/d;->p:[Lq6/c;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Ls6/d;->q:Ljava/lang/Object;

    invoke-virtual {p0, p3, p1}, Ls6/n0;->e(Lb6/r0;Ljava/lang/Object;)V

    throw v1

    :cond_1
    invoke-super {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    throw v1
.end method

.method public final q(Ljava/util/Set;Ljava/util/Set;)Ls6/d;
    .locals 2

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lz6/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lz6/b;-><init>(Lz6/b;Ljava/util/Set;Ljava/util/Set;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lz6/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lz6/b;-><init>(Lz6/b;Ljava/util/Set;Ljava/util/Set;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final r(Ljava/lang/Object;)Ls6/d;
    .locals 3

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lz6/b;

    iget-object v1, p0, Ls6/d;->s:Lf8/p2;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lz6/b;-><init>(Lz6/b;Lf8/p2;Ljava/lang/Object;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lz6/b;

    iget-object v1, p0, Ls6/d;->s:Lf8/p2;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lz6/b;-><init>(Lz6/b;Lf8/p2;Ljava/lang/Object;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Lf8/p2;)Ls6/d;
    .locals 3

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lz6/b;

    iget-object v1, p0, Ls6/d;->q:Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lz6/b;-><init>(Lz6/b;Lf8/p2;Ljava/lang/Object;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lz6/b;

    invoke-direct {v0, p0, p1}, Lz6/b;-><init>(Lz6/b;Lf8/p2;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Ls6/d;->k(Ljava/lang/Object;Ls5/g;Lb6/r0;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ls5/g;->n0()V

    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lz6/b;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    invoke-virtual {p2}, Ls5/g;->R()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lz6/b;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ls6/d;->k(Ljava/lang/Object;Ls5/g;Lb6/r0;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1, p2, p3}, Lz6/b;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :goto_1
    return-void

    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lz6/b;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    const/4 p0, 0x0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ls6/d;->j(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :cond_0
    invoke-virtual {p4}, Ln6/e;->c()Lr5/s0;

    move-result-object v0

    sget-object v1, Lr5/s0;->l:Lr5/s0;

    if-ne v0, v1, :cond_2

    move-object v0, p2

    check-cast v0, Lz6/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lz6/a;->t:Z

    invoke-super {p0, p1, p2, p3, p4}, Ls6/d;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    iget p0, p0, Lz6/b;->v:I

    if-nez p0, :cond_1

    const/4 p0, 0x0

    iput-boolean p0, v0, Lz6/a;->t:Z

    :cond_1
    return-void

    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Ls6/d;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void
.end method

.method public final t([Lq6/c;[Lq6/c;)Ls6/d;
    .locals 2

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lz6/b;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lz6/b;-><init>(Lz6/b;[Lq6/c;[Lq6/c;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lz6/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lz6/b;-><init>(Lz6/b;[Lq6/c;[Lq6/c;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "XmlBeanSerializer for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UnwrappingXmlBeanSerializer for "

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final unwrappingSerializer(Lu6/r;)Lb6/u;
    .locals 1

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lz6/b;

    invoke-direct {v0, p0, p1}, Lz6/b;-><init>(Lz6/b;Lu6/r;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lz6/b;

    invoke-direct {v0, p0, p1}, Lz6/b;-><init>(Lz6/b;Lu6/r;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic withFilterId(Ljava/lang/Object;)Lb6/u;
    .locals 1

    iget v0, p0, Lz6/b;->z:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lz6/b;->r(Ljava/lang/Object;)Ls6/d;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lz6/b;->r(Ljava/lang/Object;)Ls6/d;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
