.class public final Lp6/p;
.super Lp6/s;
.source "SourceFile"


# instance fields
.field public final g:Ljava/util/Iterator;

.field public h:Lb6/q;


# direct methods
.method public constructor <init>(Lb6/q;Lp6/s;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p2}, Lp6/s;-><init>(ILp6/s;)V

    invoke-virtual {p1}, Lb6/q;->w()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lp6/p;->g:Ljava/util/Iterator;

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

    iget-object p0, p0, Lp6/p;->h:Lb6/q;

    return-object p0
.end method

.method public final j()Ls5/n;
    .locals 2

    iget-object v0, p0, Lp6/p;->g:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lp6/p;->h:Lb6/q;

    sget-object p0, Ls5/n;->x:Ls5/n;

    return-object p0

    :cond_0
    iget v1, p0, Ls5/m;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ls5/m;->b:I

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb6/q;

    iput-object v0, p0, Lp6/p;->h:Lb6/q;

    invoke-interface {v0}, Ls5/v;->c()Ls5/n;

    move-result-object p0

    return-object p0
.end method

.method public final k()Lp6/p;
    .locals 2

    new-instance v0, Lp6/p;

    iget-object v1, p0, Lp6/p;->h:Lb6/q;

    invoke-direct {v0, v1, p0}, Lp6/p;-><init>(Lb6/q;Lp6/s;)V

    return-object v0
.end method

.method public final l()Lp6/q;
    .locals 2

    new-instance v0, Lp6/q;

    iget-object v1, p0, Lp6/p;->h:Lb6/q;

    invoke-direct {v0, v1, p0}, Lp6/q;-><init>(Lb6/q;Lp6/s;)V

    return-object v0
.end method
