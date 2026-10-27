.class public final Lj6/u;
.super Lj6/s;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final m:Lj6/t;

.field public static final n:Lj6/t;

.field public static final o:Lj6/t;

.field public static final p:Lj6/t;

.field public static final q:Lj6/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lt6/k;->s0(Ljava/lang/Class;)Lt6/k;

    move-result-object v1

    new-instance v2, Lj6/c;

    invoke-direct {v2, v0}, Lj6/c;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    invoke-static {v1, v0, v2}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object v1

    sput-object v1, Lj6/u;->m:Lj6/t;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lt6/k;->s0(Ljava/lang/Class;)Lt6/k;

    move-result-object v2

    new-instance v3, Lj6/c;

    invoke-direct {v3, v1}, Lj6/c;-><init>(Ljava/lang/Class;)V

    invoke-static {v2, v0, v3}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object v1

    sput-object v1, Lj6/u;->n:Lj6/t;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lt6/k;->s0(Ljava/lang/Class;)Lt6/k;

    move-result-object v2

    new-instance v3, Lj6/c;

    invoke-direct {v3, v1}, Lj6/c;-><init>(Ljava/lang/Class;)V

    invoke-static {v2, v0, v3}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object v1

    sput-object v1, Lj6/u;->o:Lj6/t;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1}, Lt6/k;->s0(Ljava/lang/Class;)Lt6/k;

    move-result-object v2

    new-instance v3, Lj6/c;

    invoke-direct {v3, v1}, Lj6/c;-><init>(Ljava/lang/Class;)V

    invoke-static {v2, v0, v3}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object v1

    sput-object v1, Lj6/u;->p:Lj6/t;

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lt6/k;->s0(Ljava/lang/Class;)Lt6/k;

    move-result-object v2

    new-instance v3, Lj6/c;

    invoke-direct {v3, v1}, Lj6/c;-><init>(Ljava/lang/Class;)V

    invoke-static {v2, v0, v3}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object v0

    sput-object v0, Lj6/u;->q:Lj6/t;

    return-void
.end method

.method public static j(Ld6/n;Lb6/l;)Lj6/t;
    .locals 2

    invoke-virtual {p1}, Lb6/l;->c0()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Lt6/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v0}, Lu6/h;->u(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0, p1, p0}, Lj6/u;->l(Ld6/m;Lb6/l;Lj6/w;)Lj6/c;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static k(Ld6/m;Lb6/l;)Lj6/t;
    .locals 2

    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    goto :goto_1

    :cond_1
    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_8

    goto :goto_2

    :cond_2
    invoke-static {v0}, Lu6/h;->u(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-class p0, Ljava/lang/Object;

    if-ne v0, p0, :cond_3

    sget-object p0, Lj6/u;->q:Lj6/t;

    return-object p0

    :cond_3
    const-class p0, Ljava/lang/String;

    if-ne v0, p0, :cond_4

    sget-object p0, Lj6/u;->m:Lj6/t;

    return-object p0

    :cond_4
    const-class p0, Ljava/lang/Integer;

    if-ne v0, p0, :cond_5

    :goto_0
    sget-object p0, Lj6/u;->o:Lj6/t;

    return-object p0

    :cond_5
    const-class p0, Ljava/lang/Long;

    if-ne v0, p0, :cond_6

    :goto_1
    sget-object p0, Lj6/u;->p:Lj6/t;

    return-object p0

    :cond_6
    const-class p0, Ljava/lang/Boolean;

    if-ne v0, p0, :cond_8

    :goto_2
    sget-object p0, Lj6/u;->n:Lj6/t;

    return-object p0

    :cond_7
    const-class v1, Lb6/q;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Lj6/c;

    invoke-direct {v1, v0}, Lj6/c;-><init>(Ljava/lang/Class;)V

    invoke-static {p1, p0, v1}, Lj6/t;->f(Lb6/l;Ld6/m;Lj6/c;)Lj6/t;

    move-result-object p0

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method

.method public static l(Ld6/m;Lb6/l;Lj6/w;)Lj6/c;
    .locals 13

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    instance-of v1, p1, Lt6/a;

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Ld6/n;

    iget-object v1, v1, Ld6/n;->n:Lj6/j0;

    invoke-virtual {v1, v0}, Lj6/j0;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    new-instance p0, Lj6/c;

    invoke-direct {p0, v0}, Lj6/c;-><init>(Ljava/lang/Class;)V

    return-object p0

    :cond_1
    new-instance v1, Lf7/q;

    invoke-direct {v1, p0, p1, p2}, Lf7/q;-><init>(Ld6/m;Lb6/l;Lj6/w;)V

    new-instance v5, Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1, v5, v2}, Lf7/q;->e(Lb6/l;Ljava/util/ArrayList;Z)V

    goto :goto_0

    :cond_2
    invoke-static {p1, v5, v2}, Lf7/q;->f(Lb6/l;Ljava/util/ArrayList;Z)V

    :cond_3
    :goto_0
    new-instance v2, Lj6/c;

    iget-object v0, v1, Lf7/q;->e:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Ljava/lang/Class;

    iget-object v0, v1, Lf7/q;->f:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {v1, v5}, Lf7/q;->h(Ljava/util/List;)Lu6/b;

    move-result-object v7

    iget-object v0, v1, Lf7/q;->d:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lt6/o;

    iget-object v0, v1, Lf7/q;->b:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Lb6/d;

    iget-object p0, p0, Ld6/m;->m:Ld6/a;

    iget-object v11, p0, Ld6/a;->l:Lt6/p;

    iget-boolean v12, v1, Lf7/q;->a:Z

    move-object v3, p1

    move-object v10, p2

    invoke-direct/range {v2 .. v12}, Lj6/c;-><init>(Lb6/l;Ljava/lang/Class;Ljava/util/List;Ljava/lang/Class;Lu6/b;Lt6/o;Lb6/d;Lj6/w;Lt6/p;Z)V

    return-object v2
.end method

.method public static m(Ld6/n;Lb6/l;Ld6/n;Z)Lj6/e0;
    .locals 7

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    invoke-static {p0, p1, p2}, Lj6/u;->l(Ld6/m;Lb6/l;Lj6/w;)Lj6/c;

    move-result-object v5

    iget-object p2, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p2}, Lu6/h;->x(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, v0, Ld6/a;->p:Lj6/q;

    new-instance p2, Lj6/z;

    invoke-direct {p2, p0, v5}, Lj6/z;-><init>(Ld6/n;Lj6/c;)V

    :goto_0
    move-object v6, p2

    goto :goto_1

    :cond_0
    iget-object p2, v0, Ld6/a;->p:Lj6/q;

    new-instance p2, Lf8/v3;

    const-string v0, "set"

    invoke-direct {p2, p0, v0}, Lf8/v3;-><init>(Ld6/m;Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    new-instance v1, Lj6/e0;

    move-object v2, p0

    move-object v4, p1

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lj6/e0;-><init>(Ld6/m;ZLb6/l;Lj6/c;Lf8/v3;)V

    return-object v1
.end method
