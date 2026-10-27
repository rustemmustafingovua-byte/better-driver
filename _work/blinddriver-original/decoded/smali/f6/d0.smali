.class public final Lf6/d0;
.super Lb6/n;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final l:Ln6/d;

.field public final m:Lb6/n;


# direct methods
.method public constructor <init>(Ln6/d;Lb6/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf6/d0;->l:Ln6/d;

    iput-object p2, p0, Lf6/d0;->m:Lb6/n;

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lf6/d0;->m:Lb6/n;

    iget-object p0, p0, Lf6/d0;->l:Ln6/d;

    invoke-virtual {v0, p1, p2, p0}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Type-wrapped deserializer\'s deserializeWithType should never get called"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getDelegatee()Lb6/n;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->getDelegatee()Lb6/n;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0, p1}, Lb6/n;->getEmptyValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getKnownPropertyNames()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->getKnownPropertyNames()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public final getNullValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0, p1}, Lb6/n;->getNullValue(Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final handledType()Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->handledType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0}, Lb6/n;->logicalType()Lt6/f;

    move-result-object p0

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lf6/d0;->m:Lb6/n;

    invoke-virtual {p0, p1}, Lb6/n;->supportsUpdate(Lb6/h;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
