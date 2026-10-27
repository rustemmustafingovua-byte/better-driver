.class public final synthetic Lia/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lia/n;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lia/n;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lm0/b2;->b:Lm0/a2;

    return-object p0

    :pswitch_0
    sget-object p0, Lm0/j1;->a:Lr0/a0;

    const/4 p0, 0x0

    return-object p0

    :pswitch_1
    new-instance p0, Lm0/i1;

    const-wide/16 v0, 0x1

    invoke-direct {p0, v0, v1}, Lm0/i1;-><init>(J)V

    return-object p0

    :pswitch_2
    sget-object p0, Lu9/e0;->a:Lba/e;

    sget-object p0, Lba/d;->n:Lba/d;

    return-object p0

    :pswitch_3
    sget-object p0, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_4
    sget-object p0, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    new-instance p0, Lha/e0;

    sget-object v0, Lha/a1;->a:Lha/a1;

    sget-object v0, Lua/nav/stats/CongestionCell$$serializer;->INSTANCE:Lua/nav/stats/CongestionCell$$serializer;

    invoke-direct {p0, v0}, Lha/e0;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_5
    sget-object p0, Lua/nav/stats/TripStatsData;->Companion:Lua/nav/stats/TripStatsData$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/stats/DayTotals$$serializer;->INSTANCE:Lua/nav/stats/DayTotals$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_6
    sget-object p0, Lua/nav/routing/SavedRoutesFile;->Companion:Lua/nav/routing/SavedRoutesFile$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/SavedRoute$$serializer;->INSTANCE:Lua/nav/routing/SavedRoute$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_7
    sget-object p0, Lua/nav/routing/SavedRoute;->Companion:Lua/nav/routing/SavedRoute$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_8
    sget-object p0, Lua/nav/routing/SavedAddressesFile;->Companion:Lua/nav/routing/SavedAddressesFile$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/SavedAddress$$serializer;->INSTANCE:Lua/nav/routing/SavedAddress$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_9
    sget-object p0, Lua/nav/routing/RoutingManifest;->Companion:Lua/nav/routing/RoutingManifest$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/RoutingPackInfo$$serializer;->INSTANCE:Lua/nav/routing/RoutingPackInfo$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_b
    sget-object p0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_c
    sget-object p0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/c0;->a:Lha/c0;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_d
    sget-object p0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/Step$$serializer;->INSTANCE:Lua/nav/routing/Step$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_e
    sget-object p0, Lua/nav/routing/Route;->Companion:Lua/nav/routing/Route$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/GeoPoint$$serializer;->INSTANCE:Lua/nav/routing/GeoPoint$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :pswitch_10
    sget-object p0, Lua/nav/routing/OsrmStep;->Companion:Lua/nav/routing/OsrmStep$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/OsrmIntersection$$serializer;->INSTANCE:Lua/nav/routing/OsrmIntersection$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_11
    sget-object p0, Lua/nav/routing/OsrmRoute;->Companion:Lua/nav/routing/OsrmRoute$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/OsrmLeg$$serializer;->INSTANCE:Lua/nav/routing/OsrmLeg$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_12
    sget-object p0, Lua/nav/routing/OsrmResponse;->Companion:Lua/nav/routing/OsrmResponse$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/OsrmRoute$$serializer;->INSTANCE:Lua/nav/routing/OsrmRoute$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_13
    sget-object p0, Lua/nav/routing/OsrmResponse;->Companion:Lua/nav/routing/OsrmResponse$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/OsrmRoute$$serializer;->INSTANCE:Lua/nav/routing/OsrmRoute$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_14
    sget-object p0, Lua/nav/routing/OsrmManeuver;->Companion:Lua/nav/routing/OsrmManeuver$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/q;->a:Lha/q;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_15
    sget-object p0, Lua/nav/routing/OsrmLeg;->Companion:Lua/nav/routing/OsrmLeg$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/OsrmStep$$serializer;->INSTANCE:Lua/nav/routing/OsrmStep$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_16
    sget-object p0, Lua/nav/routing/OsrmIntersection;->Companion:Lua/nav/routing/OsrmIntersection$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/q;->a:Lha/q;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_17
    sget-object p0, Lua/nav/routing/OsrmAnnotation;->Companion:Lua/nav/routing/OsrmAnnotation$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lha/a1;->a:Lha/a1;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_18
    sget-object p0, Lua/nav/routing/OsrmAnnotation;->Companion:Lua/nav/routing/OsrmAnnotation$Companion;

    new-instance p0, Lha/c;

    sget-object v0, Lua/nav/routing/OsrmMaxspeed$$serializer;->INSTANCE:Lua/nav/routing/OsrmMaxspeed$$serializer;

    invoke-direct {p0, v0}, Lha/c;-><init>(Lkotlinx/serialization/KSerializer;)V

    return-object p0

    :pswitch_19
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_1a
    sget-object p0, Lia/g;->b:Lia/f;

    return-object p0

    :pswitch_1b
    sget-object p0, Lia/b0;->b:Lia/a0;

    return-object p0

    :pswitch_1c
    sget-object p0, Lia/t;->b:Lha/u0;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
