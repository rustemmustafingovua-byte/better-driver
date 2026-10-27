.class public final Lf8/a3;
.super Lf8/x2;
.source "SourceFile"


# instance fields
.field public final l:Lf8/v1;

.field public final m:Ljava/lang/String;

.field public final n:Lf8/w2;

.field public final o:[Lf8/y2;


# direct methods
.method public constructor <init>(Lf8/v1;Lf8/w2;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf8/a3;->l:Lf8/v1;

    const/4 v0, 0x0

    invoke-virtual {p1}, Lf8/v1;->v()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lf8/b3;->a(Lf8/w2;Lf8/m2;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf8/a3;->m:Ljava/lang/String;

    iput-object p2, p0, Lf8/a3;->n:Lf8/w2;

    iget-object v0, p1, Lf8/v1;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lf8/y2;

    iput-object v0, p0, Lf8/a3;->o:[Lf8/y2;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lf8/v1;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lf8/a3;->o:[Lf8/y2;

    new-instance v2, Lf8/y2;

    iget-object v3, p1, Lf8/v1;->p:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf8/i1;

    invoke-direct {v2, v3, p2, p0}, Lf8/y2;-><init>(Lf8/i1;Lf8/w2;Lf8/a3;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p2, Lf8/w2;->r:Lf8/p2;

    invoke-virtual {p1, p0}, Lf8/p2;->b(Lf8/x2;)V

    return-void
.end method


# virtual methods
.method public final b()Lf8/w2;
    .locals 0

    iget-object p0, p0, Lf8/a3;->n:Lf8/w2;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/a3;->m:Ljava/lang/String;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lf8/a3;->l:Lf8/v1;

    invoke-virtual {p0}, Lf8/v1;->v()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e()Lf8/c;
    .locals 0

    iget-object p0, p0, Lf8/a3;->l:Lf8/v1;

    return-object p0
.end method
