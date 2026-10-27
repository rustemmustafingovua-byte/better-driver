.class public abstract Lb6/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acceptJsonFormatVisitor(Lm6/b;Lb6/l;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public getDelegatee()Lb6/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb6/u;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isEmpty(Lb6/r0;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/r0;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 2
    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEmpty(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lb6/u;->isEmpty(Lb6/r0;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isUnwrappingSerializer()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public properties()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lq6/c;",
            ">;"
        }
    .end annotation

    sget-object p0, Lu6/h;->c:Ljava/util/Iterator;

    return-object p0
.end method

.method public replaceDelegatee(Lb6/u;)Lb6/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/u;",
            ")",
            "Lb6/u;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public abstract serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
.end method

.method public serializeWithType(Ljava/lang/Object;Ls5/g;Lb6/r0;Ln6/e;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls5/g;",
            "Lb6/r0;",
            "Ln6/e;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Lb6/u;->handledType()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p4, " (by serializer of type "

    const-string v0, ")"

    const-string v1, "Type id handling not implemented for type "

    invoke-static {v1, p1, p4, p0, v0}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p2, p0}, Lb6/g;->F(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0
.end method

.method public unwrappingSerializer(Lu6/r;)Lb6/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/r;",
            ")",
            "Lb6/u;"
        }
    .end annotation

    return-object p0
.end method

.method public usesObjectId()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public withFilterId(Ljava/lang/Object;)Lb6/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lb6/u;"
        }
    .end annotation

    return-object p0
.end method

.method public withIgnoredProperties(Ljava/util/Set;)Lb6/u;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lb6/u;"
        }
    .end annotation

    return-object p0
.end method
