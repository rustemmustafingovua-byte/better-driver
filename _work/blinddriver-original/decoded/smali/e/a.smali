.class public final Le/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lob/a;


# instance fields
.field public l:Ljava/io/Serializable;

.field public volatile m:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object p1, p0, Le/a;->l:Ljava/io/Serializable;

    return-void

    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a;->l:Ljava/io/Serializable;

    const/4 p1, 0x0

    iput-object p1, p0, Le/a;->m:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 12

    iget-object v0, p0, Le/a;->m:Ljava/lang/Object;

    check-cast v0, Lyb/c;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Le/a;->l:Ljava/io/Serializable;

    check-cast v0, Ljava/util/ArrayList;

    new-instance v1, Lbd/d;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Lbd/d;-><init>(I)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lyb/c;

    add-int/lit8 v5, v3, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyb/c;

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_2
    new-instance v4, Lyb/a;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lyb/c;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lyb/c;

    invoke-direct {v4}, Lyb/c;-><init>()V

    iput-object v6, v4, Lyb/a;->c:Lyb/c;

    iput-object v5, v4, Lyb/a;->d:Lyb/c;

    iget-wide v7, v6, Lyb/c;->a:D

    iget-wide v9, v5, Lyb/c;->a:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    iput-wide v7, v4, Lyb/c;->a:D

    iget-wide v6, v6, Lyb/c;->b:D

    iget-wide v8, v5, Lyb/c;->b:D

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v5

    iput-wide v5, v4, Lyb/c;->b:D

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyb/c;

    iput-object v0, p0, Le/a;->m:Ljava/lang/Object;

    return-void

    :cond_4
    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_0
.end method

.method public c(Lpb/a;)I
    .locals 7

    iget-object v0, p0, Le/a;->m:Ljava/lang/Object;

    check-cast v0, Lb6/g0;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Le/a;->m:Ljava/lang/Object;

    check-cast v0, Lb6/g0;

    if-nez v0, :cond_0

    new-instance v0, Lb6/g0;

    iget-object v1, p0, Le/a;->l:Ljava/io/Serializable;

    check-cast v1, Lpb/i;

    invoke-direct {v0, v1}, Lb6/g0;-><init>(Lpb/i;)V

    iput-object v0, p0, Le/a;->m:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Le/a;->l:Ljava/io/Serializable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_1
    :goto_2
    new-instance v0, Lja/o;

    invoke-direct {v0, p1}, Lja/o;-><init>(Lpb/a;)V

    new-instance v6, Lm2/j;

    const/16 v1, 0x15

    invoke-direct {v6, v1, v0}, Lm2/j;-><init>(ILjava/lang/Object;)V

    iget-object p0, p0, Le/a;->m:Ljava/lang/Object;

    check-cast p0, Lb6/g0;

    iget-wide v2, p1, Lpb/a;->m:D

    iget-boolean p1, p0, Lb6/g0;->l:Z

    if-eqz p1, :cond_2

    goto :goto_4

    :cond_2
    iget-object p0, p0, Lb6/g0;->m:Ljava/lang/Object;

    check-cast p0, Le/a;

    monitor-enter p0

    :try_start_2
    iget-object p1, p0, Le/a;->m:Ljava/lang/Object;

    check-cast p1, Lyb/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_3

    monitor-exit p0

    goto :goto_3

    :cond_3
    :try_start_3
    iget-object p1, p0, Le/a;->l:Ljava/io/Serializable;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_4

    monitor-exit p0

    goto :goto_3

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Le/a;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    :goto_3
    iget-object p1, p0, Le/a;->m:Ljava/lang/Object;

    check-cast p1, Lyb/c;

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p0, p0, Le/a;->m:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, Lyb/c;

    move-wide v4, v2

    invoke-virtual/range {v1 .. v6}, Lyb/c;->a(DDLm2/j;)V

    :goto_4
    iget-boolean p0, v0, Lja/o;->b:Z

    const/4 p1, 0x1

    if-eqz p0, :cond_6

    return p1

    :cond_6
    iget p0, v0, Lja/o;->a:I

    const/4 v0, 0x2

    rem-int/2addr p0, v0

    if-ne p0, p1, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0

    :catchall_1
    move-exception v0

    move-object p1, v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p1
.end method
