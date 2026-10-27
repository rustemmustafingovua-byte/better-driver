.class public abstract Ls6/d;
.super Ls6/n0;
.source "SourceFile"

# interfaces
.implements Lq6/i;
.implements Lq6/l;


# static fields
.field public static final u:[Lq6/c;


# instance fields
.field public final n:Lb6/l;

.field public final o:[Lq6/c;

.field public final p:[Lq6/c;

.field public final q:Ljava/lang/Object;

.field public final r:Lj6/h;

.field public final s:Lf8/p2;

.field public final t:Lr5/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lb6/i0;

    const-string v1, "#object-ref"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb6/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Lq6/c;

    sput-object v0, Ls6/d;->u:[Lq6/c;

    return-void
.end method

.method public constructor <init>(Lb6/l;Lq6/e;[Lq6/c;[Lq6/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls6/n0;-><init>(Lb6/l;)V

    .line 2
    iput-object p1, p0, Ls6/d;->n:Lb6/l;

    .line 3
    iput-object p3, p0, Ls6/d;->o:[Lq6/c;

    .line 4
    iput-object p4, p0, Ls6/d;->p:[Lq6/c;

    .line 5
    iget-object p1, p2, Lq6/e;->f:Lj6/h;

    .line 6
    iput-object p1, p0, Ls6/d;->r:Lj6/h;

    .line 7
    iget-object p1, p2, Lq6/e;->e:Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Ls6/d;->q:Ljava/lang/Object;

    .line 9
    iget-object p1, p2, Lq6/e;->g:Lf8/p2;

    .line 10
    iput-object p1, p0, Ls6/d;->s:Lf8/p2;

    .line 11
    iget-object p1, p2, Lq6/e;->a:Lj6/t;

    .line 12
    invoke-virtual {p1}, Lj6/t;->d()Lr5/q;

    move-result-object p1

    .line 13
    iget-object p1, p1, Lr5/q;->m:Lr5/p;

    .line 14
    iput-object p1, p0, Ls6/d;->t:Lr5/p;

    return-void
.end method

.method public constructor <init>(Ls6/d;Lf8/p2;Ljava/lang/Object;)V
    .locals 1

    .line 23
    iget-object v0, p1, Ls6/n0;->l:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    .line 24
    iget-object v0, p1, Ls6/d;->n:Lb6/l;

    iput-object v0, p0, Ls6/d;->n:Lb6/l;

    .line 25
    iget-object v0, p1, Ls6/d;->o:[Lq6/c;

    iput-object v0, p0, Ls6/d;->o:[Lq6/c;

    .line 26
    iget-object v0, p1, Ls6/d;->p:[Lq6/c;

    iput-object v0, p0, Ls6/d;->p:[Lq6/c;

    .line 27
    iget-object v0, p1, Ls6/d;->r:Lj6/h;

    iput-object v0, p0, Ls6/d;->r:Lj6/h;

    .line 28
    iput-object p2, p0, Ls6/d;->s:Lf8/p2;

    .line 29
    iput-object p3, p0, Ls6/d;->q:Ljava/lang/Object;

    .line 30
    iget-object p1, p1, Ls6/d;->t:Lr5/p;

    iput-object p1, p0, Ls6/d;->t:Lr5/p;

    return-void
.end method

.method public constructor <init>(Ls6/d;Ljava/util/Set;Ljava/util/Set;)V
    .locals 9

    .line 31
    iget-object v0, p1, Ls6/n0;->l:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    .line 32
    iget-object v0, p1, Ls6/d;->n:Lb6/l;

    iput-object v0, p0, Ls6/d;->n:Lb6/l;

    .line 33
    iget-object v0, p1, Ls6/d;->o:[Lq6/c;

    .line 34
    iget-object v1, p1, Ls6/d;->p:[Lq6/c;

    .line 35
    array-length v2, v0

    .line 36
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    if-nez v1, :cond_0

    move-object v5, v4

    goto :goto_0

    .line 37
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_3

    .line 38
    aget-object v7, v0, v6

    .line 39
    iget-object v8, v7, Lq6/c;->n:Lw5/k;

    .line 40
    iget-object v8, v8, Lw5/k;->l:Ljava/lang/String;

    .line 41
    invoke-static {v8, p2, p3}, La/a;->D(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_2

    .line 42
    :cond_1
    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    .line 43
    aget-object v7, v1, v6

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 44
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lq6/c;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lq6/c;

    iput-object p2, p0, Ls6/d;->o:[Lq6/c;

    if-nez v5, :cond_4

    goto :goto_3

    .line 45
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p2

    new-array p2, p2, [Lq6/c;

    invoke-virtual {v5, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, [Lq6/c;

    :goto_3
    iput-object v4, p0, Ls6/d;->p:[Lq6/c;

    .line 46
    iget-object p2, p1, Ls6/d;->r:Lj6/h;

    iput-object p2, p0, Ls6/d;->r:Lj6/h;

    .line 47
    iget-object p2, p1, Ls6/d;->s:Lf8/p2;

    iput-object p2, p0, Ls6/d;->s:Lf8/p2;

    .line 48
    iget-object p2, p1, Ls6/d;->q:Ljava/lang/Object;

    iput-object p2, p0, Ls6/d;->q:Ljava/lang/Object;

    .line 49
    iget-object p1, p1, Ls6/d;->t:Lr5/p;

    iput-object p1, p0, Ls6/d;->t:Lr5/p;

    return-void
.end method

.method public constructor <init>(Ls6/d;Lu6/r;)V
    .locals 2

    .line 50
    iget-object v0, p1, Ls6/d;->o:[Lq6/c;

    invoke-static {v0, p2}, Ls6/d;->n([Lq6/c;Lu6/r;)[Lq6/c;

    move-result-object v0

    iget-object v1, p1, Ls6/d;->p:[Lq6/c;

    invoke-static {v1, p2}, Ls6/d;->n([Lq6/c;Lu6/r;)[Lq6/c;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Ls6/d;-><init>(Ls6/d;[Lq6/c;[Lq6/c;)V

    return-void
.end method

.method public constructor <init>(Ls6/d;[Lq6/c;[Lq6/c;)V
    .locals 1

    .line 15
    iget-object v0, p1, Ls6/n0;->l:Ljava/lang/Class;

    invoke-direct {p0, v0}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    .line 16
    iget-object v0, p1, Ls6/d;->n:Lb6/l;

    iput-object v0, p0, Ls6/d;->n:Lb6/l;

    .line 17
    iput-object p2, p0, Ls6/d;->o:[Lq6/c;

    .line 18
    iput-object p3, p0, Ls6/d;->p:[Lq6/c;

    .line 19
    iget-object p2, p1, Ls6/d;->r:Lj6/h;

    iput-object p2, p0, Ls6/d;->r:Lj6/h;

    .line 20
    iget-object p2, p1, Ls6/d;->s:Lf8/p2;

    iput-object p2, p0, Ls6/d;->s:Lf8/p2;

    .line 21
    iget-object p2, p1, Ls6/d;->q:Ljava/lang/Object;

    iput-object p2, p0, Ls6/d;->q:Ljava/lang/Object;

    .line 22
    iget-object p1, p1, Ls6/d;->t:Lr5/p;

    iput-object p1, p0, Ls6/d;->t:Lr5/p;

    return-void
.end method

.method public static final n([Lq6/c;Lu6/r;)[Lq6/c;
    .locals 4

    if-eqz p0, :cond_3

    array-length v0, p0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    sget-object v0, Lu6/r;->l:Lu6/q;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Lq6/c;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1}, Lq6/c;->m(Lu6/r;)Lq6/c;

    move-result-object v3

    aput-object v3, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    :goto_1
    return-object p0
.end method


# virtual methods
.method public final a(Lb6/r0;)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Ls6/d;->p:[Lq6/c;

    if-nez v1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    array-length v2, v1

    :goto_0
    iget-object p0, p0, Ls6/d;->o:[Lq6/c;

    array-length v3, p0

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_b

    aget-object v5, p0, v4

    iget-boolean v6, v5, Lq6/c;->z:Z

    iget-object v7, v5, Lq6/c;->s:Lj6/h;

    if-nez v6, :cond_2

    iget-object v6, v5, Lq6/c;->w:Lb6/u;

    if-eqz v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p1, Lb6/r0;->t:Ls6/o;

    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Lq6/c;->j(Lb6/u;)V

    if-ge v4, v2, :cond_2

    aget-object v8, v1, v4

    if-eqz v8, :cond_2

    invoke-virtual {v8, v6}, Lq6/c;->j(Lb6/u;)V

    :cond_2
    :goto_2
    iget-object v6, v5, Lq6/c;->v:Lb6/u;

    if-eqz v6, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object v6, p1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v6}, Ld6/m;->d()Lb6/d;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v6, v7}, Lb6/d;->X(Lj6/a;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {p1, v6}, Lb6/g;->n(Ljava/lang/Object;)Lu6/k;

    move-result-object v6

    invoke-virtual {p1}, Lb6/r0;->u()Lt6/p;

    move-object v7, v6

    check-cast v7, Lf6/m;

    iget-object v7, v7, Lf6/m;->a:Lb6/l;

    invoke-virtual {v7}, Lb6/l;->e0()Z

    move-result v9

    if-eqz v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v7, v5}, Lb6/r0;->c0(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v8

    :goto_3
    new-instance v9, Ls6/g0;

    invoke-direct {v9, v6, v7, v8}, Ls6/g0;-><init>(Lu6/k;Lb6/l;Lb6/u;)V

    move-object v8, v9

    :cond_5
    if-nez v8, :cond_8

    iget-object v6, v5, Lq6/c;->q:Lb6/l;

    if-nez v6, :cond_7

    iget-object v6, v5, Lq6/c;->p:Lb6/l;

    iget-object v7, v6, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Class;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lb6/l;->c0()Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v6

    check-cast v7, Lt6/l;

    iget-object v7, v7, Lt6/l;->v:Lt6/o;

    iget-object v7, v7, Lt6/o;->m:[Lb6/l;

    array-length v7, v7

    if-lez v7, :cond_a

    :cond_6
    iput-object v6, v5, Lq6/c;->r:Lb6/l;

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v6, v5}, Lb6/r0;->c0(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v8

    invoke-virtual {v6}, Lb6/l;->c0()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual {v6}, Lb6/l;->Q()Lb6/l;

    move-result-object v6

    iget-object v6, v6, Lb6/l;->r:Ljava/lang/Object;

    check-cast v6, Ln6/e;

    if-eqz v6, :cond_8

    instance-of v7, v8, Lq6/h;

    if-eqz v7, :cond_8

    check-cast v8, Lq6/h;

    invoke-virtual {v8, v6}, Lq6/h;->i(Ln6/e;)Lq6/h;

    move-result-object v8

    :cond_8
    if-ge v4, v2, :cond_9

    aget-object v6, v1, v4

    if-eqz v6, :cond_9

    invoke-virtual {v6, v8}, Lq6/c;->k(Lb6/u;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v5, v8}, Lq6/c;->k(Lb6/u;)V

    :cond_a
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_b
    :goto_5
    array-length v1, p0

    if-ge v0, v1, :cond_d

    aget-object v1, p0, v0

    instance-of v2, v1, Lq6/a;

    if-eqz v2, :cond_c

    check-cast v1, Lq6/a;

    iget-object v2, v1, Lq6/a;->F:Lb6/u;

    instance-of v3, v2, Lq6/i;

    if-eqz v3, :cond_c

    iget-object v3, v1, Lq6/a;->D:Lb6/e;

    invoke-virtual {p1, v2, v3}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v2

    iput-object v2, v1, Lq6/a;->F:Lb6/u;

    instance-of v3, v2, Ls6/n;

    if-eqz v3, :cond_c

    check-cast v2, Ls6/n;

    iput-object v2, v1, Lq6/a;->G:Ls6/n;

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    return-void
.end method

.method public final acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    return-void
.end method

.method public final b(Lb6/r0;Lb6/f;)Lb6/u;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v8, p2

    iget-object v2, v1, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v2}, Ld6/m;->d()Lb6/d;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v8, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v8}, Lb6/f;->d()Lj6/h;

    move-result-object v5

    goto :goto_1

    :cond_1
    :goto_0
    move-object v5, v4

    :goto_1
    iget-object v6, v0, Ls6/n0;->l:Ljava/lang/Class;

    invoke-static {v1, v8, v6}, Ls6/n0;->d(Lb6/r0;Lb6/f;Ljava/lang/Class;)Lr5/q;

    move-result-object v7

    iget-object v9, v0, Ls6/d;->t:Lr5/p;

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v7, :cond_5

    iget-object v12, v7, Lr5/q;->m:Lr5/p;

    sget-object v13, Lr5/p;->t:Lr5/p;

    if-eq v12, v13, :cond_5

    if-eq v12, v13, :cond_6

    if-eq v12, v9, :cond_6

    iget-object v13, v0, Ls6/d;->n:Lb6/l;

    invoke-virtual {v13}, Lb6/l;->d0()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_2

    const/4 v15, 0x4

    if-eq v14, v15, :cond_2

    const/4 v15, 0x5

    if-eq v14, v15, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2, v13}, Ld6/m;->k(Lb6/l;)Lj6/t;

    move-result-object v0

    iget-object v3, v13, Lb6/l;->o:Ljava/lang/Class;

    invoke-static {v3, v2, v0, v7}, Ls6/k;->k(Ljava/lang/Class;Lb6/p0;Lj6/t;Lr5/q;)Ls6/k;

    move-result-object v0

    invoke-virtual {v1, v0, v8}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v7, Lr5/p;->u:Lr5/p;

    if-ne v12, v7, :cond_6

    instance-of v7, v13, Lt6/g;

    if-eqz v7, :cond_4

    const-class v7, Ljava/util/Map;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    const-class v7, Ljava/util/Map$Entry;

    invoke-virtual {v7, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual {v13, v7}, Lb6/l;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v2

    invoke-virtual {v2, v11}, Lb6/l;->N(I)Lb6/l;

    move-result-object v4

    invoke-virtual {v2, v10}, Lb6/l;->N(I)Lb6/l;

    move-result-object v5

    new-instance v2, Lr6/g;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v3, v0, Ls6/d;->n:Lb6/l;

    invoke-direct/range {v2 .. v8}, Lr6/g;-><init>(Lb6/l;Lb6/l;Lb6/l;ZLo6/r;Lb6/f;)V

    invoke-virtual {v1, v2, v8}, Lb6/r0;->g0(Lb6/u;Lb6/f;)Lb6/u;

    move-result-object v0

    return-object v0

    :cond_5
    move-object v12, v4

    :cond_6
    :goto_2
    iget-object v7, v0, Ls6/d;->o:[Lq6/c;

    iget-object v13, v0, Ls6/d;->s:Lf8/p2;

    if-eqz v5, :cond_10

    invoke-virtual {v3, v2, v5}, Lb6/d;->N(Ld6/m;Lj6/a;)Lr5/w;

    move-result-object v14

    iget-boolean v15, v14, Lr5/w;->n:Z

    if-eqz v15, :cond_7

    sget-object v14, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_3

    :cond_7
    iget-object v14, v14, Lr5/w;->l:Ljava/util/Set;

    :goto_3
    invoke-virtual {v3, v2, v5}, Lb6/d;->Q(Ld6/m;Lj6/a;)Lr5/c0;

    move-result-object v2

    iget-object v2, v2, Lr5/c0;->l:Ljava/util/Set;

    invoke-virtual {v3, v5}, Lb6/d;->D(Lj6/a;)Lj6/d0;

    move-result-object v15

    if-nez v15, :cond_a

    if-eqz v13, :cond_9

    invoke-virtual {v3, v5, v4}, Lb6/d;->E(Lj6/a;Lj6/d0;)Lj6/d0;

    move-result-object v6

    if-eqz v6, :cond_9

    iget-boolean v6, v6, Lj6/d0;->e:Z

    iget-boolean v15, v13, Lf8/p2;->a:Z

    if-ne v6, v15, :cond_8

    move-object v15, v13

    goto :goto_4

    :cond_8
    new-instance v15, Lf8/p2;

    iget-object v10, v13, Lf8/p2;->b:Ljava/lang/Object;

    move-object/from16 v16, v10

    check-cast v16, Lb6/l;

    iget-object v10, v13, Lf8/p2;->c:Ljava/lang/Object;

    move-object/from16 v17, v10

    check-cast v17, Ls5/q;

    iget-object v10, v13, Lf8/p2;->d:Ljava/lang/Object;

    move-object/from16 v18, v10

    check-cast v18, Lr5/d1;

    iget-object v10, v13, Lf8/p2;->e:Ljava/lang/Object;

    move-object/from16 v19, v10

    check-cast v19, Lb6/u;

    move/from16 v20, v6

    invoke-direct/range {v15 .. v20}, Lf8/p2;-><init>(Lb6/l;Ls5/q;Lr5/d1;Lb6/u;Z)V

    :goto_4
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move v6, v11

    move/from16 v16, v6

    goto/16 :goto_7

    :cond_9
    move-object/from16 v18, v2

    move-object/from16 v17, v4

    move v6, v11

    move/from16 v16, v6

    move-object v15, v13

    goto/16 :goto_7

    :cond_a
    invoke-virtual {v3, v5, v15}, Lb6/d;->E(Lj6/a;Lj6/d0;)Lj6/d0;

    move-result-object v10

    iget-object v15, v10, Lj6/d0;->b:Ljava/lang/Class;

    move/from16 v16, v11

    iget-boolean v11, v10, Lj6/d0;->e:Z

    iget-object v4, v10, Lj6/d0;->a:Lb6/i0;

    if-nez v15, :cond_b

    move-object/from16 v18, v2

    const/4 v2, 0x0

    goto :goto_5

    :cond_b
    move-object/from16 v18, v2

    invoke-virtual {v1}, Lb6/r0;->u()Lt6/p;

    move-result-object v2

    invoke-virtual {v2, v15}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v2

    :goto_5
    invoke-virtual {v1}, Lb6/r0;->u()Lt6/p;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v19, v6

    const-class v6, Lr5/d1;

    invoke-static {v2, v6}, Lt6/p;->n(Lb6/l;Ljava/lang/Class;)[Lb6/l;

    move-result-object v2

    aget-object v2, v2, v16

    const-class v6, Lr5/f1;

    if-ne v15, v6, :cond_e

    iget-object v2, v4, Lb6/i0;->l:Ljava/lang/String;

    array-length v4, v7

    move/from16 v6, v16

    :goto_6
    if-eq v6, v4, :cond_d

    aget-object v15, v7, v6

    move/from16 v20, v4

    iget-object v4, v15, Lq6/c;->n:Lw5/k;

    iget-object v4, v4, Lw5/k;->l:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v2, v15, Lq6/c;->p:Lb6/l;

    new-instance v4, Lr6/h;

    iget-object v10, v10, Lj6/d0;->d:Ljava/lang/Class;

    invoke-direct {v4, v10, v15}, Lr6/h;-><init>(Ljava/lang/Class;Lq6/c;)V

    const/4 v10, 0x0

    invoke-static {v2, v10, v4, v11}, Lf8/p2;->c(Lb6/l;Lb6/i0;Lr5/d1;Z)Lf8/p2;

    move-result-object v15

    move-object/from16 v17, v10

    goto :goto_7

    :cond_c
    add-int/lit8 v6, v6, 0x1

    move/from16 v4, v20

    goto :goto_6

    :cond_d
    invoke-static/range {v19 .. v19}, Lu6/h;->z(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid Object Id definition for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": cannot find property with name "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/16 v17, 0x0

    throw v17

    :cond_e
    const/16 v17, 0x0

    invoke-virtual {v1, v10}, Lb6/g;->B(Lj6/d0;)Lr5/d1;

    move-result-object v6

    invoke-static {v2, v4, v6, v11}, Lf8/p2;->c(Lb6/l;Lb6/i0;Lr5/d1;Z)Lf8/p2;

    move-result-object v15

    move/from16 v6, v16

    :goto_7
    invoke-virtual {v3, v5}, Lb6/d;->r(Lj6/a;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_f

    iget-object v2, v0, Ls6/d;->q:Ljava/lang/Object;

    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :goto_8
    move-object/from16 v2, v18

    goto :goto_9

    :cond_f
    move-object/from16 v10, v17

    goto :goto_8

    :cond_10
    move-object/from16 v17, v4

    move/from16 v16, v11

    move-object v15, v13

    move/from16 v6, v16

    move-object/from16 v2, v17

    move-object v10, v2

    move-object v14, v10

    :goto_9
    if-lez v6, :cond_12

    array-length v3, v7

    invoke-static {v7, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lq6/c;

    aget-object v4, v3, v6

    move/from16 v7, v16

    const/4 v5, 0x1

    invoke-static {v3, v7, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v4, v3, v7

    iget-object v4, v0, Ls6/d;->p:[Lq6/c;

    if-nez v4, :cond_11

    move-object/from16 v4, v17

    goto :goto_a

    :cond_11
    array-length v11, v4

    invoke-static {v4, v11}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lq6/c;

    aget-object v11, v4, v6

    invoke-static {v4, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v11, v4, v7

    :goto_a
    invoke-virtual {v0, v3, v4}, Ls6/d;->t([Lq6/c;[Lq6/c;)Ls6/d;

    move-result-object v0

    :cond_12
    if-eqz v15, :cond_13

    iget-object v3, v15, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v3, Lb6/l;

    invoke-virtual {v1, v3, v8}, Lb6/r0;->c0(Lb6/l;Lb6/f;)Lb6/u;

    move-result-object v20

    new-instance v16, Lf8/p2;

    iget-object v1, v15, Lf8/p2;->b:Ljava/lang/Object;

    move-object/from16 v17, v1

    check-cast v17, Lb6/l;

    iget-object v1, v15, Lf8/p2;->c:Ljava/lang/Object;

    move-object/from16 v18, v1

    check-cast v18, Ls5/q;

    iget-object v1, v15, Lf8/p2;->d:Ljava/lang/Object;

    move-object/from16 v19, v1

    check-cast v19, Lr5/d1;

    iget-boolean v1, v15, Lf8/p2;->a:Z

    move/from16 v21, v1

    invoke-direct/range {v16 .. v21}, Lf8/p2;-><init>(Lb6/l;Ls5/q;Lr5/d1;Lb6/u;Z)V

    move-object/from16 v1, v16

    if-eq v1, v13, :cond_13

    invoke-virtual {v0, v1}, Ls6/d;->s(Lf8/p2;)Ls6/d;

    move-result-object v0

    :cond_13
    if-eqz v14, :cond_14

    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    :cond_14
    if-eqz v2, :cond_16

    :cond_15
    invoke-virtual {v0, v14, v2}, Ls6/d;->q(Ljava/util/Set;Ljava/util/Set;)Ls6/d;

    move-result-object v0

    :cond_16
    if-eqz v10, :cond_17

    invoke-virtual {v0, v10}, Ls6/d;->r(Ljava/lang/Object;)Ls6/d;

    move-result-object v0

    :cond_17
    if-nez v12, :cond_18

    goto :goto_b

    :cond_18
    move-object v9, v12

    :goto_b
    sget-object v1, Lr5/p;->r:Lr5/p;

    if-ne v9, v1, :cond_19

    invoke-virtual {v0}, Ls6/d;->m()Ls6/d;

    move-result-object v0

    :cond_19
    return-object v0
.end method

.method public i(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;Lr6/u;)V
    .locals 2

    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p0, p4, p1, v0}, Ls6/d;->l(Ln6/e;Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Ls6/d;->s:Lf8/p2;

    invoke-virtual {p5, p2, p3, v1}, Lr6/u;->a(Ls5/g;Lb6/r0;Lf8/p2;)V

    iget-object p5, p0, Ls6/d;->q:Ljava/lang/Object;

    if-eqz p5, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :goto_0
    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public final j(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 8

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    iget-object v1, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v1, Lr5/d1;

    invoke-virtual {p3, p1, v1}, Lb6/r0;->Y(Ljava/lang/Object;Lr5/d1;)Lr6/u;

    move-result-object v7

    invoke-virtual {v7, p2, p3, v0}, Lr6/u;->b(Ls5/g;Lb6/r0;Lf8/p2;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v7, Lr6/u;->b:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v1, v7, Lr6/u;->a:Lr5/d1;

    invoke-virtual {v1, p1}, Lr5/d1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v7, Lr6/u;->b:Ljava/lang/Object;

    :cond_1
    iget-object v1, v7, Lr6/u;->b:Ljava/lang/Object;

    iget-boolean v2, v0, Lf8/p2;->a:Z

    if-eqz v2, :cond_2

    iget-object p0, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    invoke-virtual {p0, v1, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Ls6/d;->i(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;Lr6/u;)V

    return-void
.end method

.method public final k(Ljava/lang/Object;Ls5/g;Lb6/r0;Z)V
    .locals 4

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    iget-object v1, v0, Lf8/p2;->d:Ljava/lang/Object;

    check-cast v1, Lr5/d1;

    invoke-virtual {p3, p1, v1}, Lb6/r0;->Y(Ljava/lang/Object;Lr5/d1;)Lr6/u;

    move-result-object v1

    invoke-virtual {v1, p2, p3, v0}, Lr6/u;->b(Ls5/g;Lb6/r0;Lf8/p2;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lr6/u;->b:Ljava/lang/Object;

    if-nez v2, :cond_1

    iget-object v2, v1, Lr6/u;->a:Lr5/d1;

    invoke-virtual {v2, p1}, Lr5/d1;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v1, Lr6/u;->b:Ljava/lang/Object;

    :cond_1
    iget-object v2, v1, Lr6/u;->b:Ljava/lang/Object;

    iget-boolean v3, v0, Lf8/p2;->a:Z

    if-eqz v3, :cond_2

    iget-object p0, v0, Lf8/p2;->e:Ljava/lang/Object;

    check-cast p0, Lb6/u;

    invoke-virtual {p0, v2, p2, p3}, Lb6/u;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_2
    if-eqz p4, :cond_3

    invoke-virtual {p2, p1}, Ls5/g;->o0(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v1, p2, p3, v0}, Lr6/u;->a(Ls5/g;Lb6/r0;Lf8/p2;)V

    iget-object v0, p0, Ls6/d;->q:Ljava/lang/Object;

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :goto_0
    if-eqz p4, :cond_5

    invoke-virtual {p2}, Ls5/g;->R()V

    :cond_5
    :goto_1
    return-void
.end method

.method public final l(Ln6/e;Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;
    .locals 0

    iget-object p0, p0, Ls6/d;->r:Lj6/h;

    if-nez p0, :cond_0

    invoke-virtual {p1, p2, p3}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    invoke-virtual {p1, p2, p3}, Ln6/e;->d(Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object p1

    iput-object p0, p1, Lcom/fasterxml/jackson/core/type/b;->c:Ljava/lang/Object;

    return-object p1
.end method

.method public abstract m()Ls6/d;
.end method

.method public o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 4

    const-string v0, "[anySetter]"

    iget-object v1, p0, Ls6/d;->p:[Lq6/c;

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p0, p0, Ls6/d;->o:[Lq6/c;

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p0, v1

    if-eqz v3, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Lq6/c;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_4

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :goto_2
    new-instance v2, Lb6/p;

    const-string v3, "Infinite recursion (StackOverflowError)"

    invoke-direct {v2, p2, v3, p3}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    array-length p2, p0

    if-ne v1, p2, :cond_3

    goto :goto_3

    :cond_3
    aget-object p0, p0, v1

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object v0, p0, Lw5/k;->l:Ljava/lang/String;

    :goto_3
    invoke-virtual {v2, p1, v0}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    throw v2

    :goto_4
    array-length v2, p0

    if-ne v1, v2, :cond_4

    goto :goto_5

    :cond_4
    aget-object p0, p0, v1

    iget-object p0, p0, Lq6/c;->n:Lw5/k;

    iget-object v0, p0, Lw5/k;->l:Ljava/lang/String;

    :goto_5
    invoke-static {p3, p2, p1, v0}, Ls6/n0;->h(Lb6/r0;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    iget-object p1, p0, Ls6/d;->p:[Lq6/c;

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object p1, p0, Ls6/d;->q:Ljava/lang/Object;

    invoke-virtual {p0, p3, p1}, Ls6/n0;->e(Lb6/r0;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final properties()Ljava/util/Iterator;
    .locals 0

    iget-object p0, p0, Ls6/d;->o:[Lq6/c;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public abstract q(Ljava/util/Set;Ljava/util/Set;)Ls6/d;
.end method

.method public abstract r(Ljava/lang/Object;)Ls6/d;
.end method

.method public abstract s(Lf8/p2;)Ls6/d;
.end method

.method public serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    iget-object v0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Ls6/d;->j(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :cond_0
    sget-object v0, Ls5/n;->u:Ls5/n;

    invoke-virtual {p0, p4, p1, v0}, Ls6/d;->l(Ln6/e;Ljava/lang/Object;Ls5/n;)Lcom/fasterxml/jackson/core/type/b;

    move-result-object v0

    invoke-virtual {p4, p2, v0}, Ln6/e;->e(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    invoke-virtual {p2, p1}, Ls5/g;->d(Ljava/lang/Object;)V

    iget-object v1, p0, Ls6/d;->q:Ljava/lang/Object;

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->p(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Ls6/d;->o(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    :goto_0
    invoke-virtual {p4, p2, v0}, Ln6/e;->f(Ls5/g;Lcom/fasterxml/jackson/core/type/b;)Lcom/fasterxml/jackson/core/type/b;

    return-void
.end method

.method public abstract t([Lq6/c;[Lq6/c;)Ls6/d;
.end method

.method public final usesObjectId()Z
    .locals 0

    iget-object p0, p0, Ls6/d;->s:Lf8/p2;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
