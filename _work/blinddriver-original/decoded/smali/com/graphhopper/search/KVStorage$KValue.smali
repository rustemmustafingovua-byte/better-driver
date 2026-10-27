.class public Lcom/graphhopper/search/KVStorage$KValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/search/KVStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KValue"
.end annotation


# instance fields
.field private final bwdValue:Ljava/lang/Object;

.field final fwdBwdEqual:Z

.field private final fwdValue:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Object cannot be null if forward and backward is both true"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "If both values are not null they have to be they same class but was: "

    const-string v1, " vs "

    .line 11
    invoke-static {v0, p1, v1, p2}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez p1, :cond_3

    if-eqz p2, :cond_2

    goto :goto_1

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "If both values are null just do not store them"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    return-void
.end method

.method public static bridge synthetic a(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/graphhopper/search/KVStorage$KValue;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/graphhopper/search/KVStorage$KValue;

    iget-object v2, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    instance-of v3, v2, [B

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    instance-of v3, v3, [B

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    iget-boolean v4, p1, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p1, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    iget-object p1, p1, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    iget-boolean v3, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    iget-boolean v4, p1, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    if-ne v3, v4, :cond_6

    check-cast v2, [B

    iget-object v3, p1, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    check-cast p0, [B

    iget-object p1, p1, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public getBwd()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    return-object p0
.end method

.method public getFwd()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    iget-object v1, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    iget-boolean p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdBwdEqual:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/graphhopper/search/KVStorage$KValue;->fwdValue:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/graphhopper/search/KVStorage$KValue;->bwdValue:Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, " | "

    invoke-static {v0, v1, p0}, La6/q;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
