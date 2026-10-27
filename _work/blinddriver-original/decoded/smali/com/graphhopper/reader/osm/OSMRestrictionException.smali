.class public Lcom/graphhopper/reader/osm/OSMRestrictionException;
.super Ljava/lang/Exception;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static withoutWarning()Lcom/graphhopper/reader/osm/OSMRestrictionException;
    .locals 2

    new-instance v0, Lcom/graphhopper/reader/osm/OSMRestrictionException;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/graphhopper/reader/osm/OSMRestrictionException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public isWithoutWarning()Z
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    return p0
.end method
