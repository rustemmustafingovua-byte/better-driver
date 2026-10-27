.class public Lcom/graphhopper/storage/RAMDirectory;
.super Lcom/graphhopper/storage/GHDirectory;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/graphhopper/storage/RAMDirectory;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/RAMDirectory;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 3
    sget-object p2, Lcom/graphhopper/storage/DAType;->RAM_STORE:Lcom/graphhopper/storage/DAType;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/graphhopper/storage/DAType;->RAM:Lcom/graphhopper/storage/DAType;

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/graphhopper/storage/GHDirectory;-><init>(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V

    return-void
.end method
