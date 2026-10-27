.class public Lcom/graphhopper/routing/util/parsers/OSMSmoothnessParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/routing/util/parsers/TagParser;


# instance fields
.field private final smoothnessEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Smoothness;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/graphhopper/routing/ev/EnumEncodedValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/graphhopper/routing/ev/EnumEncodedValue<",
            "Lcom/graphhopper/routing/ev/Smoothness;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/routing/util/parsers/OSMSmoothnessParser;->smoothnessEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    return-void
.end method


# virtual methods
.method public handleWayTags(ILcom/graphhopper/routing/ev/EdgeIntAccess;Lcom/graphhopper/reader/ReaderWay;Lcom/graphhopper/storage/IntsRef;)V
    .locals 0

    const-string p4, "smoothness"

    invoke-virtual {p3, p4}, Lcom/graphhopper/reader/ReaderElement;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/graphhopper/routing/ev/Smoothness;->find(Ljava/lang/String;)Lcom/graphhopper/routing/ev/Smoothness;

    move-result-object p3

    sget-object p4, Lcom/graphhopper/routing/ev/Smoothness;->MISSING:Lcom/graphhopper/routing/ev/Smoothness;

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/graphhopper/routing/util/parsers/OSMSmoothnessParser;->smoothnessEnc:Lcom/graphhopper/routing/ev/EnumEncodedValue;

    const/4 p4, 0x0

    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/graphhopper/routing/ev/EnumEncodedValue;->setEnum(ZILcom/graphhopper/routing/ev/EdgeIntAccess;Ljava/lang/Enum;)V

    return-void
.end method
