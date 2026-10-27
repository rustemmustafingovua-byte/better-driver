.class public Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/reader/osm/RestrictionTagParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# instance fields
.field private final restriction:Ljava/lang/String;

.field private final restrictionType:Lcom/graphhopper/reader/osm/RestrictionType;


# direct methods
.method public constructor <init>(Lcom/graphhopper/reader/osm/RestrictionType;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->restrictionType:Lcom/graphhopper/reader/osm/RestrictionType;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->restriction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getRestriction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->restriction:Ljava/lang/String;

    return-object p0
.end method

.method public getRestrictionType()Lcom/graphhopper/reader/osm/RestrictionType;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/RestrictionTagParser$Result;->restrictionType:Lcom/graphhopper/reader/osm/RestrictionType;

    return-object p0
.end method
