.class public Lcom/graphhopper/storage/MMapDirectory;
.super Lcom/graphhopper/storage/GHDirectory;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/graphhopper/storage/MMapDirectory;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "reserved for direct mapped memory"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    sget-object v0, Lcom/graphhopper/storage/DAType;->MMAP:Lcom/graphhopper/storage/DAType;

    invoke-direct {p0, p1, v0}, Lcom/graphhopper/storage/GHDirectory;-><init>(Ljava/lang/String;Lcom/graphhopper/storage/DAType;)V

    return-void
.end method
