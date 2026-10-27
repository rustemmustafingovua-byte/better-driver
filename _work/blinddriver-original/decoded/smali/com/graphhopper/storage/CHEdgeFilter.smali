.class public interface abstract Lcom/graphhopper/storage/CHEdgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_EDGES:Lcom/graphhopper/storage/CHEdgeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lc2/c0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lc2/c0;-><init>(I)V

    sput-object v0, Lcom/graphhopper/storage/CHEdgeFilter;->ALL_EDGES:Lcom/graphhopper/storage/CHEdgeFilter;

    return-void
.end method

.method public static synthetic e(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/storage/CHEdgeFilter;->lambda$static$0(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract accept(Lcom/graphhopper/storage/RoutingCHEdgeIteratorState;)Z
.end method
