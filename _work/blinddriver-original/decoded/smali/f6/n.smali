.class public final Lf6/n;
.super Le6/x;
.source "SourceFile"


# instance fields
.field public final A:Z

.field public final B:Le6/y;

.field public final z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le6/y;Ljava/lang/String;Le6/y;Z)V
    .locals 0

    invoke-direct {p0, p1}, Le6/x;-><init>(Le6/y;)V

    iput-object p2, p0, Lf6/n;->z:Ljava/lang/String;

    iput-object p3, p0, Lf6/n;->B:Le6/y;

    iput-boolean p4, p0, Lf6/n;->A:Z

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lf6/n;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    if-eqz p2, :cond_7

    iget-boolean v0, p0, Lf6/n;->A:Z

    iget-object v1, p0, Lf6/n;->B:Le6/y;

    if-eqz v0, :cond_6

    instance-of v0, p2, [Ljava/lang/Object;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, [Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    invoke-virtual {v1, v4, p1}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/util/Collection;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2, p1}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    instance-of v0, p2, Ljava/util/Map;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1, v2, p1}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported container type ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ") when resolving reference \'"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lf6/n;->z:Ljava/lang/String;

    const-string p2, "\'"

    invoke-static {v0, p0, p2}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    invoke-virtual {v1, p2, p1}, Le6/y;->A(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7
    iget-object p0, p0, Le6/x;->y:Le6/y;

    invoke-virtual {p0, p1, p2}, Le6/y;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final H(Le6/y;)Le6/y;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should never try to reset delegate"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final k(Ls5/k;Lb6/i;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Le6/x;->y:Le6/y;

    invoke-virtual {v0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lf6/n;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final l(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2}, Le6/y;->j(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lf6/n;->B(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final n(Lb6/h;)V
    .locals 1

    iget-object v0, p0, Le6/x;->y:Le6/y;

    invoke-virtual {v0, p1}, Le6/y;->n(Lb6/h;)V

    iget-object p0, p0, Lf6/n;->B:Le6/y;

    invoke-virtual {p0, p1}, Le6/y;->n(Lb6/h;)V

    return-void
.end method
