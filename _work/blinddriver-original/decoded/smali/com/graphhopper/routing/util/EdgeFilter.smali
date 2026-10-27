.class public interface abstract Lcom/graphhopper/routing/util/EdgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/graphhopper/routing/util/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/graphhopper/routing/util/EdgeFilter;->ALL_EDGES:Lcom/graphhopper/routing/util/EdgeFilter;

    return-void
.end method

.method public static synthetic f(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    invoke-static {p0}, Lcom/graphhopper/routing/util/EdgeFilter;->lambda$static$0(Lcom/graphhopper/util/EdgeIteratorState;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$0(Lcom/graphhopper/util/EdgeIteratorState;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public abstract accept(Lcom/graphhopper/util/EdgeIteratorState;)Z
.end method
