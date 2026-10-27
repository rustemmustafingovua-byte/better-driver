.class public Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private data:[B

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;->type:Ljava/lang/String;

    iput-object p2, p0, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;->data:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;->data:[B

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/graphhopper/reader/osm/pbf/PbfRawBlob;->type:Ljava/lang/String;

    return-object p0
.end method
