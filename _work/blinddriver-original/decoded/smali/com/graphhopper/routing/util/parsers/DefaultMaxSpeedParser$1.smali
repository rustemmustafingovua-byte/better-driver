.class Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$1;
.super Ljava/util/LinkedHashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$Result;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;IFZ)V
    .locals 0

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser$1;->this$0:Lcom/graphhopper/routing/util/parsers/DefaultMaxSpeedParser;

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result p0

    const/16 p1, 0xbb8

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
