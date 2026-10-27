.class public Lcom/graphhopper/jackson/MultiExceptionSerializer;
.super Lb6/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/u;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getMessage(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public serialize(Lcom/graphhopper/jackson/MultiException;Ls5/g;Lb6/r0;)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Lcom/graphhopper/jackson/MultiException;->getErrors()Ljava/util/List;

    move-result-object p0

    .line 3
    new-instance p1, Lp6/v;

    sget-object p3, Lp6/m;->l:Lp6/m;

    invoke-direct {p1, p3}, Lp6/v;-><init>(Lp6/m;)V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/graphhopper/jackson/MultiExceptionSerializer;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {p1, v1, v0}, Lp6/v;->K(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lp6/a;

    invoke-direct {v0, p3}, Lp6/a;-><init>(Lp6/m;)V

    .line 6
    iget-object p3, p1, Lp6/v;->m:Ljava/util/LinkedHashMap;

    const-string v2, "hints"

    invoke-interface {p3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Throwable;

    .line 8
    iget-object v2, v0, Lp6/f;->l:Lp6/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    new-instance v3, Lp6/v;

    invoke-direct {v3, v2}, Lp6/v;-><init>(Lp6/m;)V

    .line 10
    invoke-virtual {v0, v3}, Lp6/a;->H(Lb6/q;)V

    .line 11
    invoke-static {p3}, Lcom/graphhopper/jackson/MultiExceptionSerializer;->getMessage(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lp6/v;->K(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "details"

    invoke-virtual {v3, v4, v2}, Lp6/v;->K(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    instance-of v2, p3, Lcom/graphhopper/util/exceptions/GHException;

    if-eqz v2, :cond_0

    .line 14
    check-cast p3, Lcom/graphhopper/util/exceptions/GHException;

    invoke-interface {p3}, Lcom/graphhopper/util/exceptions/GHException;->getDetails()Ljava/util/Map;

    move-result-object p3

    new-instance v2, Lcom/graphhopper/jackson/a;

    invoke-direct {v2, v3}, Lcom/graphhopper/jackson/a;-><init>(Lp6/v;)V

    invoke-interface {p3, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p2, p1}, Ls5/g;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/graphhopper/jackson/MultiException;

    invoke-virtual {p0, p1, p2, p3}, Lcom/graphhopper/jackson/MultiExceptionSerializer;->serialize(Lcom/graphhopper/jackson/MultiException;Ls5/g;Lb6/r0;)V

    return-void
.end method
