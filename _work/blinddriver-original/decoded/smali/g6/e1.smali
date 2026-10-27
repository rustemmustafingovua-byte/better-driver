.class public final Lg6/e1;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/k;
.implements Le6/s;


# instance fields
.field public final o:Lu6/k;

.field public final p:Lb6/l;

.field public final q:Lb6/n;


# direct methods
.method public constructor <init>(Lf6/m;)V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Lg6/e1;->o:Lu6/k;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lg6/e1;->p:Lb6/l;

    .line 4
    iput-object p1, p0, Lg6/e1;->q:Lb6/n;

    return-void
.end method

.method public constructor <init>(Lu6/k;Lb6/l;Lb6/n;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2}, Lg6/f1;-><init>(Lb6/l;)V

    .line 6
    iput-object p1, p0, Lg6/e1;->o:Lu6/k;

    .line 7
    iput-object p2, p0, Lg6/e1;->p:Lb6/l;

    .line 8
    iput-object p3, p0, Lg6/e1;->q:Lb6/n;

    return-void
.end method


# virtual methods
.method public final a(Lb6/i;Lb6/f;)Lb6/n;
    .locals 5

    const-string v0, "withDelegate"

    const-class v1, Lg6/e1;

    iget-object v2, p0, Lg6/e1;->o:Lu6/k;

    iget-object v3, p0, Lg6/e1;->q:Lb6/n;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lg6/e1;->p:Lb6/l;

    invoke-virtual {p1, v3, p2, v4}, Lb6/i;->e0(Lb6/n;Lb6/f;Lb6/l;)Lb6/n;

    move-result-object p1

    if-eq p1, v3, :cond_0

    invoke-static {v1, p0, v0}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lg6/e1;

    invoke-direct {p0, v2, v4, p1}, Lg6/e1;-><init>(Lu6/k;Lb6/l;Lb6/n;)V

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p1}, Lb6/i;->u()Lt6/p;

    move-object v3, v2

    check-cast v3, Lf6/m;

    iget-object v3, v3, Lf6/m;->a:Lb6/l;

    invoke-virtual {p1, v3, p2}, Lb6/i;->T(Lb6/l;Lb6/f;)Lb6/n;

    move-result-object p1

    invoke-static {v1, p0, v0}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Lg6/e1;

    invoke-direct {p0, v2, v3, p1}, Lg6/e1;-><init>(Lu6/k;Lb6/l;Lb6/n;)V

    return-object p0
.end method

.method public final b(Lb6/i;)V
    .locals 1

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    if-eqz p0, :cond_0

    instance-of v0, p0, Le6/s;

    if-eqz v0, :cond_0

    check-cast p0, Le6/s;

    invoke-interface {p0, p1}, Le6/s;->b(Lb6/i;)V

    :cond_0
    return-void
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {v0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lg6/e1;->o:Lu6/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    check-cast p0, Lf6/m;

    invoke-virtual {p0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 4
    iget-object v0, p0, Lg6/e1;->p:Lb6/l;

    iget-object v1, v0, Lb6/l;->o:Ljava/lang/Class;

    .line 5
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 9
    const-string p2, "Cannot update object of type %s (using deserializer for type %s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p3, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p3, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    iget-object p0, p0, Lg6/e1;->o:Lu6/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    check-cast p0, Lf6/m;

    invoke-virtual {p0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 4
    iget-object p3, p0, Lg6/e1;->p:Lb6/l;

    iget-object v0, p3, Lb6/l;->o:Ljava/lang/Class;

    .line 5
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0, p1, p2, p4}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1, p3}, [Ljava/lang/Object;

    move-result-object p1

    .line 9
    const-string p2, "Cannot update object of type %s (using deserializer for type %s)"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAbsentValue(Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {v0, p1}, Lb6/n;->getAbsentValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg6/e1;->o:Lu6/k;

    check-cast p0, Lf6/m;

    invoke-virtual {p0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDelegatee()Lb6/n;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->getEmptyAccessPattern()Lu6/a;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {v0, p1}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg6/e1;->o:Lu6/k;

    check-cast p0, Lf6/m;

    invoke-virtual {p0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getKnownPropertyNames()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getNullAccessPattern()Lu6/a;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->getNullAccessPattern()Lu6/a;

    move-result-object p0

    return-object p0
.end method

.method public final getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {v0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lg6/e1;->o:Lu6/k;

    check-cast p0, Lf6/m;

    invoke-virtual {p0, p1}, Lf6/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->handledType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final isCachable()Z
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lb6/n;->isCachable()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object p0

    return-object p0
.end method

.method public final replaceDelegatee(Lb6/n;)Lb6/n;
    .locals 2

    const-class v0, Lg6/e1;

    const-string v1, "replaceDelegatee"

    invoke-static {v0, p0, v1}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg6/e1;->q:Lb6/n;

    if-ne p1, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lg6/e1;

    iget-object v1, p0, Lg6/e1;->o:Lu6/k;

    iget-object p0, p0, Lg6/e1;->p:Lb6/l;

    invoke-direct {v0, v1, p0, p1}, Lg6/e1;-><init>(Lu6/k;Lb6/l;Lb6/n;)V

    return-object v0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {p0, p1}, Lb6/n;->supportsUpdate(Lb6/h;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final unwrappingDeserializer(Lu6/r;)Lb6/n;
    .locals 2

    const-class v0, Lg6/e1;

    const-string v1, "unwrappingDeserializer"

    invoke-static {v0, p0, v1}, Lu6/h;->F(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg6/e1;->q:Lb6/n;

    invoke-virtual {v0, p1}, Lb6/n;->unwrappingDeserializer(Lu6/r;)Lb6/n;

    move-result-object p1

    invoke-virtual {p0, p1}, Lg6/e1;->replaceDelegatee(Lb6/n;)Lb6/n;

    move-result-object p0

    return-object p0
.end method
