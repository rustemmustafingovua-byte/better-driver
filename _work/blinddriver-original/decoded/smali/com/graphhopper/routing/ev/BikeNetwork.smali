.class public Lcom/graphhopper/routing/ev/BikeNetwork;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "bike"

    invoke-static {v0}, Lcom/graphhopper/routing/ev/RouteNetwork;->key(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/graphhopper/routing/ev/BikeNetwork;->KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
