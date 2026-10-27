.class public final Lcom/graphhopper/util/Parameters$Routing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/graphhopper/util/Parameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Routing"
.end annotation


# static fields
.field public static final ALGORITHM:Ljava/lang/String; = "algorithm"

.field public static final CALC_POINTS:Ljava/lang/String; = "calc_points"

.field public static final CURBSIDE:Ljava/lang/String; = "curbside"

.field public static final CURBSIDE_STRICTNESS:Ljava/lang/String; = "curbside_strictness"

.field public static final DEFAULT_HEADING_PENALTY:D = 300.0

.field public static final EDGE_BASED:Ljava/lang/String; = "edge_based"

.field public static final ELEVATION_WAY_POINT_MAX_DISTANCE:Ljava/lang/String; = "elevation_way_point_max_distance"

.field public static final HEADING_PENALTY:Ljava/lang/String; = "heading_penalty"

.field public static final INIT_INSTRUCTIONS:Ljava/lang/String; = "routing.instructions"

.field public static final INIT_MAX_VISITED_NODES:Ljava/lang/String; = "routing.max_visited_nodes"

.field public static final INIT_TIMEOUT_MS:Ljava/lang/String; = "routing.timeout_ms"

.field public static final INIT_WAY_POINT_MAX_DISTANCE:Ljava/lang/String; = "routing.way_point_max_distance"

.field public static final INSTRUCTIONS:Ljava/lang/String; = "instructions"

.field public static final MAX_VISITED_NODES:Ljava/lang/String; = "max_visited_nodes"

.field public static final PASS_THROUGH:Ljava/lang/String; = "pass_through"

.field public static final POINT_HINT:Ljava/lang/String; = "point_hint"

.field public static final SNAP_PREVENTION:Ljava/lang/String; = "snap_prevention"

.field public static final TIMEOUT_MS:Ljava/lang/String; = "timeout_ms"

.field public static final TURN_COSTS:Ljava/lang/String; = "turn_costs"

.field public static final U_TURN_COSTS:Ljava/lang/String; = "u_turn_costs"

.field public static final WAY_POINT_MAX_DISTANCE:Ljava/lang/String; = "way_point_max_distance"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
