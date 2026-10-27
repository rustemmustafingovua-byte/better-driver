.class public Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;
.super Ljava/lang/IllegalArgumentException;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/util/exceptions/GHException;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final details:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


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

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;->details:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getDetails()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;->details:Ljava/util/Map;

    return-object p0
.end method
