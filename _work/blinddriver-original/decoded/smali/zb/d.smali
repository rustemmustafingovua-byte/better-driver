.class public final Lzb/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final p:Lbd/d;

.field public static final q:Lbd/d;


# instance fields
.field public l:Lzb/c;

.field public m:Z

.field public n:Ljava/util/ArrayList;

.field public o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lbd/d;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lbd/d;-><init>(I)V

    sput-object v0, Lzb/d;->p:Lbd/d;

    new-instance v0, Lbd/d;

    const/16 v1, 0xe

    invoke-direct {v0, v1}, Lbd/d;-><init>(I)V

    sput-object v0, Lzb/d;->q:Lbd/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lzb/d;->m:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzb/d;->n:Ljava/util/ArrayList;

    const/16 v0, 0xa

    iput v0, p0, Lzb/d;->o:I

    return-void
.end method

.method public static e(Ljava/lang/Object;Lzb/c;Ljava/util/ArrayList;)V
    .locals 4

    iget-object p1, p1, Lzb/c;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzb/a;

    invoke-interface {v1}, Lzb/a;->getBounds()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lpb/h;

    move-object v3, p0

    check-cast v3, Lpb/h;

    invoke-virtual {v2, v3}, Lpb/h;->h(Lpb/h;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    instance-of v2, v1, Lzb/c;

    if-eqz v2, :cond_1

    check-cast v1, Lzb/c;

    invoke-static {p0, v1, p2}, Lzb/d;->e(Ljava/lang/Object;Lzb/c;Ljava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lzb/b;

    if-eqz v2, :cond_2

    check-cast v1, Lzb/b;

    iget-object v1, v1, Lzb/b;->m:Ljava/lang/Object;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Ly4/s;->D(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lzb/d;->m:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lzb/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v0, Lzb/c;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lzb/c;->l:Ljava/util/ArrayList;

    iput-object v1, v0, Lzb/c;->m:Lpb/h;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lzb/d;->n:Ljava/util/ArrayList;

    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lzb/d;->b(ILjava/util/ArrayList;)Lzb/c;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lzb/d;->l:Lzb/c;

    iput-object v1, p0, Lzb/d;->n:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lzb/d;->m:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final b(ILjava/util/ArrayList;)Lzb/c;
    .locals 16

    move-object/from16 v0, p0

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ly4/s;->w(Ljava/lang/String;Z)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    invoke-static {v3, v4}, Ly4/s;->w(Ljava/lang/String;Z)V

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-double v4, v4

    iget v6, v0, Lzb/d;->o:I

    int-to-double v7, v6

    div-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    new-instance v5, Ljava/util/ArrayList;

    move-object/from16 v7, p2

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v7, Lzb/d;->p:Lbd/d;

    invoke-static {v5, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    int-to-double v7, v4

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v4, v7

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    int-to-double v7, v7

    int-to-double v9, v4

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    new-array v8, v4, [Ljava/util/List;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v4, :cond_1

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    aput-object v11, v8, v10

    const/4 v11, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    if-ge v11, v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lzb/a;

    aget-object v13, v8, v10

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    if-lez v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    :goto_2
    invoke-static {v3, v5}, Ly4/s;->w(Ljava/lang/String;Z)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v4, :cond_6

    aget-object v10, v8, v7

    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    move-result v11

    xor-int/2addr v11, v2

    invoke-static {v3, v11}, Ly4/s;->w(Ljava/lang/String;Z)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lzb/c;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lzb/c;->l:Ljava/util/ArrayList;

    iput-object v3, v12, Lzb/c;->m:Lpb/h;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v10, Lzb/d;->q:Lbd/d;

    invoke-static {v12, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v13, 0x0

    :goto_4
    if-ge v13, v10, :cond_5

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lzb/a;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int/2addr v15, v2

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lzb/c;

    iget-object v15, v15, Lzb/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ne v15, v6, :cond_3

    new-instance v15, Lzb/c;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v15, Lzb/c;->l:Ljava/util/ArrayList;

    iput-object v3, v15, Lzb/c;->m:Lpb/h;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v2

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lzb/c;

    iget-object v15, v9, Lzb/c;->m:Lpb/h;

    if-nez v15, :cond_4

    move v15, v2

    goto :goto_5

    :cond_4
    const/4 v15, 0x0

    :goto_5
    invoke-static {v3, v15}, Ly4/s;->w(Ljava/lang/String;Z)V

    iget-object v9, v9, Lzb/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_5
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v2, :cond_7

    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzb/c;

    return-object v0

    :cond_7
    invoke-virtual {v0, v1, v5}, Lzb/d;->b(ILjava/util/ArrayList;)Lzb/c;

    move-result-object v0

    return-object v0
.end method

.method public final c(Lpb/h;Ljava/lang/Object;)V
    .locals 2

    invoke-virtual {p1}, Lpb/h;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lzb/d;->m:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot insert items into an STR packed R-tree after it has been built."

    invoke-static {v1, v0}, Ly4/s;->w(Ljava/lang/String;Z)V

    iget-object p0, p0, Lzb/d;->n:Ljava/util/ArrayList;

    new-instance v0, Lzb/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lzb/b;->l:Lpb/h;

    iput-object p2, v0, Lzb/b;->m:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Lpb/h;)Ljava/util/ArrayList;
    .locals 2

    invoke-virtual {p0}, Lzb/d;->a()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v1, p0, Lzb/d;->m:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lzb/d;->n:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lzb/d;->l:Lzb/c;

    iget-object v1, v1, Lzb/c;->l:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lzb/d;->l:Lzb/c;

    invoke-virtual {v1}, Lzb/c;->getBounds()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpb/h;

    invoke-virtual {v1, p1}, Lpb/h;->h(Lpb/h;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lzb/d;->l:Lzb/c;

    invoke-static {p1, p0, v0}, Lzb/d;->e(Ljava/lang/Object;Lzb/c;Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-object v0
.end method
