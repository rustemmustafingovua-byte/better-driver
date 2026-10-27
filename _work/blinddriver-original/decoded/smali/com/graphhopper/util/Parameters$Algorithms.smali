.class public final Lcom/graphhopper/util/Parameters$Algorithms;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/util/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Algorithms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/graphhopper/util/Parameters$Algorithms$RoundTrip;,
        Lcom/graphhopper/util/Parameters$Algorithms$AStarBi;,
        Lcom/graphhopper/util/Parameters$Algorithms$AStar;,
        Lcom/graphhopper/util/Parameters$Algorithms$AltRoute;
    }
.end annotation


# static fields
.field public static final ALT_ROUTE:Ljava/lang/String; = "alternative_route"

.field public static final ASTAR:Ljava/lang/String; = "astar"

.field public static final ASTAR_BI:Ljava/lang/String; = "astarbi"

.field public static final DIJKSTRA:Ljava/lang/String; = "dijkstra"

.field public static final DIJKSTRA_BI:Ljava/lang/String; = "dijkstrabi"

.field public static final DIJKSTRA_ONE_TO_MANY:Ljava/lang/String; = "dijkstra_one_to_many"

.field public static final ROUND_TRIP:Ljava/lang/String; = "round_trip"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
