.class public final Lr6/q;
.super Ls6/o;
.source "SourceFile"


# virtual methods
.method public final i(Lb6/r0;Ljava/lang/Object;)V
    .locals 3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lu6/t;->a(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "No serializer found for class "

    iget-object p0, p0, Ls6/n0;->l:Ljava/lang/Class;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS). This appears to be a native image, in which case you may need to configure reflection for the class that is to be serialized"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw v1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationFeature.FAIL_ON_EMPTY_BEANS)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    sget-object v0, Lb6/q0;->p:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ls6/o;->serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3, p1}, Lr6/q;->i(Lb6/r0;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2

    sget-object v0, Lb6/q0;->p:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Ls6/o;->serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V

    return-void

    :cond_0
    invoke-virtual {p0, p3, p1}, Lr6/q;->i(Lb6/r0;Ljava/lang/Object;)V

    const/4 p0, 0x0

    throw p0
.end method
