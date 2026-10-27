.class Lcom/graphhopper/jackson/GHPointDeserializer;
.super Lb6/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb6/n;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/util/shapes/GHPoint;
    .locals 0

    .line 2
    :try_start_0
    const-class p0, [D

    .line 3
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2, p0, p1}, Ls5/o;->b(Ljava/lang/Class;Ls5/k;)Ljava/lang/Object;

    move-result-object p0

    .line 5
    check-cast p0, [D

    .line 6
    invoke-static {p0}, Lcom/graphhopper/util/shapes/GHPoint;->fromJson([D)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ObjectCodec defined for parser, needed for deserialization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ls5/l; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ls5/l;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "point is invalid: "

    .line 9
    invoke-static {p2, p0}, La6/q;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/jackson/GHPointDeserializer;->deserialize(Ls5/k;Lb6/i;)Lcom/graphhopper/util/shapes/GHPoint;

    move-result-object p0

    return-object p0
.end method
