.class public final Lg6/v1;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/s;
.implements Le6/k;


# static fields
.field public static final w:[Ljava/lang/Object;


# instance fields
.field public o:Lb6/n;

.field public p:Lb6/n;

.field public q:Lb6/n;

.field public r:Lb6/n;

.field public final s:Lb6/w;

.field public final t:Lb6/l;

.field public final u:Lb6/l;

.field public final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Lg6/v1;->w:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lb6/l;Lb6/l;)V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lg6/v1;->t:Lb6/l;

    .line 3
    iput-object p2, p0, Lg6/v1;->u:Lb6/l;

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lg6/v1;->v:Z

    return-void
.end method

.method public constructor <init>(Lg6/v1;Lb6/w;)V
    .locals 1

    .line 14
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 15
    iget-object v0, p1, Lg6/v1;->o:Lb6/n;

    iput-object v0, p0, Lg6/v1;->o:Lb6/n;

    .line 16
    iget-object v0, p1, Lg6/v1;->p:Lb6/n;

    iput-object v0, p0, Lg6/v1;->p:Lb6/n;

    .line 17
    iget-object v0, p1, Lg6/v1;->q:Lb6/n;

    iput-object v0, p0, Lg6/v1;->q:Lb6/n;

    .line 18
    iget-object v0, p1, Lg6/v1;->r:Lb6/n;

    iput-object v0, p0, Lg6/v1;->r:Lb6/n;

    .line 19
    iget-object v0, p1, Lg6/v1;->t:Lb6/l;

    iput-object v0, p0, Lg6/v1;->t:Lb6/l;

    .line 20
    iget-object v0, p1, Lg6/v1;->u:Lb6/l;

    iput-object v0, p0, Lg6/v1;->u:Lb6/l;

    .line 21
    iget-boolean p1, p1, Lg6/v1;->v:Z

    iput-boolean p1, p0, Lg6/v1;->v:Z

    .line 22
    iput-object p2, p0, Lg6/v1;->s:Lb6/w;

    return-void
.end method

.method public constructor <init>(Lg6/v1;Z)V
    .locals 1

    .line 5
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 6
    iget-object v0, p1, Lg6/v1;->o:Lb6/n;

    iput-object v0, p0, Lg6/v1;->o:Lb6/n;

    .line 7
    iget-object v0, p1, Lg6/v1;->p:Lb6/n;

    iput-object v0, p0, Lg6/v1;->p:Lb6/n;

    .line 8
    iget-object v0, p1, Lg6/v1;->q:Lb6/n;

    iput-object v0, p0, Lg6/v1;->q:Lb6/n;

    .line 9
    iget-object v0, p1, Lg6/v1;->r:Lb6/n;

    iput-object v0, p0, Lg6/v1;->r:Lb6/n;

    .line 10
    iget-object v0, p1, Lg6/v1;->t:Lb6/l;

    iput-object v0, p0, Lg6/v1;->t:Lb6/l;

    .line 11
    iget-object v0, p1, Lg6/v1;->u:Lb6/l;

    iput-object v0, p0, Lg6/v1;->u:Lb6/l;

    .line 12
    iget-object p1, p1, Lg6/v1;->s:Lb6/w;

    iput-object p1, p0, Lg6/v1;->s:Lb6/w;

    .line 13
    iput-boolean p2, p0, Lg6/v1;->v:Z

    return-void
.end method


# virtual methods
.method public final Z(Ls5/k;Lb6/i;)Ljava/lang/Number;
    .locals 1

    invoke-virtual {p1}, Ls5/k;->a0()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ls5/k;->w0()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lb6/j;->n:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ls5/k;->T()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x2

    if-ne p0, p2, :cond_2

    invoke-virtual {p1}, Ls5/k;->W()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->U()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, p1, Lb6/i;->q:Lb6/h;

    iget-object v2, v2, Ld6/n;->r:La6/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    invoke-virtual {p1, v2}, Lb6/i;->V(Lb6/l;)Lb6/w;

    move-result-object p1

    invoke-static {p1}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    iget-object p1, p0, Lg6/v1;->q:Lb6/n;

    if-nez p1, :cond_3

    iget-object p1, p0, Lg6/v1;->r:Lb6/n;

    if-nez p1, :cond_3

    iget-object p1, p0, Lg6/v1;->o:Lb6/n;

    if-nez p1, :cond_3

    iget-object p1, p0, Lg6/v1;->p:Lb6/n;

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    new-instance p0, Lg6/x1;

    invoke-direct {p0, v1}, Lg6/x1;-><init>(Z)V

    return-object p0

    :cond_2
    sget-object p0, Lg6/x1;->q:Lg6/x1;

    return-object p0

    :cond_3
    iget-boolean p1, p0, Lg6/v1;->v:Z

    if-eq p2, p1, :cond_4

    new-instance p1, Lg6/v1;

    invoke-direct {p1, p0, p2}, Lg6/v1;-><init>(Lg6/v1;Z)V

    move-object p0, p1

    :cond_4
    if-eqz v0, :cond_5

    new-instance p1, Lg6/v1;

    invoke-direct {p1, p0, v0}, Lg6/v1;-><init>(Lg6/v1;Lb6/w;)V

    return-object p1

    :cond_5
    return-object p0
.end method

.method public final a0(Ls5/k;Lb6/i;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Ls5/r;->m:Ls5/r;

    invoke-virtual {p2, v0}, Lb6/i;->o0(Ls5/r;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v1, p5, Ljava/util/List;

    if-eqz v1, :cond_0

    move-object v1, p5

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    if-eqz p7, :cond_5

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p5

    invoke-interface {p3, p7, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    if-eqz p6, :cond_3

    if-eqz v0, :cond_3

    instance-of p7, p6, Ljava/util/List;

    if-eqz p7, :cond_2

    move-object p7, p6

    check-cast p7, Ljava/util/List;

    invoke-interface {p7, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p4, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p7, Ljava/util/ArrayList;

    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p7, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p7, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p3, p4, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object p5

    iget-object p6, p0, Lg6/v1;->s:Lb6/w;

    if-eqz p6, :cond_4

    if-eqz p5, :cond_4

    invoke-virtual {p6, p2, p5}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    :cond_4
    move-object p7, p5

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b(Lb6/i;)V
    .locals 8

    iget-object v0, p1, Lb6/i;->p:Le6/h;

    iget-object v1, p1, Lb6/i;->o:Le6/o;

    const-class v2, Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v3

    invoke-virtual {p1}, Lb6/i;->u()Lt6/p;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lg6/v1;->t:Lb6/l;

    if-nez v6, :cond_1

    const-class v6, Ljava/util/List;

    invoke-virtual {v4, v2, v6}, Lt6/p;->f(Lb6/l;Ljava/lang/Class;)Lt6/c;

    move-result-object v6

    invoke-virtual {v1, p1, v0, v6}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object v6

    invoke-static {v6}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move-object v6, v5

    :cond_0
    iput-object v6, p0, Lg6/v1;->p:Lb6/n;

    goto :goto_0

    :cond_1
    invoke-virtual {v1, p1, v0, v6}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object v6

    iput-object v6, p0, Lg6/v1;->p:Lb6/n;

    :goto_0
    iget-object v6, p0, Lg6/v1;->u:Lb6/l;

    if-nez v6, :cond_3

    const-class v6, Ljava/util/Map;

    invoke-virtual {v4, v6, v3, v2}, Lt6/p;->j(Ljava/lang/Class;Lb6/l;Lb6/l;)Lt6/g;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-static {v0}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v5

    :cond_2
    iput-object v0, p0, Lg6/v1;->o:Lb6/n;

    goto :goto_1

    :cond_3
    invoke-virtual {v1, p1, v0, v6}, Le6/o;->y(Lb6/i;Le6/h;Lb6/l;)Lb6/n;

    move-result-object v0

    iput-object v0, p0, Lg6/v1;->o:Lb6/n;

    :goto_1
    invoke-virtual {p1, v3}, Lb6/i;->W(Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-static {v0}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move-object v0, v5

    :cond_4
    iput-object v0, p0, Lg6/v1;->q:Lb6/n;

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v4, v0}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb6/i;->W(Lb6/l;)Lb6/n;

    move-result-object v0

    invoke-static {v0}, Lu6/h;->v(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    move-object v0, v5

    :cond_5
    iput-object v0, p0, Lg6/v1;->r:Lb6/n;

    sget-object v0, Lt6/p;->E:Lt6/k;

    iget-object v1, p0, Lg6/v1;->o:Lb6/n;

    invoke-virtual {p1, v1, v5, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v1

    iput-object v1, p0, Lg6/v1;->o:Lb6/n;

    iget-object v1, p0, Lg6/v1;->p:Lb6/n;

    invoke-virtual {p1, v1, v5, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v1

    iput-object v1, p0, Lg6/v1;->p:Lb6/n;

    iget-object v1, p0, Lg6/v1;->q:Lb6/n;

    invoke-virtual {p1, v1, v5, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object v1

    iput-object v1, p0, Lg6/v1;->q:Lb6/n;

    iget-object v1, p0, Lg6/v1;->r:Lb6/n;

    invoke-virtual {p1, v1, v5, v0}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p1

    iput-object p1, p0, Lg6/v1;->r:Lb6/n;

    return-void
.end method

.method public final b0(Ls5/k;Lb6/i;)Ljava/util/ArrayList;
    .locals 8

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->x:Ls5/n;

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    if-ne v3, v1, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v4

    if-ne v4, v1, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v1

    invoke-virtual {v1}, Lf6/v;->l()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v3, v4, v0

    move v3, v2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v2, v0

    array-length v7, v4

    if-lt v3, v7, :cond_3

    invoke-virtual {v1, v4}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    move v3, v5

    :cond_3
    add-int/lit8 v7, v3, 0x1

    aput-object v6, v4, v3

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    sget-object v6, Ls5/n;->x:Ls5/n;

    if-ne v3, v6, :cond_7

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object p1, v1, Lf6/v;->b:Ljava/lang/Object;

    check-cast p1, Lg5/l;

    :goto_1
    if-eqz p1, :cond_5

    iget-object v0, p1, Lg5/l;->m:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    move v3, v5

    :goto_2
    if-ge v3, v2, :cond_4

    aget-object v6, v0, v3

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lg5/l;->n:Ljava/lang/Object;

    check-cast p1, Lg5/l;

    goto :goto_1

    :cond_5
    :goto_3
    if-ge v5, v7, :cond_6

    aget-object p1, v4, v5

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v1}, Lf6/v;->b()V

    invoke-virtual {p2, v1}, Lb6/i;->C0(Lf6/v;)V

    return-object p0

    :cond_7
    move v3, v7

    goto :goto_0
.end method

.method public final c0(Ls5/k;Lb6/i;)[Ljava/lang/Object;
    .locals 6

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->x:Ls5/n;

    if-ne v0, v1, :cond_0

    sget-object p0, Lg6/v1;->w:[Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lb6/i;->q0()Lf6/v;

    move-result-object v0

    invoke-virtual {v0}, Lf6/v;->l()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v4

    array-length v5, v1

    if-lt v3, v5, :cond_1

    invoke-virtual {v0, v1}, Lf6/v;->d([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    :cond_1
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v3

    sget-object v4, Ls5/n;->x:Ls5/n;

    if-ne v3, v4, :cond_2

    iget p0, v0, Lf6/v;->a:I

    add-int/2addr p0, v5

    new-array p1, p0, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v5, p1, v1}, Lf6/v;->a(IILjava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lf6/v;->b()V

    invoke-virtual {p2, v0}, Lb6/i;->C0(Lf6/v;)V

    return-object p1

    :cond_2
    move v3, v5

    goto :goto_0
.end method

.method public final d0(Ls5/k;Lb6/i;)Ljava/util/LinkedHashMap;
    .locals 9

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    sget-object v3, Ls5/n;->u:Ls5/n;

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    sget-object v3, Ls5/n;->y:Ls5/n;

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    sget-object v3, Ls5/n;->v:Ls5/n;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_e

    move-object v1, v4

    :goto_0
    const/4 v3, 0x2

    if-nez v1, :cond_2

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object v0

    :cond_2
    iget-object v8, p0, Lg6/v1;->s:Lb6/w;

    if-eqz v8, :cond_3

    invoke-virtual {v8, p2, v1}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_3
    move-object v4, v1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual/range {p0 .. p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8, p2, v1}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_5
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual/range {p0 .. p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    new-instance v3, Ljava/util/LinkedHashMap;

    const/4 v8, 0x4

    invoke-direct {v3, v8}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lg6/v1;->a0(Ls5/k;Lb6/i;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    return-object v3

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8, p2, v7}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    :cond_8
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lg6/v1;->a0(Ls5/k;Lb6/i;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_9
    move-object v4, v7

    :cond_a
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual/range {p0 .. p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_b

    if-eqz v0, :cond_b

    invoke-virtual {v8, p2, v0}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_b
    move-object v1, p1

    move-object v2, p2

    move-object v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lg6/v1;->a0(Ls5/k;Lb6/i;Ljava/util/LinkedHashMap;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3

    :cond_c
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v1

    if-eqz v8, :cond_d

    if-eqz v1, :cond_d

    invoke-virtual {v8, p2, v1}, Lb6/w;->a(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_d
    move-object v4, v1

    if-nez v4, :cond_a

    return-object v3

    :cond_e
    iget-object v0, p0, Lg6/f1;->l:Ljava/lang/Class;

    invoke-virtual {p2, v0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v4
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    :pswitch_0
    const-class p0, Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v1

    .line 3
    :pswitch_1
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    return-object v1

    .line 4
    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 6
    :pswitch_5
    iget-object v0, p0, Lg6/v1;->r:Lb6/n;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2}, Lg6/v1;->Z(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 9
    :pswitch_6
    iget-object p0, p0, Lg6/v1;->r:Lb6/n;

    if-eqz p0, :cond_1

    .line 10
    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    sget p0, Lg6/f1;->n:I

    invoke-virtual {p2, p0}, Lb6/i;->l0(I)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 12
    invoke-static {p1, p2}, Lg6/f1;->o(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 14
    :pswitch_7
    iget-object p0, p0, Lg6/v1;->q:Lb6/n;

    if-eqz p0, :cond_3

    .line 15
    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 16
    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 17
    :pswitch_8
    sget-object v0, Lb6/j;->q:Lb6/j;

    invoke-virtual {p2, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 18
    invoke-virtual {p0, p1, p2}, Lg6/v1;->c0(Ls5/k;Lb6/i;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 19
    :cond_4
    iget-object v0, p0, Lg6/v1;->p:Lb6/n;

    if-eqz v0, :cond_5

    .line 20
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 21
    :cond_5
    invoke-virtual {p0, p1, p2}, Lg6/v1;->b0(Ls5/k;Lb6/i;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 22
    :pswitch_9
    iget-object v0, p0, Lg6/v1;->o:Lb6/n;

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 24
    :cond_6
    invoke-virtual {p0, p1, p2}, Lg6/v1;->d0(Ls5/k;Lb6/i;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 25
    iget-boolean v0, p0, Lg6/v1;->v:Z

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 27
    :cond_0
    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 28
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 29
    :pswitch_1
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    .line 30
    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 31
    :pswitch_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 32
    :pswitch_5
    iget-object v0, p0, Lg6/v1;->r:Lb6/n;

    if-eqz v0, :cond_1

    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 34
    :cond_1
    invoke-virtual {p0, p1, p2}, Lg6/v1;->Z(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 35
    :pswitch_6
    iget-object p0, p0, Lg6/v1;->r:Lb6/n;

    if-eqz p0, :cond_2

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 37
    :cond_2
    sget p0, Lg6/f1;->n:I

    invoke-virtual {p2, p0}, Lb6/i;->l0(I)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 38
    invoke-static {p1, p2}, Lg6/f1;->o(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 39
    :cond_3
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 40
    :pswitch_7
    iget-object p0, p0, Lg6/v1;->q:Lb6/n;

    if-eqz p0, :cond_4

    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 42
    :cond_4
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 43
    :pswitch_8
    iget-object v0, p0, Lg6/v1;->p:Lb6/n;

    if-eqz v0, :cond_5

    .line 44
    invoke-virtual {v0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 45
    :cond_5
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 46
    check-cast p3, Ljava/util/Collection;

    .line 47
    :goto_0
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->x:Ls5/n;

    if-eq v0, v1, :cond_6

    .line 48
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    return-object p3

    .line 49
    :cond_7
    sget-object p3, Lb6/j;->q:Lb6/j;

    invoke-virtual {p2, p3}, Lb6/i;->n0(Lb6/j;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 50
    invoke-virtual {p0, p1, p2}, Lg6/v1;->c0(Ls5/k;Lb6/i;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 51
    :cond_8
    invoke-virtual {p0, p1, p2}, Lg6/v1;->b0(Ls5/k;Lb6/i;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    .line 52
    :pswitch_9
    iget-object v0, p0, Lg6/v1;->o:Lb6/n;

    if-eqz v0, :cond_9

    .line 53
    invoke-virtual {v0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 54
    :cond_9
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_f

    .line 55
    check-cast p3, Ljava/util/Map;

    .line 56
    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    .line 57
    sget-object v1, Ls5/n;->u:Ls5/n;

    if-ne v0, v1, :cond_a

    .line 58
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    .line 59
    :cond_a
    sget-object v1, Ls5/n;->v:Ls5/n;

    if-ne v0, v1, :cond_b

    goto :goto_2

    .line 60
    :cond_b
    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    .line 61
    :cond_c
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    .line 62
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 63
    invoke-virtual {p0, p1, p2, v1}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 64
    :cond_d
    invoke-virtual {p0, p1, p2}, Lg6/v1;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    if-eq v2, v1, :cond_e

    .line 65
    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :cond_e
    invoke-virtual {p1}, Ls5/k;->x0()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    :goto_2
    return-object p3

    .line 67
    :cond_f
    invoke-virtual {p0, p1, p2}, Lg6/v1;->d0(Ls5/k;Lb6/i;)Ljava/util/LinkedHashMap;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ls5/k;->w()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const-class p0, Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, Lb6/i;->h0(Ljava/lang/Class;Ls5/k;)V

    throw v1

    :pswitch_0
    invoke-virtual {p1}, Ls5/k;->V()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    return-object v1

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    iget-object p3, p0, Lg6/v1;->r:Lb6/n;

    if-eqz p3, :cond_0

    invoke-virtual {p3, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lg6/v1;->Z(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lg6/v1;->r:Lb6/n;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    sget p0, Lg6/f1;->n:I

    invoke-virtual {p2, p0}, Lb6/i;->l0(I)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1, p2}, Lg6/f1;->o(Ls5/k;Lb6/i;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Ls5/k;->b0()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lg6/v1;->q:Lb6/n;

    if-eqz p0, :cond_3

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    :pswitch_7
    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->p:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
