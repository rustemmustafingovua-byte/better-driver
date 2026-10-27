.class public final Lo6/b;
.super Lo6/g;
.source "SourceFile"


# static fields
.field public static final z:Ljava/util/BitSet;


# instance fields
.field public final x:Ljava/util/HashMap;

.field public final y:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    sput-object v0, Lo6/b;->z:Ljava/util/BitSet;

    return-void
.end method

.method public constructor <init>(Lb6/l;Lo6/p;Lb6/l;Lb6/h;Ljava/util/Collection;)V
    .locals 9

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 1
    invoke-direct/range {v0 .. v7}, Lo6/g;-><init>(Lb6/l;Lo6/p;Ljava/lang/String;ZLb6/l;Lr5/s0;Z)V

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, v0, Lo6/b;->x:Ljava/util/HashMap;

    .line 3
    sget-object p1, Lb6/x;->L:Lb6/x;

    invoke-virtual {p4, p1}, Ld6/m;->m(Lb6/x;)Z

    move-result p1

    .line 4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 5
    invoke-interface {p5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 p5, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln6/c;

    .line 6
    iget-object v2, p4, Ld6/m;->m:Ld6/a;

    .line 7
    iget-object v2, v2, Ld6/a;->l:Lt6/p;

    .line 8
    iget-object v1, v1, Ln6/c;->l:Ljava/lang/Class;

    .line 9
    invoke-virtual {v2, v1}, Lt6/p;->l(Ljava/lang/reflect/Type;)Lb6/l;

    move-result-object v2

    .line 10
    invoke-virtual {p4, v2}, Lb6/h;->r(Lb6/l;)Lj6/t;

    move-result-object v2

    .line 11
    invoke-virtual {v2}, Lj6/t;->b()Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v3, Ljava/util/BitSet;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, p5

    invoke-direct {v3, v4}, Ljava/util/BitSet;-><init>(I)V

    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lj6/v;

    .line 14
    invoke-interface {v4}, Lu6/s;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_0

    .line 15
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 16
    :cond_0
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-nez v6, :cond_1

    add-int/lit8 v6, p5, 0x1

    .line 17
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 18
    invoke-virtual {p0, v5, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v8, v6

    move-object v6, p5

    move p5, v8

    .line 19
    :cond_1
    invoke-virtual {v4}, Lj6/v;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lb6/i0;

    .line 20
    iget-object v5, v5, Lb6/i0;->l:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 22
    :cond_3
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 23
    invoke-virtual {p0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 25
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_6

    goto/16 :goto_0

    .line 26
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 28
    const-string p2, " and "

    const-string p3, " have the same signature and cannot be uniquely deduced."

    .line 29
    const-string p4, "Subtypes "

    invoke-static {p4, v2, p2, p1, p3}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 31
    :cond_7
    iput-object p2, v0, Lo6/b;->y:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lo6/b;Lb6/f;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lo6/g;-><init>(Lo6/g;Lb6/f;)V

    .line 33
    iget-object p2, p1, Lo6/b;->x:Ljava/util/HashMap;

    iput-object p2, p0, Lo6/b;->x:Ljava/util/HashMap;

    .line 34
    iget-object p1, p1, Lo6/b;->y:Ljava/util/HashMap;

    iput-object p1, p0, Lo6/b;->y:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final d(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v0

    sget-object v1, Ls5/n;->u:Ls5/n;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v1, Ls5/n;->y:Ls5/n;

    if-eq v0, v1, :cond_1

    const-string v0, "Unexpected input"

    invoke-virtual {p0, p1, p2, v2, v0}, Lo6/g;->n(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    sget-object v1, Ls5/n;->v:Ls5/n;

    iget-object v3, p0, Lo6/b;->y:Ljava/util/HashMap;

    if-ne v0, v1, :cond_2

    sget-object v1, Lo6/b;->z:Ljava/util/BitSet;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, p2, v2, v1}, Lo6/g;->m(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance v1, Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lb6/i;->N(Ls5/k;)Lu6/z;

    move-result-object v2

    sget-object v4, Lb6/x;->L:Lb6/x;

    iget-object v5, p2, Lb6/i;->q:Lb6/h;

    invoke-virtual {v5, v4}, Ld6/m;->m(Lb6/x;)Z

    move-result v4

    :goto_1
    sget-object v5, Ls5/n;->y:Ls5/n;

    if-ne v0, v5, :cond_7

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, p1}, Lu6/z;->J0(Ls5/k;)V

    iget-object v5, p0, Lo6/b;->x:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v2, v0}, Lo6/g;->m(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lo6/a;->m:Lb6/l;

    invoke-static {v0}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Cannot deduce unique subtype of %s (%d candidates match)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v2, v0}, Lo6/g;->n(Ls5/k;Lb6/i;Lu6/z;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lb6/f;)Ln6/d;
    .locals 1

    iget-object v0, p0, Lo6/a;->n:Lb6/f;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lo6/b;

    invoke-direct {v0, p0, p1}, Lo6/b;-><init>(Lo6/b;Lb6/f;)V

    return-object v0
.end method
