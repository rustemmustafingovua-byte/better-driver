.class public final Lc2/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# instance fields
.field public final a:Lo0/f3;


# direct methods
.method public constructor <init>(Lo0/f3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/w0;->a:Lo0/f3;

    return-void
.end method


# virtual methods
.method public final e(Lc2/p;Ljava/util/List;I)I
    .locals 14

    invoke-static {p1}, Le2/l;->i(Lc2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc2/q0;

    new-instance v10, Lc2/i;

    sget-object v11, Lc2/q;->l:Lc2/q;

    sget-object v12, Lc2/r;->l:Lc2/r;

    const/4 v13, 0x0

    invoke-direct {v10, v9, v11, v12, v13}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    move/from16 v2, p3

    invoke-static {v3, v2, v0}, Lb3/b;->b(III)J

    move-result-wide v2

    new-instance v0, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lo0/f3;->a(Lc2/t0;Ljava/util/ArrayList;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lc2/w0;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lc2/w0;

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    iget-object p1, p1, Lc2/w0;->a:Lo0/f3;

    invoke-static {p0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public final f(Lc2/p;Ljava/util/List;I)I
    .locals 14

    invoke-static {p1}, Le2/l;->i(Lc2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc2/q0;

    new-instance v10, Lc2/i;

    sget-object v11, Lc2/q;->m:Lc2/q;

    sget-object v12, Lc2/r;->l:Lc2/r;

    const/4 v13, 0x0

    invoke-direct {v10, v9, v11, v12, v13}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x7

    move/from16 v2, p3

    invoke-static {v3, v2, v0}, Lb3/b;->b(III)J

    move-result-wide v2

    new-instance v0, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lo0/f3;->a(Lc2/t0;Ljava/util/ArrayList;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->e()I

    move-result p0

    return p0
.end method

.method public final g(Lc2/p;Ljava/util/List;I)I
    .locals 14

    invoke-static {p1}, Le2/l;->i(Lc2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc2/q0;

    new-instance v10, Lc2/i;

    sget-object v11, Lc2/q;->l:Lc2/q;

    sget-object v12, Lc2/r;->m:Lc2/r;

    const/4 v13, 0x0

    invoke-direct {v10, v9, v11, v12, v13}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    move/from16 v2, p3

    invoke-static {v2, v3, v0}, Lb3/b;->b(III)J

    move-result-wide v2

    new-instance v0, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lo0/f3;->a(Lc2/t0;Ljava/util/ArrayList;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public final h(Lc2/p;Ljava/util/List;I)I
    .locals 14

    invoke-static {p1}, Le2/l;->i(Lc2/p;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v6, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v7

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_0

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc2/q0;

    new-instance v10, Lc2/i;

    sget-object v11, Lc2/q;->m:Lc2/q;

    sget-object v12, Lc2/r;->m:Lc2/r;

    const/4 v13, 0x0

    invoke-direct {v10, v9, v11, v12, v13}, Lc2/i;-><init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xd

    move/from16 v2, p3

    invoke-static {v2, v3, v0}, Lb3/b;->b(III)J

    move-result-wide v2

    new-instance v0, Lc2/t;

    invoke-interface {p1}, Lc2/p;->getLayoutDirection()Lb3/m;

    move-result-object v4

    invoke-direct {v0, p1, v4}, Lc2/t;-><init>(Lc2/p;Lb3/m;)V

    invoke-virtual {p0, v0, v1, v2, v3}, Lo0/f3;->a(Lc2/t0;Ljava/util/ArrayList;J)Lc2/s0;

    move-result-object p0

    invoke-interface {p0}, Lc2/s0;->d()I

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 0

    invoke-static {p1}, Le2/l;->i(Lc2/p;)Ljava/util/ArrayList;

    move-result-object p2

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {p0, p1, p2, p3, p4}, Lo0/f3;->a(Lc2/t0;Ljava/util/ArrayList;J)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiContentMeasurePolicyImpl(measurePolicy="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lc2/w0;->a:Lo0/f3;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
