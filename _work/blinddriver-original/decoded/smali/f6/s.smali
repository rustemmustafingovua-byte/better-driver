.class public final Lf6/s;
.super Le6/y;
.source "SourceFile"


# instance fields
.field public final y:Le6/y;


# direct methods
.method public constructor <init>(Le6/y;Lj6/d0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le6/y;-><init>(Le6/y;)V

    .line 2
    iput-object p1, p0, Lf6/s;->y:Le6/y;

    .line 3
    iput-object p2, p0, Le6/y;->u:Lj6/d0;

    return-void
.end method

.method public constructor <init>(Lf6/s;Lb6/i0;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Le6/y;-><init>(Le6/y;Lb6/i0;)V

    .line 8
    iget-object p2, p1, Lf6/s;->y:Le6/y;

    iput-object p2, p0, Lf6/s;->y:Le6/y;

    .line 9
    iget-object p1, p1, Le6/y;->u:Lj6/d0;

    iput-object p1, p0, Le6/y;->u:Lj6/d0;

    return-void
.end method

.method public constructor <init>(Lf6/s;Lb6/n;Le6/r;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Le6/y;-><init>(Le6/y;Lb6/n;Le6/r;)V

    .line 5
    iget-object p2, p1, Lf6/s;->y:Le6/y;

    iput-object p2, p0, Lf6/s;->y:Le6/y;

    .line 6
    iget-object p1, p1, Le6/y;->u:Lj6/d0;

    iput-object p1, p0, Le6/y;->u:Lj6/d0;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lf6/s;->y:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6/s;->y:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final E(Lb6/i0;)Le6/y;
    .locals 1

    new-instance v0, Lf6/s;

    invoke-direct {v0, p0, p1}, Lf6/s;-><init>(Lf6/s;Lb6/i0;)V

    return-object v0
.end method

.method public final F(Le6/r;)Le6/y;
    .locals 2

    new-instance v0, Lf6/s;

    iget-object v1, p0, Le6/y;->q:Lb6/n;

    invoke-direct {v0, p0, v1, p1}, Lf6/s;-><init>(Lf6/s;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final G(Lb6/n;)Le6/y;
    .locals 2

    iget-object v0, p0, Le6/y;->q:Lb6/n;

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    iget-object v1, p0, Le6/y;->s:Le6/r;

    if-ne v0, v1, :cond_1

    move-object v1, p1

    :cond_1
    new-instance v0, Lf6/s;

    invoke-direct {v0, p0, p1, v1}, Lf6/s;-><init>(Lf6/s;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final d()Lj6/h;
    .locals 0

    iget-object p0, p0, Lf6/s;->y:Le6/y;

    invoke-interface {p0}, Lb6/f;->d()Lj6/h;

    move-result-object p0

    return-object p0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lf6/s;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lf6/s;->y:Le6/y;

    invoke-virtual {v0, p3, p2}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Le6/z; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    iget-object p3, p0, Le6/y;->u:Lj6/d0;

    if-nez p3, :cond_1

    iget-object p3, p0, Le6/y;->q:Lb6/n;

    invoke-virtual {p3}, Lb6/n;->getObjectIdReader()Lf6/r;

    move-result-object p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lb6/p;

    const-string p3, "Unresolved forward reference but no identity info"

    invoke-direct {p0, p1, p3, p2}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Le6/y;->o:Lb6/l;

    iget-object p0, p0, Lb6/l;->o:Ljava/lang/Class;

    const/4 p0, 0x0

    throw p0
.end method

.method public final n(Lb6/h;)V
    .locals 0

    iget-object p0, p0, Lf6/s;->y:Le6/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Le6/y;->n(Lb6/h;)V

    :cond_0
    return-void
.end method

.method public final o()I
    .locals 0

    iget-object p0, p0, Lf6/s;->y:Le6/y;

    invoke-virtual {p0}, Le6/y;->o()I

    move-result p0

    return p0
.end method
