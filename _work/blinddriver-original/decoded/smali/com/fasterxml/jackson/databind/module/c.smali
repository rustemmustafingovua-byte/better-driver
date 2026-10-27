.class public final Lcom/fasterxml/jackson/databind/module/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/q;
.implements Ljava/io/Serializable;


# instance fields
.field public l:Ljava/util/HashMap;


# virtual methods
.method public final a(Lb6/l;)Lb6/w;
    .locals 1

    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/c;->l:Ljava/util/HashMap;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lt6/b;

    iget-object p1, p1, Lb6/l;->o:Ljava/lang/Class;

    invoke-direct {v0, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/w;

    return-object p0
.end method
