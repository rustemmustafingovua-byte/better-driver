.class public final Lg7/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Iterable;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg7/c;->a:I

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iget-object v0, p1, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Lla/r;

    if-eqz v0, :cond_0

    .line 11
    iput-object v0, p0, Lg7/c;->c:Ljava/lang/Object;

    .line 12
    iget-object v0, p1, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lg7/c;->b:Ljava/lang/String;

    .line 14
    iget-object v0, p1, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    check-cast v0, Lc5/o;

    .line 15
    invoke-virtual {v0}, Lc5/o;->g()Lla/p;

    move-result-object v0

    iput-object v0, p0, Lg7/c;->d:Ljava/lang/Iterable;

    .line 16
    iget-object v0, p1, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    check-cast v0, Lla/a0;

    .line 17
    iput-object v0, p0, Lg7/c;->e:Ljava/lang/Object;

    .line 18
    iget-object p1, p1, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    .line 19
    invoke-static {p1}, Lu8/v;->N(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lg7/c;->f:Ljava/lang/Object;

    return-void

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "url == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg7/c;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lg7/c;->c:Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object p2, p0, Lg7/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lg7/c;->e:Ljava/lang/Object;

    sget-object p2, Ls7/a;->b:Ls7/a;

    iput-object p2, p0, Lg7/c;->f:Ljava/lang/Object;

    new-instance p2, Ljava/util/HashSet;

    .line 3
    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_1

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lg7/c;->d:Ljava/lang/Iterable;

    return-void

    .line 6
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method


# virtual methods
.method public a()Landroidx/lifecycle/a1;
    .locals 4

    new-instance v0, Landroidx/lifecycle/a1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lu8/s;->l:Lu8/s;

    iput-object v1, v0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    iget-object v2, p0, Lg7/c;->c:Ljava/lang/Object;

    check-cast v2, Lla/r;

    iput-object v2, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    iget-object v2, p0, Lg7/c;->b:Ljava/lang/String;

    iput-object v2, v0, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    iget-object v2, p0, Lg7/c;->e:Ljava/lang/Object;

    check-cast v2, Lla/a0;

    iput-object v2, v0, Landroidx/lifecycle/a1;->o:Ljava/lang/Object;

    iget-object v2, p0, Lg7/c;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lu8/v;->O(Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    iget-object p0, p0, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast p0, Lla/p;

    invoke-virtual {p0}, Lla/p;->c()Lc5/o;

    move-result-object p0

    iput-object p0, v0, Landroidx/lifecycle/a1;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Lg7/c;->a:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lg7/c;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Request{method="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg7/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lg7/c;->c:Ljava/lang/Object;

    check-cast v2, Lla/r;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lg7/c;->d:Ljava/lang/Iterable;

    check-cast p0, Lla/p;

    invoke-virtual {p0}, Lla/p;->size()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, ", headers=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_2

    check-cast v3, Lt8/j;

    iget-object v5, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v3, v3, Lt8/j;->m:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    if-lez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lma/c;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "\u2588\u2588"

    :cond_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-static {}, Lg5/f;->P()V

    const/4 p0, 0x0

    throw p0

    :cond_3
    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, ", tags="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const/16 p0, 0x7d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
