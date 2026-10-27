.class public abstract Le6/n;
.super Lb6/i;
.source "SourceFile"


# instance fields
.field public transient y:Ljava/util/LinkedHashMap;

.field public z:Ljava/util/ArrayList;


# virtual methods
.method public abstract F0(Lb6/h;)Le6/n;
.end method

.method public abstract G0(Lb6/h;Ls5/k;)Le6/n;
.end method

.method public H0(Ls5/k;Lb6/l;Lb6/n;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lb6/j;->G:Lb6/j;

    invoke-virtual {v0, v1}, Lb6/h;->t(Lb6/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    iget-object v1, v0, Ld6/n;->q:Lu6/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p2, Lb6/l;->o:Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Lu6/m;->a(Ljava/lang/Class;Ld6/n;)Lb6/i0;

    move-result-object v0

    iget-object v0, v0, Lb6/i0;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object v1

    sget-object v2, Ls5/n;->u:Ls5/n;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object v1

    sget-object v2, Ls5/n;->y:Ls5/n;

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Ls5/k;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    invoke-virtual {p3, p1, p0}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Ls5/k;->z0()Ls5/n;

    move-result-object p3

    sget-object v1, Ls5/n;->v:Ls5/n;

    if-ne p3, v1, :cond_0

    return-object p2

    :cond_0
    invoke-static {v0}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Current token not END_OBJECT (to match wrapper object with root name %s), but %s"

    invoke-virtual {p0, v1, p2, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_1
    invoke-static {v1}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lu6/h;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2}, Lu6/h;->r(Lb6/l;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, p3, v0}, [Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Lb6/l;->o:Ljava/lang/Class;

    const-string p3, "Root name (%s) does not match expected (%s) for type %s"

    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lh6/b;

    iget-object p0, p0, Lb6/i;->t:Ls5/k;

    invoke-direct {p3, p0, p1}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-virtual {p3, p2, v1}, Lb6/p;->h(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    throw p3

    :cond_3
    invoke-static {v0}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Current token not FIELD_NAME (to contain expected root name %s), but %s"

    invoke-virtual {p0, v2, p2, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_4
    invoke-static {v0}, Lu6/h;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ls5/k;->t()Ls5/n;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Current token not START_OBJECT (needed to unwrap root name %s), but %s"

    invoke-virtual {p0, v2, p2, p1}, Lb6/i;->B0(Ls5/n;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v3

    :cond_5
    invoke-virtual {p3, p1, p0}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract I0(Le6/h;)Le6/n;
.end method

.method public final P(Ljava/lang/Object;)Lb6/n;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lb6/n;

    if-eqz v0, :cond_1

    check-cast p1, Lb6/n;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Class;

    const-class v0, Lb6/m;

    if-eq p1, v0, :cond_5

    invoke-static {p1}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-class v0, Lb6/n;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ld6/m;->j()V

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-static {p1, v0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/n;

    :goto_0
    instance-of v0, p1, Le6/s;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Le6/s;

    invoke-interface {v0, p0}, Le6/s;->b(Lb6/i;)V

    :cond_3
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; expected Class<JsonDeserializer>"

    invoke-static {p1, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned deserializer definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected type JsonDeserializer or Class<JsonDeserializer> instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final X(Ljava/lang/Object;Lr5/d1;)Lf6/b0;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p2, p1}, Lr5/d1;->d(Ljava/lang/Object;)Lr5/c1;

    move-result-object p1

    iget-object p2, p0, Le6/n;->y:Ljava/util/LinkedHashMap;

    if-nez p2, :cond_1

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le6/n;->y:Ljava/util/LinkedHashMap;

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lf6/b0;

    :goto_0
    iget-object p1, p0, Le6/n;->z:Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0

    :cond_3
    new-instance p1, Ljava/util/ArrayList;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Le6/n;->z:Ljava/util/ArrayList;

    :goto_1
    throw v0
.end method

.method public final p0(Ljava/lang/Object;)Lb6/w;
    .locals 2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lb6/w;

    if-eqz v0, :cond_1

    check-cast p1, Lb6/w;

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_6

    check-cast p1, Ljava/lang/Class;

    const-class v0, Lb6/v;

    if-eq p1, v0, :cond_5

    invoke-static {p1}, Lu6/h;->t(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-class v0, Lb6/w;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lb6/i;->q:Lb6/h;

    invoke-virtual {v0}, Ld6/m;->j()V

    sget-object v1, Lb6/x;->A:Lb6/x;

    invoke-virtual {v0, v1}, Ld6/m;->m(Lb6/x;)Z

    move-result v0

    invoke-static {p1, v0}, Lu6/h;->h(Ljava/lang/Class;Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/w;

    :goto_0
    instance-of v0, p1, Le6/s;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Le6/s;

    invoke-interface {v0, p0}, Le6/s;->b(Lb6/i;)V

    :cond_3
    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned Class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; expected Class<KeyDeserializer>"

    invoke-static {p1, v0, v1}, La6/q;->i(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnnotationIntrospector returned key deserializer definition of type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; expected type KeyDeserializer or Class<KeyDeserializer> instead"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
