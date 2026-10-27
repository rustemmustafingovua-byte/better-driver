.class public Lo6/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr5/t0;

.field public b:Lr5/s0;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Ljava/lang/Boolean;

.field public f:Ljava/lang/Class;

.field public g:Lo6/p;


# direct methods
.method public static d(Ld6/m;)Ls5/u;
    .locals 1

    iget-object v0, p0, Ld6/m;->m:Ld6/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lb6/x;->V:Lb6/x;

    invoke-virtual {p0, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ln6/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-object p0

    :cond_0
    sget-object p0, Lo6/j;->l:Lo6/j;

    return-object p0
.end method


# virtual methods
.method public final a(Lb6/h;Lb6/l;Ljava/util/ArrayList;)Lo6/a;
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    iget-object v3, v0, Lo6/n;->a:Lr5/t0;

    sget-object v4, Lr5/t0;->m:Lr5/t0;

    const/4 v7, 0x0

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v8, v2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    return-object v7

    :cond_1
    invoke-static {p1}, Lo6/n;->d(Ld6/m;)Ls5/u;

    move-result-object v3

    iget-object v9, v1, Ld6/m;->m:Ld6/a;

    iget-object v4, v0, Lo6/n;->a:Lr5/t0;

    sget-object v5, Lr5/t0;->n:Lr5/t0;

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v4, v5, :cond_2

    sget-object v5, Lr5/t0;->o:Lr5/t0;

    if-ne v4, v5, :cond_3

    :cond_2
    invoke-virtual {v3, p2}, Ls5/u;->b(Lb6/l;)I

    move-result v4

    if-eq v4, v10, :cond_13

    if-ne v4, v11, :cond_3

    sget-object v3, Lo6/j;->l:Lo6/j;

    :cond_3
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lo6/n;->c(Ld6/m;Lb6/l;Ls5/u;Ljava/util/Collection;ZZ)Lo6/p;

    move-result-object v3

    move-object v4, v1

    move-object v1, v2

    iget-object v2, v0, Lo6/n;->f:Ljava/lang/Class;

    if-eqz v2, :cond_8

    const-class v6, Ljava/lang/Void;

    if-eq v2, v6, :cond_7

    const-class v6, Lc6/o;

    if-ne v2, v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p2, v2}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, v0, Lo6/n;->f:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Lb6/l;->g0(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v9, Ld6/a;->l:Lt6/p;

    iget-object v6, v0, Lo6/n;->f:Ljava/lang/Class;

    invoke-virtual {v2, p2, v6, v5}, Lt6/p;->k(Lb6/l;Ljava/lang/Class;Z)Lb6/l;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object v2, v0, Lo6/n;->f:Ljava/lang/Class;

    invoke-virtual {p2, v2}, Lb6/l;->Z(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_1
    move-object v2, v1

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v6, v9, Ld6/a;->l:Lt6/p;

    invoke-virtual {v6, v2}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v2

    goto :goto_3

    :cond_8
    sget-object v2, Lb6/x;->E:Lb6/x;

    invoke-virtual {p1, v2}, Ld6/m;->m(Lb6/x;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2}, Lb6/l;->a0()Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_1

    :cond_9
    move-object v2, v7

    :goto_3
    iget-object v6, v0, Lo6/n;->a:Lr5/t0;

    sget-object v7, Lr5/t0;->p:Lr5/t0;

    if-ne v6, v7, :cond_a

    new-instance v0, Lo6/b;

    move-object v5, v3

    move-object v3, v2

    move-object v2, v5

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lo6/b;-><init>(Lb6/l;Lo6/p;Lb6/l;Lb6/h;Ljava/util/Collection;)V

    return-object v0

    :cond_a
    move-object v1, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v4

    iget-object v4, v0, Lo6/n;->b:Lr5/s0;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_f

    if-eq v4, v11, :cond_e

    if-eq v4, v10, :cond_d

    const/4 v6, 0x3

    if-eq v4, v6, :cond_c

    const/4 v6, 0x4

    if-ne v4, v6, :cond_b

    goto :goto_4

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lo6/n;->b:Lr5/s0;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Lo6/e;

    move-object v5, v3

    iget-object v3, v0, Lo6/n;->c:Ljava/lang/String;

    iget-boolean v4, v0, Lo6/n;->d:Z

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lo6/a;-><init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;I)V

    return-object v0

    :cond_d
    move-object v5, v3

    new-instance v1, Lo6/a;

    iget-object v3, v0, Lo6/n;->c:Ljava/lang/String;

    iget-boolean v4, v0, Lo6/n;->d:Z

    const/4 v6, 0x0

    move-object v0, v1

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lo6/a;-><init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;I)V

    return-object v0

    :cond_e
    move-object v5, v3

    new-instance v1, Lo6/a;

    iget-object v3, v0, Lo6/n;->c:Ljava/lang/String;

    iget-boolean v4, v0, Lo6/n;->d:Z

    const/4 v6, 0x1

    move-object v0, v1

    move-object v1, p2

    invoke-direct/range {v0 .. v6}, Lo6/a;-><init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;I)V

    return-object v0

    :cond_f
    :goto_4
    new-instance v4, Lo6/g;

    move v6, v5

    move-object v5, v3

    iget-object v3, v0, Lo6/n;->c:Ljava/lang/String;

    move-object v7, v4

    iget-boolean v4, v0, Lo6/n;->d:Z

    move v9, v6

    iget-object v6, v0, Lo6/n;->b:Lr5/s0;

    iget-object v10, v0, Lo6/n;->e:Ljava/lang/Boolean;

    if-eqz v10, :cond_10

    invoke-virtual {p2}, Lb6/l;->b0()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v0, v0, Lo6/n;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_5
    move-object v1, p2

    move-object v0, v7

    move v7, v11

    goto :goto_7

    :cond_10
    sget-object v0, Lb6/x;->G:Lb6/x;

    invoke-virtual {p1, v0}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_6
    goto :goto_5

    :cond_11
    invoke-static {p1, v8}, Lf7/q;->i(Ld6/m;Ljava/lang/Class;)Lj6/c;

    move-result-object v0

    invoke-virtual {p1}, Ld6/m;->d()Lb6/d;

    move-result-object v8

    invoke-virtual {v8, p1, v0}, Lb6/d;->H(Ld6/m;Lj6/a;)Lr5/v0;

    move-result-object v0

    if-eqz v0, :cond_12

    goto :goto_6

    :cond_12
    move-object v1, p2

    move-object v0, v7

    move v7, v9

    :goto_7
    invoke-direct/range {v0 .. v7}, Lo6/g;-><init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;Lr5/s0;Z)V

    return-object v0

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8}, Lu6/h;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Configured `PolymorphicTypeValidator` (of type "

    const-string v4, ") denied resolution of all subtypes of base type "

    invoke-static {v3, v1, v4, v2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Lb6/p0;Lb6/l;Ljava/util/ArrayList;)Lo6/r;
    .locals 10

    iget-object v0, p0, Lo6/n;->a:Lr5/t0;

    sget-object v1, Lr5/t0;->m:Lr5/t0;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v2

    :cond_1
    iget-object v0, p0, Lo6/n;->a:Lr5/t0;

    sget-object v1, Lr5/t0;->p:Lr5/t0;

    if-ne v0, v1, :cond_2

    sget-object p0, Lo6/c;->d:Lo6/c;

    return-object p0

    :cond_2
    invoke-static {p1}, Lo6/n;->d(Ld6/m;)Ls5/u;

    move-result-object v6

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v9}, Lo6/n;->c(Ld6/m;Lb6/l;Ls5/u;Ljava/util/Collection;ZZ)Lo6/p;

    move-result-object p0

    iget-object p1, v3, Lo6/n;->b:Lr5/s0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_5

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    new-instance p1, Lo6/d;

    iget-object p2, v3, Lo6/n;->c:Ljava/lang/String;

    invoke-direct {p1, p0, v2, p2}, Lo6/h;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object p1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Do not know how to construct standard type serializer for inclusion type: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, v3, Lo6/n;->b:Lr5/s0;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Lo6/f;

    iget-object p2, v3, Lo6/n;->c:Ljava/lang/String;

    invoke-direct {p1, p0, v2, p2}, Lo6/f;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object p1

    :cond_5
    new-instance p1, Lo6/c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v2, p2}, Lo6/c;-><init>(Lo6/p;Lb6/f;I)V

    return-object p1

    :cond_6
    new-instance p1, Lo6/c;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v2, p2}, Lo6/c;-><init>(Lo6/p;Lb6/f;I)V

    return-object p1

    :cond_7
    new-instance p1, Lo6/h;

    iget-object p2, v3, Lo6/n;->c:Ljava/lang/String;

    invoke-direct {p1, p0, v2, p2}, Lo6/h;-><init>(Lo6/p;Lb6/f;Ljava/lang/String;)V

    return-object p1
.end method

.method public c(Ld6/m;Lb6/l;Ls5/u;Ljava/util/Collection;ZZ)Lo6/p;
    .locals 6

    iget-object v0, p0, Lo6/n;->g:Lo6/p;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lo6/n;->a:Lr5/t0;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    const/4 v2, 0x1

    if-eq v0, v2, :cond_17

    const/4 v2, 0x2

    if-eq v0, v2, :cond_16

    const/4 v2, 0x3

    const/16 v3, 0x2e

    const/4 v4, 0x4

    if-eq v0, v2, :cond_c

    if-eq v0, v4, :cond_2

    const/4 p5, 0x5

    if-ne v0, p5, :cond_1

    goto/16 :goto_6

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Do not know how to construct standard type id resolver for idType: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lo6/n;->a:Lr5/t0;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eq p5, p6, :cond_b

    if-eqz p5, :cond_3

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    :goto_0
    sget-object p3, Lb6/x;->N:Lb6/x;

    invoke-virtual {p1, p3}, Ld6/m;->m(Lb6/x;)Z

    move-result p3

    if-eqz p4, :cond_a

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_4
    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6/c;

    iget-object v2, v0, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ln6/c;->a()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, v0, Ln6/c;->n:Ljava/lang/String;

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/16 v5, 0x24

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    if-gez v4, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-eqz p5, :cond_7

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    if-eqz p6, :cond_4

    if-eqz p3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb6/l;

    if-eqz v4, :cond_9

    iget-object v4, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p1, v2}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_a
    new-instance p3, Lo6/l;

    invoke-direct {p3, p1, p2, p0, v1}, Lo6/l;-><init>(Ld6/m;Lb6/l;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;)V

    return-object p3

    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_c
    if-eq p5, p6, :cond_15

    if-eqz p5, :cond_d

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    goto :goto_3

    :cond_d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    :goto_3
    sget-object p3, Lb6/x;->N:Lb6/x;

    invoke-virtual {p1, p3}, Ld6/m;->m(Lb6/x;)Z

    move-result p3

    if-eqz p4, :cond_14

    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_e
    :goto_4
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln6/c;

    iget-object v2, v0, Ln6/c;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ln6/c;->a()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v0, v0, Ln6/c;->n:Ljava/lang/String;

    goto :goto_5

    :cond_f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-gez v4, :cond_10

    goto :goto_5

    :cond_10
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    if-eqz p5, :cond_11

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_11
    if-eqz p6, :cond_e

    if-eqz p3, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_12
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lb6/l;

    if-eqz v4, :cond_13

    iget-object v4, v4, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_13

    goto :goto_4

    :cond_13
    invoke-virtual {p1, v2}, Ld6/m;->c(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_14
    new-instance p3, Lo6/q;

    invoke-direct {p3, p1, p2, p0, v1}, Lo6/q;-><init>(Ld6/m;Lb6/l;Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/HashMap;)V

    return-object p3

    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_16
    new-instance p0, Lo6/k;

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    iget-object p1, p1, Ld6/a;->l:Lt6/p;

    invoke-direct {p0, p2, p1, p4, p3}, Lo6/k;-><init>(Lb6/l;Lt6/p;Ljava/util/Collection;Ls5/u;)V

    return-object p0

    :cond_17
    :goto_6
    new-instance p0, Lo6/i;

    iget-object p1, p1, Ld6/m;->m:Ld6/a;

    iget-object p1, p1, Ld6/a;->l:Lt6/p;

    invoke-direct {p0, p2, p1, p4, p3}, Lo6/i;-><init>(Lb6/l;Lt6/p;Ljava/util/Collection;Ls5/u;)V

    return-object p0

    :cond_18
    return-object v1

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Cannot build, \'init()\' not yet called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final e(Lr5/v0;)V
    .locals 3

    iget-object v0, p1, Lr5/v0;->l:Lr5/t0;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lo6/n;->a:Lr5/t0;

    iget-object v1, p1, Lr5/v0;->m:Lr5/s0;

    iput-object v1, p0, Lo6/n;->b:Lr5/s0;

    iget-object v1, p1, Lr5/v0;->n:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, v0, Lr5/t0;->l:Ljava/lang/String;

    :cond_1
    iput-object v1, p0, Lo6/n;->c:Ljava/lang/String;

    iget-object v0, p1, Lr5/v0;->o:Ljava/lang/Class;

    iput-object v0, p0, Lo6/n;->f:Ljava/lang/Class;

    iget-boolean v0, p1, Lr5/v0;->p:Z

    iput-boolean v0, p0, Lo6/n;->d:Z

    iget-object p1, p1, Lr5/v0;->q:Ljava/lang/Boolean;

    iput-object p1, p0, Lo6/n;->e:Ljava/lang/Boolean;

    return-void
.end method
