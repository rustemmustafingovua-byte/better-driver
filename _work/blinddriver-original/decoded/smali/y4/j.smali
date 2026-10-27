.class public abstract Ly4/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Schedulers"

    invoke-static {v0}, Lx4/t;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ly4/j;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lg5/q;Lx4/j;Ljava/util/ArrayList;)V
    .locals 4

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lg5/o;

    iget-object v3, v3, Lg5/o;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v3}, Lg5/q;->j(JLjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lx4/a;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 3

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->u()Lg5/q;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->c()V

    :try_start_0
    invoke-virtual {v0}, Lg5/q;->d()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lx4/a;->d:Lx4/j;

    invoke-static {v0, v2, v1}, Ly4/j;->a(Lg5/q;Lx4/j;Ljava/util/ArrayList;)V

    iget v2, p0, Lx4/a;->k:I

    invoke-virtual {v0, v2}, Lg5/q;->c(I)Ljava/util/ArrayList;

    move-result-object v2

    iget-object p0, p0, Lx4/a;->d:Lx4/j;

    invoke-static {v0, p0, v2}, Ly4/j;->a(Lg5/q;Lx4/j;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Lg5/q;->b()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->k()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lg5/o;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lg5/o;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly4/g;

    invoke-interface {v1}, Ly4/g;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, p1}, Ly4/g;->d([Lg5/o;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lg5/o;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lg5/o;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ly4/g;

    invoke-interface {p2}, Ly4/g;->a()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p2, p0}, Ly4/g;->d([Lg5/o;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroidx/work/impl/WorkDatabase;->k()V

    throw p0

    :cond_4
    :goto_2
    return-void
.end method
