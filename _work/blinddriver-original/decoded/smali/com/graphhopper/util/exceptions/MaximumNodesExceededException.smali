.class public Lcom/graphhopper/util/exceptions/MaximumNodesExceededException;
.super Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;
.source "SourceFile"


# static fields
.field public static final NODES_KEY:Ljava/lang/String; = "max_visited_nodes"

.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "max_visited_nodes"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0, p2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/graphhopper/util/exceptions/DetailedIllegalArgumentException;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
