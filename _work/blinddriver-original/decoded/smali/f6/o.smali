.class public final Lf6/o;
.super Le6/x;
.source "SourceFile"


# instance fields
.field public final z:Lj6/h;


# direct methods
.method public constructor <init>(Le6/y;Lj6/h;)V
    .locals 0

    invoke-direct {p0, p1}, Le6/x;-><init>(Le6/y;)V

    iput-object p2, p0, Lf6/o;->z:Lj6/h;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Le6/x;->y:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-eqz p2, :cond_0

    iget-object p0, p0, Le6/x;->y:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public final H(Le6/y;)Le6/y;
    .locals 1

    new-instance v0, Lf6/o;

    iget-object p0, p0, Lf6/o;->z:Lj6/h;

    invoke-direct {v0, p1, p0}, Lf6/o;-><init>(Le6/y;Lj6/h;)V

    return-object v0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lf6/o;->z:Lj6/h;

    invoke-virtual {v0, p3}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Le6/x;->y:Le6/y;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Le6/y;->m(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eq p1, v0, :cond_1

    invoke-virtual {p0, p3, p1}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lf6/o;->z:Lj6/h;

    invoke-virtual {v0, p3}, Lj6/h;->n(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Le6/x;->y:Le6/y;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2, v0}, Le6/y;->m(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3, p1}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object p3
.end method
