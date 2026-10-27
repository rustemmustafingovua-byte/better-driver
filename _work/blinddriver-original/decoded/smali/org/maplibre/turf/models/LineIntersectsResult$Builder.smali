.class public Lorg/maplibre/turf/models/LineIntersectsResult$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/maplibre/turf/models/LineIntersectsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private horizontalIntersection:Ljava/lang/Double;

.field private onLine1:Ljava/lang/Boolean;

.field private onLine2:Ljava/lang/Boolean;

.field private verticalIntersection:Ljava/lang/Double;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine1:Ljava/lang/Boolean;

    .line 4
    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine2:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Lorg/maplibre/turf/models/LineIntersectsResult;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine1:Ljava/lang/Boolean;

    .line 7
    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine2:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p1}, Lorg/maplibre/turf/models/LineIntersectsResult;->horizontalIntersection()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->horizontalIntersection:Ljava/lang/Double;

    .line 9
    invoke-virtual {p1}, Lorg/maplibre/turf/models/LineIntersectsResult;->verticalIntersection()Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->verticalIntersection:Ljava/lang/Double;

    .line 10
    invoke-virtual {p1}, Lorg/maplibre/turf/models/LineIntersectsResult;->onLine1()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine1:Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p1}, Lorg/maplibre/turf/models/LineIntersectsResult;->onLine2()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine2:Ljava/lang/Boolean;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/maplibre/turf/models/LineIntersectsResult;Lorg/maplibre/turf/models/LineIntersectsResult$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;-><init>(Lorg/maplibre/turf/models/LineIntersectsResult;)V

    return-void
.end method


# virtual methods
.method public build()Lorg/maplibre/turf/models/LineIntersectsResult;
    .locals 8

    iget-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine1:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, " onLine1"

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iget-object v1, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine2:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const-string v1, " onLine2"

    invoke-static {v0, v1}, La6/q;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lorg/maplibre/turf/models/LineIntersectsResult;

    iget-object v3, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->horizontalIntersection:Ljava/lang/Double;

    iget-object v4, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->verticalIntersection:Ljava/lang/Double;

    iget-object v0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine1:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object p0, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine2:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lorg/maplibre/turf/models/LineIntersectsResult;-><init>(Ljava/lang/Double;Ljava/lang/Double;ZZLorg/maplibre/turf/models/LineIntersectsResult$1;)V

    return-object v2

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing required properties:"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public horizontalIntersection(Ljava/lang/Double;)Lorg/maplibre/turf/models/LineIntersectsResult$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->horizontalIntersection:Ljava/lang/Double;

    return-object p0
.end method

.method public onLine1(Z)Lorg/maplibre/turf/models/LineIntersectsResult$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine1:Ljava/lang/Boolean;

    return-object p0
.end method

.method public onLine2(Z)Lorg/maplibre/turf/models/LineIntersectsResult$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->onLine2:Ljava/lang/Boolean;

    return-object p0
.end method

.method public verticalIntersection(Ljava/lang/Double;)Lorg/maplibre/turf/models/LineIntersectsResult$Builder;
    .locals 0

    iput-object p1, p0, Lorg/maplibre/turf/models/LineIntersectsResult$Builder;->verticalIntersection:Ljava/lang/Double;

    return-object p0
.end method
