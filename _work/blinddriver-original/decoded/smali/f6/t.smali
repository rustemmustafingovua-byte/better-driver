.class public final Lf6/t;
.super Le6/y;
.source "SourceFile"


# instance fields
.field public final y:Lf6/r;


# direct methods
.method public constructor <init>(Lf6/r;Lb6/h0;)V
    .locals 3

    .line 1
    iget-object v0, p1, Lf6/r;->m:Lb6/i0;

    .line 2
    iget-object v1, p1, Lf6/r;->l:Lb6/l;

    .line 3
    iget-object v2, p1, Lf6/r;->o:Lb6/n;

    .line 4
    invoke-direct {p0, v0, v1, p2, v2}, Le6/y;-><init>(Lb6/i0;Lb6/l;Lb6/h0;Lb6/n;)V

    .line 5
    iput-object p1, p0, Lf6/t;->y:Lf6/r;

    return-void
.end method

.method public constructor <init>(Lf6/t;Lb6/i0;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Le6/y;-><init>(Le6/y;Lb6/i0;)V

    .line 9
    iget-object p1, p1, Lf6/t;->y:Lf6/r;

    iput-object p1, p0, Lf6/t;->y:Lf6/r;

    return-void
.end method

.method public constructor <init>(Lf6/t;Lb6/n;Le6/r;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3}, Le6/y;-><init>(Le6/y;Lb6/n;Le6/r;)V

    .line 7
    iget-object p1, p1, Lf6/t;->y:Lf6/r;

    iput-object p1, p0, Lf6/t;->y:Lf6/r;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf6/t;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6/t;->y:Lf6/r;

    iget-object p0, p0, Lf6/r;->p:Le6/y;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p2}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not call set() on ObjectIdProperty that has no SettableBeanProperty"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final E(Lb6/i0;)Le6/y;
    .locals 1

    new-instance v0, Lf6/t;

    invoke-direct {v0, p0, p1}, Lf6/t;-><init>(Lf6/t;Lb6/i0;)V

    return-object v0
.end method

.method public final F(Le6/r;)Le6/y;
    .locals 2

    new-instance v0, Lf6/t;

    iget-object v1, p0, Le6/y;->q:Lb6/n;

    invoke-direct {v0, p0, v1, p1}, Lf6/t;-><init>(Lf6/t;Lb6/n;Le6/r;)V

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
    new-instance v0, Lf6/t;

    invoke-direct {v0, p0, p1, v1}, Lf6/t;-><init>(Lf6/t;Lb6/n;Le6/r;)V

    return-object v0
.end method

.method public final d()Lj6/h;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lf6/t;->l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p3, Ls5/n;->F:Ls5/n;

    invoke-virtual {p1, p3}, Ls5/k;->q0(Ls5/n;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return-object v0

    :cond_0
    iget-object p3, p0, Le6/y;->q:Lb6/n;

    invoke-virtual {p3, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lf6/t;->y:Lf6/r;

    iget-object p0, p0, Lf6/r;->n:Lr5/d1;

    invoke-virtual {p2, p1, p0}, Lb6/i;->X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw v0
.end method
