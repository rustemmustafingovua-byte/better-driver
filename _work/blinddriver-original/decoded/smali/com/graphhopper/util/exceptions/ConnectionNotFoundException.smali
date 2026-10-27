.class public Lcom/graphhopper/util/exceptions/ConnectionNotFoundException;
.super Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
