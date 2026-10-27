.class Lcom/graphhopper/jackson/JtsEnvelopeDeserializer;
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
.method public bridge synthetic deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/graphhopper/jackson/JtsEnvelopeDeserializer;->deserialize(Ls5/k;Lb6/i;)Lpb/h;

    move-result-object p0

    return-object p0
.end method

.method public deserialize(Ls5/k;Lb6/i;)Lpb/h;
    .locals 9

    .line 2
    invoke-virtual {p1}, Ls5/k;->R()Ls5/o;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3
    const-class p2, [D

    invoke-virtual {p0, p2, p1}, Ls5/o;->b(Ljava/lang/Class;Ls5/k;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, [D

    .line 5
    new-instance v0, Lpb/h;

    const/4 p1, 0x0

    aget-wide v1, p0, p1

    const/4 p1, 0x2

    aget-wide v3, p0, p1

    const/4 p1, 0x1

    aget-wide v5, p0, p1

    const/4 p1, 0x3

    aget-wide v7, p0, p1

    invoke-direct/range {v0 .. v8}, Lpb/h;-><init>(DDDD)V

    return-object v0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No ObjectCodec defined for parser, needed for deserialization"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
