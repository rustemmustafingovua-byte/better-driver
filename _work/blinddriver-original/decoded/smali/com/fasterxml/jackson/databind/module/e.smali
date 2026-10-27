.class public final Lcom/fasterxml/jackson/databind/module/e;
.super Lq6/m;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public l:Ljava/util/HashMap;

.field public m:Ljava/util/HashMap;

.field public n:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fasterxml/jackson/databind/module/e;->n:Z

    return-void
.end method


# virtual methods
.method public final a(Lb6/l;)Lb6/u;
    .locals 3

    iget-object v0, p1, Lb6/l;->o:Ljava/lang/Class;

    new-instance v1, Lt6/b;

    invoke-direct {v1, v0}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    if-eqz p1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/u;

    if-eqz p1, :cond_4

    return-object p1

    :cond_0
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    if-eqz v2, :cond_4

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/u;

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    iget-boolean v2, p0, Lcom/fasterxml/jackson/databind/module/e;->n:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lb6/l;->d0()Z

    move-result p1

    if-eqz p1, :cond_2

    const-class p1, Ljava/lang/Enum;

    iput-object p1, v1, Lt6/b;->m:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lt6/b;->l:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, v1, Lt6/b;->n:I

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/u;

    if-eqz p1, :cond_2

    return-object p1

    :cond_2
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_4

    iput-object p1, v1, Lt6/b;->m:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lt6/b;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    iput v2, v1, Lt6/b;->n:I

    iget-object v2, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb6/u;

    if-eqz v2, :cond_3

    return-object v2

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    if-eqz p1, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/module/e;->c(Ljava/lang/Class;Lt6/b;)Lb6/u;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p0, v0, v1}, Lcom/fasterxml/jackson/databind/module/e;->c(Ljava/lang/Class;Lt6/b;)Lb6/u;

    move-result-object p1

    if-eqz p1, :cond_6

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Ljava/lang/Class;Lb6/u;)V
    .locals 2

    new-instance v0, Lt6/b;

    invoke-direct {v0, p1}, Lt6/b;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    :cond_0
    iget-object p0, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    invoke-virtual {p0, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    :cond_2
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/module/e;->l:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class p2, Ljava/lang/Enum;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/fasterxml/jackson/databind/module/e;->n:Z

    :cond_3
    return-void
.end method

.method public final c(Ljava/lang/Class;Lt6/b;)Lb6/u;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iput-object v2, p2, Lt6/b;->m:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lt6/b;->l:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, p2, Lt6/b;->n:I

    iget-object v3, p0, Lcom/fasterxml/jackson/databind/module/e;->m:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb6/u;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    invoke-virtual {p0, v2, p2}, Lcom/fasterxml/jackson/databind/module/e;->c(Ljava/lang/Class;Lt6/b;)Lb6/u;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
