.class Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/coll/GHLongLongBTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReturnValue"
.end annotation


# instance fields
.field oldValue:[B

.field tree:Lcom/graphhopper/coll/GHLongLongBTree$BTreeEntry;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/graphhopper/coll/GHLongLongBTree$ReturnValue;->oldValue:[B

    return-void
.end method
