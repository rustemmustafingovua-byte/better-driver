.class public abstract Lb6/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le6/r;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public abstract deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
.end method

.method public deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls5/k;",
            "Lb6/i;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p0}, Lb6/i;->a0(Lb6/n;)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p3, p1, p2}, Ln6/d;->b(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Ls5/k;Lb6/i;Ln6/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls5/k;",
            "Lb6/i;",
            "Ln6/d;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p2, p0}, Lb6/i;->a0(Lb6/n;)V

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public findBackReference(Ljava/lang/String;)Le6/y;
    .locals 3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot handle managed/back reference \'"

    const-string v2, "\': type: value deserializer of type "

    invoke-static {v1, p1, v2}, La6/q;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not support them"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAbsentValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDelegatee()Lb6/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lb6/n;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0
.end method

.method public getEmptyValue()Ljava/lang/Object;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p0}, Lb6/n;->getNullValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getKnownPropertyNames()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNullAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->m:Lu6/a;

    return-object p0
.end method

.method public getNullValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/i;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb6/n;->getNullValue()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getObjectIdReader()Lf6/r;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handledType()Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public isCachable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public logicalType()Lt6/f;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public replaceDelegatee(Lb6/n;)Lb6/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb6/n;",
            ")",
            "Lb6/n;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public unwrappingDeserializer(Lu6/r;)Lb6/n;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/r;",
            ")",
            "Lb6/n;"
        }
    .end annotation

    return-object p0
.end method
