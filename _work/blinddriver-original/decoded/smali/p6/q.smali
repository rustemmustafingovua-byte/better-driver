.class public final Lp6/q;
.super Lp6/s;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/Iterator;

.field public h:Ljava/util/Map$Entry;

.field public i:Z


# direct methods
.method public constructor <init>(Lb6/q;Lp6/s;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p2}, Lp6/s;-><init>(ILp6/s;)V

    invoke-virtual {p1}, Lb6/q;->E()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lp6/q;->g:Ljava/util/Iterator;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lp6/q;->i:Z

    return-void
.end method


# virtual methods
.method public final c()Ls5/m;
    .locals 0

    iget-object p0, p0, Lp6/s;->d:Lp6/s;

    return-object p0
.end method

.method public final i()Lb6/q;
    .locals 0

    iget-object p0, p0, Lp6/q;->h:Ljava/util/Map$Entry;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    return-object p0
.end method

.method public final j()Ls5/n;
    .locals 4

    iget-boolean v0, p0, Lp6/q;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lp6/q;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iput-object v3, p0, Lp6/s;->e:Ljava/lang/String;

    iput-object v3, p0, Lp6/q;->h:Ljava/util/Map$Entry;

    sget-object p0, Ls5/n;->v:Ls5/n;

    return-object p0

    :cond_0
    iget v2, p0, Ls5/m;->b:I

    add-int/2addr v2, v1

    iput v2, p0, Ls5/m;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lp6/q;->i:Z

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lp6/q;->h:Ljava/util/Map$Entry;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    :goto_0
    iput-object v3, p0, Lp6/s;->e:Ljava/lang/String;

    sget-object p0, Ls5/n;->y:Ls5/n;

    return-object p0

    :cond_2
    iput-boolean v1, p0, Lp6/q;->i:Z

    iget-object p0, p0, Lp6/q;->h:Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    invoke-interface {p0}, Ls5/v;->c()Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lp6/p;
    .locals 2

    new-instance v0, Lp6/p;

    invoke-virtual {p0}, Lp6/q;->i()Lb6/q;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lp6/p;-><init>(Lb6/q;Lp6/s;)V

    return-object v0
.end method

.method public final l()Lp6/q;
    .locals 2

    new-instance v0, Lp6/q;

    invoke-virtual {p0}, Lp6/q;->i()Lb6/q;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lp6/q;-><init>(Lb6/q;Lp6/s;)V

    return-object v0
.end method
