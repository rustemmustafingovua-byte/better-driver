.class public final Le6/a;
.super Lb6/n;
.source "SourceFile"

# interfaces
.implements Le6/k;
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Lb6/l;

.field public final m:Lf6/r;

.field public final n:Ljava/util/Map;

.field public final transient o:Ljava/util/Map;

.field public final p:Z

.field public final q:Z

.field public final r:Z

.field public final s:Z


# direct methods
.method public constructor <init>(Le6/a;Lf6/r;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object v0, p1, Le6/a;->l:Lb6/l;

    iput-object v0, p0, Le6/a;->l:Lb6/l;

    .line 3
    iget-object v0, p1, Le6/a;->n:Ljava/util/Map;

    iput-object v0, p0, Le6/a;->n:Ljava/util/Map;

    .line 4
    iget-boolean v0, p1, Le6/a;->p:Z

    iput-boolean v0, p0, Le6/a;->p:Z

    .line 5
    iget-boolean v0, p1, Le6/a;->q:Z

    iput-boolean v0, p0, Le6/a;->q:Z

    .line 6
    iget-boolean v0, p1, Le6/a;->r:Z

    iput-boolean v0, p0, Le6/a;->r:Z

    .line 7
    iget-boolean p1, p1, Le6/a;->s:Z

    iput-boolean p1, p0, Le6/a;->s:Z

    .line 8
    iput-object p2, p0, Le6/a;->m:Lf6/r;

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Le6/a;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Le6/g;Lj6/t;Ljava/util/HashMap;Ljava/util/Map;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iget-object p2, p2, Lj6/t;->a:Lb6/l;

    .line 12
    iput-object p2, p0, Le6/a;->l:Lb6/l;

    .line 13
    iget-object p1, p1, Le6/g;->l:Ljava/lang/Object;

    check-cast p1, Lf6/r;

    .line 14
    iput-object p1, p0, Le6/a;->m:Lf6/r;

    .line 15
    iput-object p3, p0, Le6/a;->n:Ljava/util/Map;

    .line 16
    iput-object p4, p0, Le6/a;->o:Ljava/util/Map;

    .line 17
    iget-object p1, p2, Lb6/l;->o:Ljava/lang/Class;

    .line 18
    const-class p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    iput-boolean p2, p0, Le6/a;->p:Z

    .line 19
    sget-object p2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eq p1, p2, :cond_1

    const-class p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p4

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p3

    :goto_1
    iput-boolean p2, p0, Le6/a;->q:Z

    .line 20
    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_3

    const-class p2, Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move p2, p4

    goto :goto_3

    :cond_3
    :goto_2
    move p2, p3

    :goto_3
    iput-boolean p2, p0, Le6/a;->r:Z

    .line 21
    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, p2, :cond_5

    const-class p2, Ljava/lang/Double;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move p3, p4

    :cond_5
    :goto_4
    iput-boolean p3, p0, Le6/a;->s:Z

    return-void
.end method

.method public constructor <init>(Lj6/t;)V
    .locals 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object p1, p1, Lj6/t;->a:Lb6/l;

    .line 24
    iput-object p1, p0, Le6/a;->l:Lb6/l;

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Le6/a;->m:Lf6/r;

    .line 26
    iput-object v0, p0, Le6/a;->n:Ljava/util/Map;

    .line 27
    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    .line 28
    const-class v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    iput-boolean v0, p0, Le6/a;->p:Z

    .line 29
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Le6/a;->q:Z

    .line 30
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v0, v1

    :goto_3
    iput-boolean v0, p0, Le6/a;->r:Z

    .line 31
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/lang/Double;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move v1, v2

    :cond_5
    :goto_4
    iput-boolean v1, p0, Le6/a;->s:Z

    return-void
.end method


# virtual methods
.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 8

    iget-object v0, p1, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ld6/m;->d()Lb6/d;

    move-result-object v0

    iget-object v1, p0, Le6/a;->o:Ljava/util/Map;

    if-eqz p2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {p2}, Lb6/f;->d()Lj6/h;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lb6/d;->D(Lj6/a;)Lj6/d0;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p1, v2}, Lb6/g;->C(Lj6/d0;)V

    invoke-virtual {v0, p2, v2}, Lb6/d;->E(Lj6/a;Lj6/d0;)Lj6/d0;

    move-result-object p2

    iget-object v0, p2, Lj6/d0;->b:Ljava/lang/Class;

    iget-object v4, p2, Lj6/d0;->a:Lb6/i0;

    const-class v2, Lr5/f1;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_2

    iget-object v0, v4, Lb6/i0;->l:Ljava/lang/String;

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le6/y;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v0, v1, Le6/y;->o:Lb6/l;

    new-instance v2, Lf6/w;

    iget-object p2, p2, Lj6/d0;->d:Ljava/lang/Class;

    invoke-direct {v2, p2}, Lr5/f1;-><init>(Ljava/lang/Class;)V

    move-object v7, v1

    move-object v3, v0

    move-object v5, v2

    goto :goto_1

    :cond_1
    iget-object p0, p0, Le6/a;->l:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {p0}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid Object Id definition for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": cannot find property with name "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v3

    :cond_2
    invoke-virtual {p1, p2}, Lb6/g;->C(Lj6/d0;)V

    invoke-virtual {p1, v0}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v0

    invoke-virtual {p1}, Lb6/i;->u()Lt6/p;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v1, Lr5/d1;

    invoke-static {v0, v1}, Lt6/p;->n(Lb6/l;Ljava/lang/Class;)[Lb6/l;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, p2}, Lb6/g;->B(Lj6/d0;)Lr5/d1;

    move-result-object v2

    move-object v7, v3

    move-object v5, v2

    move-object v3, v0

    :goto_1
    invoke-virtual {p1, v3}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object v6

    new-instance v2, Lf6/r;

    invoke-direct/range {v2 .. v7}, Lf6/r;-><init>(Lb6/l;Lb6/i0;Lr5/d1;Lb6/n;Le6/y;)V

    new-instance p1, Le6/a;

    invoke-direct {p1, p0, v2}, Le6/a;-><init>(Le6/a;Lf6/r;)V

    return-object p1

    :cond_3
    if-nez v1, :cond_4

    return-object p0

    :cond_4
    new-instance p1, Le6/a;

    iget-object p2, p0, Le6/a;->m:Lf6/r;

    invoke-direct {p1, p0, p2}, Le6/a;-><init>(Le6/a;Lf6/r;)V

    return-object p1
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    new-instance p1, Le6/b0;

    iget-object p0, p0, Le6/a;->l:Lb6/l;

    invoke-direct {p1, p0}, Le6/b0;-><init>(Lb6/l;)V

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "abstract types either need to be mapped to concrete types, have custom deserializer, or contain additional type information"

    invoke-virtual {p2, p0, p1, v1, v0}, Lb6/i;->c0(Ljava/lang/Class;Le6/c0;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Le6/a;->m:Lf6/r;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-boolean v3, v2, Ls5/n;->s:Z

    if-nez v3, :cond_1

    sget-object v3, Ls5/n;->u:Ls5/n;

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v2

    :cond_0
    sget-object v3, Ls5/n;->y:Ls5/n;

    if-ne v2, v3, :cond_2

    iget-object v1, v1, Lf6/r;->n:Lr5/d1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object p0, v1, Lf6/r;->o:Lb6/n;

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    iget-object p1, v1, Lf6/r;->n:Lr5/d1;

    invoke-virtual {p2, p0, p1}, Lb6/i;->X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v1

    iget-boolean v2, p0, Le6/a;->q:Z

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_3

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_1
    if-eqz v2, :cond_3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :pswitch_2
    iget-boolean p0, p0, Le6/a;->s:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    iget-boolean p0, p0, Le6/a;->r:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ls5/k;->X()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    iget-boolean p0, p0, Le6/a;->p:Z

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    return-object v0

    :cond_4
    invoke-virtual {p3, p1, p2}, Ln6/d;->d(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final findBackReference(Ljava/lang/String;)Le6/y;
    .locals 0

    iget-object p0, p0, Le6/a;->n:Ljava/util/Map;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le6/y;

    return-object p0
.end method

.method public final getObjectIdReader()Lf6/r;
    .locals 0

    iget-object p0, p0, Le6/a;->m:Lf6/r;

    return-object p0
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Le6/a;->l:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    return-object p0
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->o:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
