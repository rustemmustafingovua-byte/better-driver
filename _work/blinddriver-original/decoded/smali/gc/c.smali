.class public final Lgc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpb/a;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lpb/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgc/c;->b:Ljava/util/ArrayList;

    iput-object p1, p0, Lgc/c;->a:Lpb/a;

    return-void
.end method


# virtual methods
.method public final a()Lg5/l;
    .locals 13

    const/4 v0, 0x0

    iget-object v1, p0, Lgc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v0, Lg5/l;

    const/4 v2, 0x6

    invoke-direct {v0, v2}, Lg5/l;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lg5/l;->n:Ljava/lang/Object;

    iget-object p0, p0, Lgc/c;->a:Lpb/a;

    iput-object p0, v0, Lg5/l;->m:Ljava/lang/Object;

    const/4 p0, 0x0

    move v2, p0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_f

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc/b;

    iget v4, v3, Lgc/b;->m:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-lt v2, v4, :cond_0

    goto/16 :goto_b

    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgc/b;

    add-int/lit8 v6, v2, 0x1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lgc/b;

    iget-boolean v7, v4, Lgc/b;->l:Z

    iget-boolean v8, v6, Lgc/b;->l:Z

    if-ne v7, v8, :cond_e

    iget v4, v4, Lgc/b;->n:I

    iget v6, v6, Lgc/b;->n:I

    if-ne v4, v6, :cond_e

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc/b;

    move v6, v2

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgc/b;

    iget-boolean v8, v3, Lgc/b;->l:Z

    iget-boolean v9, v7, Lgc/b;->l:Z

    if-ne v8, v9, :cond_1

    iget v8, v3, Lgc/b;->n:I

    iget v7, v7, Lgc/b;->n:I

    if-ne v8, v7, :cond_1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lbd/d;

    const/4 v6, 0x2

    invoke-direct {v3, v6}, Lbd/d;-><init>(I)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgc/b;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, p0

    :cond_2
    :goto_2
    if-ge v8, v7, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lgc/b;

    invoke-virtual {v3, v9}, Lgc/b;->a(Lgc/b;)I

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v3, v9

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v5, :cond_4

    goto/16 :goto_9

    :cond_4
    move v3, p0

    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgc/b;

    iget v7, v7, Lgc/b;->o:I

    if-nez v7, :cond_5

    :goto_4
    move v7, v3

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v3, -0x1

    goto :goto_4

    :goto_5
    if-gez v7, :cond_9

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgc/b;

    move v8, p0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v9, v10, :cond_7

    move v10, p0

    goto :goto_7

    :cond_7
    move v10, v9

    :goto_7
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lgc/b;

    invoke-virtual {v8, p0}, Lgc/b;->b(I)Lpb/a;

    move-result-object v8

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgc/b;

    invoke-virtual {v10, v5}, Lgc/b;->b(I)Lpb/a;

    move-result-object v10

    invoke-static {v7, v8, v10}, La/a;->h(Lgc/b;Lpb/a;Lpb/a;)Lgc/b;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v9

    goto :goto_6

    :cond_8
    move-object v6, v3

    goto :goto_9

    :cond_9
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v3, v7

    :cond_a
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgc/b;

    invoke-virtual {v9, p0}, Lgc/b;->b(I)Lpb/a;

    move-result-object v10

    add-int/2addr v3, v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v3, v11, :cond_b

    :goto_8
    move v3, p0

    :cond_b
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgc/b;

    iget v11, v11, Lgc/b;->o:I

    if-nez v11, :cond_d

    invoke-virtual {v9, v5}, Lgc/b;->b(I)Lpb/a;

    move-result-object v11

    invoke-static {v9, v10, v11}, La/a;->h(Lgc/b;Lpb/a;Lpb/a;)Lgc/b;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v3, v7, :cond_a

    move-object v6, v8

    :goto_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v5, p0

    :goto_a
    if-ge v5, v3, :cond_c

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v5, v5, 0x1

    check-cast v7, Lgc/b;

    invoke-virtual {v0, v7}, Lg5/l;->h(Lgc/b;)V

    goto :goto_a

    :cond_c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    move v2, v3

    goto/16 :goto_0

    :cond_d
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lgc/b;

    invoke-virtual {v11, v5}, Lgc/b;->b(I)Lpb/a;

    move-result-object v12

    invoke-static {v9, v10, v12}, La/a;->h(Lgc/b;Lpb/a;Lpb/a;)Lgc/b;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v11, p0}, Lgc/b;->b(I)Lpb/a;

    move-result-object v10

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lt v3, v11, :cond_b

    goto :goto_8

    :cond_e
    :goto_b
    invoke-virtual {v0, v3}, Lg5/l;->h(Lgc/b;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_f
    return-object v0
.end method

.method public final b(Z)Lpb/i;
    .locals 4

    iget-object p0, p0, Lgc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lgc/b;

    iget-boolean v3, v2, Lgc/b;->l:Z

    if-ne v3, p1, :cond_0

    iget-object v2, v2, Lgc/b;->t:Lpb/i;

    if-eqz v2, :cond_0

    return-object v2

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
