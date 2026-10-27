.class public final Lf2/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm2/m;

.field public final b:Lk/y;


# direct methods
.method public constructor <init>(Lm2/p;Lk/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lm2/p;->d:Lm2/m;

    iput-object v0, p0, Lf2/j2;->a:Lm2/m;

    new-instance v0, Lk/y;

    const/4 v1, 0x4

    invoke-static {v1, p1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Lk/y;-><init>(I)V

    iput-object v0, p0, Lf2/j2;->b:Lk/y;

    invoke-static {v1, p1}, Lm2/p;->j(ILm2/p;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lm2/p;

    iget v3, v2, Lm2/p;->g:I

    invoke-virtual {p2, v3}, Lk/k;->a(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lf2/j2;->b:Lk/y;

    iget v2, v2, Lm2/p;->g:I

    invoke-virtual {v3, v2}, Lk/y;->a(I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
