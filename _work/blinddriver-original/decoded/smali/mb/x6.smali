.class public final Lmb/x6;
.super Lmb/x;
.source "SourceFile"


# instance fields
.field public I:[Lmb/x;

.field public final synthetic J:Lmb/m0;

.field public final synthetic K:Lmb/v5;

.field public final synthetic L:Lmb/a7;


# direct methods
.method public constructor <init>(Lmb/a7;Lmb/m0;Lmb/v5;)V
    .locals 0

    iput-object p1, p0, Lmb/x6;->L:Lmb/a7;

    iput-object p2, p0, Lmb/x6;->J:Lmb/m0;

    iput-object p3, p0, Lmb/x6;->K:Lmb/v5;

    invoke-direct {p0}, Lmb/x;-><init>()V

    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 1

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v0, p0, Lmb/y2;

    if-nez v0, :cond_1

    instance-of v0, p0, Lmb/b4;

    if-eqz v0, :cond_0

    check-cast p0, Lmb/b4;

    iget-object p0, p0, Lmb/m0;->b:[Lmb/x3;

    const-string v0, "abstract"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final C()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final E()Z
    .locals 0

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of p0, p0, Lmb/f2;

    return p0
.end method

.method public final F()Z
    .locals 1

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v0, p0, Lmb/b4;

    if-eqz v0, :cond_0

    check-cast p0, Lmb/b4;

    iget-object p0, p0, Lmb/m0;->b:[Lmb/x3;

    const-string v0, "final"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, La/a;->l([Lmb/x3;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final G()Z
    .locals 0

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of p0, p0, Lmb/y2;

    return p0
.end method

.method public final H()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final I()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v1, v0, Lmb/q3;

    if-eqz v1, :cond_0

    check-cast v0, Lmb/q3;

    iget-object p0, v0, Lmb/m0;->b:[Lmb/x3;

    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result p0

    return p0

    :cond_0
    instance-of v1, v0, Lmb/m4;

    if-eqz v1, :cond_1

    check-cast v0, Lmb/m4;

    iget-object p0, v0, Lmb/m0;->b:[Lmb/x3;

    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result p0

    return p0

    :cond_1
    instance-of v1, v0, Lmb/s3;

    if-eqz v1, :cond_2

    check-cast v0, Lmb/s3;

    iget-object p0, v0, Lmb/m0;->b:[Lmb/x3;

    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result p0

    return p0

    :cond_2
    instance-of v1, v0, Lmb/o4;

    if-eqz v1, :cond_3

    check-cast v0, Lmb/o4;

    iget-object p0, v0, Lmb/m0;->b:[Lmb/x3;

    invoke-static {p0}, La/a;->b([Lmb/x3;)I

    move-result p0

    return p0

    :cond_3
    instance-of v1, v0, Lmb/t0;

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    instance-of v1, v0, Lmb/e3;

    if-eqz v1, :cond_5

    :goto_0
    const/4 p0, 0x4

    return p0

    :cond_5
    new-instance v1, Lhb/b;

    iget-object p0, p0, Lmb/x6;->K:Lmb/v5;

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v1
.end method

.method public final f()Lmb/x;
    .locals 2

    new-instance v0, Lhb/b;

    iget-object p0, p0, Lmb/x6;->K:Lmb/v5;

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    const-string v1, "SNO: Non-array type has no component type"

    invoke-direct {v0, p0, v1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final g()[Lmb/x;
    .locals 8

    iget-object v0, p0, Lmb/x6;->I:[Lmb/x;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmb/x6;->K:Lmb/v5;

    check-cast v0, Lmb/m0;

    iget-object v0, v0, Lmb/m0;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lmb/x;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lmb/t3;

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lmb/x6;->L:Lmb/a7;

    invoke-virtual {v7, v5}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v6

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lmb/x6;->I:[Lmb/x;

    return-object v1
.end method

.method public final h()[Lmb/f6;
    .locals 7

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v1, v0, Lmb/e0;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast v0, Lmb/e0;

    invoke-virtual {v0}, Lmb/e0;->A()[Lmb/s1;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Lmb/f6;

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lmb/s1;->k:Lmb/f6;

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Lmb/f6;

    iget-object v5, v3, Lmb/l0;->c:Lmb/v5;

    iget-object v6, p0, Lmb/x6;->L:Lmb/a7;

    invoke-virtual {v6, v5}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    invoke-direct {v4, v6, v5, v3}, Lmb/f6;-><init>(Lmb/a7;Lmb/x;Lmb/s1;)V

    iput-object v4, v3, Lmb/s1;->k:Lmb/f6;

    :goto_1
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-array p0, v2, [Lmb/f6;

    return-object p0
.end method

.method public final i()[Lmb/s;
    .locals 14

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v1, v0, Lmb/e0;

    const-class v2, Lmb/k2;

    iget-object v4, p0, Lmb/x6;->L:Lmb/a7;

    if-eqz v1, :cond_2

    move-object p0, v0

    check-cast p0, Lmb/e0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lmb/e0;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-static {p0, v2}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lkb/c;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmb/k2;

    invoke-static {v4, v2}, Lmb/a7;->b(Lmb/a7;Lmb/k2;)[Lmb/s;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    instance-of p0, v0, Lmb/f2;

    if-eqz p0, :cond_1

    move-object v6, v0

    check-cast v6, Lmb/f2;

    invoke-interface {v6}, Lmb/f2;->e()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lmb/e2;

    new-instance v9, Lmb/c5;

    move-object v5, v6

    check-cast v5, Lmb/m0;

    iget-object v5, v5, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v4, v6}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v7

    invoke-direct {v9, v5, v7}, Lmb/c5;-><init>(Lhb/c;Lmb/b0;)V

    iget-object v11, v3, Lmb/e2;->l:Ljava/lang/String;

    new-instance v3, Lmb/u6;

    invoke-virtual {v4, v6}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object v5

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct/range {v3 .. v13}, Lmb/u6;-><init>(Lmb/a7;Lmb/x;Lmb/v5;IZLmb/s5;ILjava/lang/String;ZLmb/x0;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/s;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/s;

    return-object p0

    :cond_2
    instance-of v1, v0, Lmb/y2;

    if-eqz v1, :cond_4

    check-cast v0, Lmb/y2;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lmb/y2;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, v2}, Lb6/g;->o(Ljava/util/Iterator;Ljava/lang/Class;)Lkb/c;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lkb/c;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lkb/c;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmb/k2;

    invoke-static {v4, v1}, Lmb/a7;->b(Lmb/a7;Lmb/k2;)[Lmb/s;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lmb/s;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/s;

    return-object p0

    :cond_4
    new-instance v0, Lhb/b;

    iget-object p0, p0, Lmb/x6;->K:Lmb/v5;

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    const-string v1, "SNO: AbstractTypeDeclaration is neither ClassDeclaration nor InterfaceDeclaration"

    invoke-direct {v0, p0, v1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final l()[Lmb/v;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lmb/x6;->J:Lmb/m0;

    iget-object v2, v1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, v1, Lmb/m0;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lmb/u3;

    iget-object v5, p0, Lmb/x6;->L:Lmb/a7;

    invoke-virtual {v5, v4}, Lmb/a7;->e2(Lmb/u3;)Lmb/v;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmb/x6;->K:Lmb/v5;

    instance-of v1, v1, Lmb/f2;

    if-eqz v1, :cond_1

    new-instance v1, Lmb/w6;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lmb/w6;-><init>(Lmb/x6;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lmb/w6;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lmb/w6;-><init>(Lmb/x6;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Lmb/v;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/v;

    return-object p0
.end method

.method public final n()Lmb/x;
    .locals 2

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    :goto_0
    instance-of v1, v0, Lmb/u5;

    if-nez v1, :cond_1

    instance-of v1, v0, Lmb/q1;

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lmb/a5;->b()Lmb/a5;

    move-result-object v0

    check-cast v0, Lmb/m0;

    iget-object p0, p0, Lmb/x6;->L:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final p()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    invoke-interface {p0}, Lmb/v5;->h()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lmb/o;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final r()[Lmb/r;
    .locals 6

    iget-object v0, p0, Lmb/x6;->K:Lmb/v5;

    invoke-interface {v0}, Lmb/q0;->getAnnotations()[Lmb/r0;

    move-result-object v0

    array-length v1, v0

    new-array v2, v1, [Lmb/r;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    iget-object v5, p0, Lmb/x6;->L:Lmb/a7;

    invoke-virtual {v5, v4}, Lmb/a7;->d2(Lmb/r0;)Lmb/r;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public final u()[Lmb/x;
    .locals 8

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v1, v0, Lmb/t0;

    const/4 v2, 0x0

    iget-object v3, p0, Lmb/x6;->L:Lmb/a7;

    if-eqz v1, :cond_1

    check-cast v0, Lmb/t0;

    iget-object p0, v0, Lmb/t0;->l:Lmb/s5;

    invoke-virtual {v3, p0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    check-cast p0, Lmb/x;

    invoke-virtual {p0}, Lmb/x;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lmb/x;

    aput-object p0, v0, v2

    return-object v0

    :cond_0
    new-array p0, v2, [Lmb/x;

    return-object p0

    :cond_1
    instance-of v1, v0, Lmb/b4;

    const/4 v4, 0x0

    const-string v5, "\""

    iget-object p0, p0, Lmb/x6;->K:Lmb/v5;

    if-eqz v1, :cond_4

    check-cast v0, Lmb/b4;

    iget-object v1, v0, Lmb/b4;->n:[Lmb/s5;

    array-length v1, v1

    new-array v6, v1, [Lmb/x;

    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v7, v0, Lmb/b4;->n:[Lmb/s5;

    aget-object v7, v7, v2

    invoke-virtual {v3, v7}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v7

    check-cast v7, Lmb/x;

    aput-object v7, v6, v2

    invoke-virtual {v7}, Lmb/x;->G()Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v6, v2

    invoke-virtual {v1}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not an interface; classes can only implement interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v3, p0, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_3
    return-object v6

    :cond_4
    instance-of v1, v0, Lmb/y2;

    if-eqz v1, :cond_7

    check-cast v0, Lmb/y2;

    iget-object v1, v0, Lmb/y2;->j:[Lmb/s5;

    array-length v1, v1

    new-array v6, v1, [Lmb/x;

    :goto_1
    if-ge v2, v1, :cond_6

    iget-object v7, v0, Lmb/y2;->j:[Lmb/s5;

    aget-object v7, v7, v2

    invoke-virtual {v3, v7}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v7

    check-cast v7, Lmb/x;

    aput-object v7, v6, v2

    invoke-virtual {v7}, Lmb/x;->G()Z

    move-result v7

    if-eqz v7, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v1, v6, v2

    invoke-virtual {v1}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is not an interface; interfaces can only extend interfaces"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v3, p0, v0}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_6
    return-object v6

    :cond_7
    new-instance v0, Lhb/b;

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    const-string v1, "SNO: AbstractTypeDeclaration is neither ClassDeclaration nor InterfaceDeclaration"

    invoke-direct {v0, p0, v1}, Lhb/b;-><init>(Lhb/c;Ljava/lang/String;)V

    throw v0
.end method

.method public final w()Lmb/x;
    .locals 1

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    invoke-static {v0}, Lmb/a7;->Q0(Lmb/v5;)Lmb/m0;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lmb/x6;->L:Lmb/a7;

    invoke-virtual {p0, v0}, Lmb/a7;->Z1(Lmb/v5;)Lmb/x;

    move-result-object p0

    return-object p0
.end method

.method public final y()Lmb/x;
    .locals 5

    iget-object v0, p0, Lmb/x6;->L:Lmb/a7;

    iget-object v1, v0, Lmb/a7;->h:Lmb/b;

    iget-object v2, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v3, v2, Lmb/f2;

    if-eqz v3, :cond_0

    iget-object p0, v1, Lmb/a0;->h:Lmb/x;

    return-object p0

    :cond_0
    instance-of v3, v2, Lmb/t0;

    if-eqz v3, :cond_2

    check-cast v2, Lmb/t0;

    iget-object p0, v2, Lmb/t0;->l:Lmb/s5;

    invoke-virtual {v0, p0}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object p0

    check-cast p0, Lmb/x;

    invoke-virtual {p0}, Lmb/x;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, v1, Lmb/a0;->n:Lmb/x;

    :cond_1
    return-object p0

    :cond_2
    instance-of v3, v2, Lmb/b4;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    check-cast v2, Lmb/b4;

    iget-object v2, v2, Lmb/b4;->m:Lmb/s5;

    if-nez v2, :cond_3

    iget-object p0, v1, Lmb/a0;->n:Lmb/x;

    return-object p0

    :cond_3
    invoke-virtual {v0, v2}, Lmb/a7;->Z0(Lmb/s5;)Lmb/b0;

    move-result-object v1

    check-cast v1, Lmb/x;

    invoke-virtual {v1}, Lmb/x;->G()Z

    move-result v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" is an interface; classes can only extend a class"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lmb/x6;->K:Lmb/v5;

    check-cast p0, Lmb/m0;

    iget-object p0, p0, Lmb/m0;->a:Lhb/c;

    invoke-virtual {v0, p0, v1}, Lmb/a7;->R(Lhb/c;Ljava/lang/String;)V

    throw v4

    :cond_5
    return-object v4
.end method

.method public final z()[Lmb/s;
    .locals 1

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    instance-of v0, p0, Lmb/e0;

    if-eqz v0, :cond_0

    check-cast p0, Lmb/e0;

    iget-object p0, p0, Lmb/e0;->k:Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lmb/s;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lmb/s;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [Lmb/s;

    return-object p0
.end method
