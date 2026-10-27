.class public final synthetic Lua/nav/Tuning$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lha/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lua/nav/Tuning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1019
    name = "$serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lha/w;"
    }
.end annotation

.annotation runtime Lt8/c;
.end annotation


# static fields
.field public static final INSTANCE:Lua/nav/Tuning$$serializer;

.field private static final descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lua/nav/Tuning$$serializer;

    invoke-direct {v0}, Lua/nav/Tuning$$serializer;-><init>()V

    sput-object v0, Lua/nav/Tuning$$serializer;->INSTANCE:Lua/nav/Tuning$$serializer;

    new-instance v1, Lha/p0;

    const-string v2, "ua.nav.Tuning"

    const/16 v3, 0x2e

    invoke-direct {v1, v2, v0, v3}, Lha/p0;-><init>(Ljava/lang/String;Lha/w;I)V

    const-string v0, "preset"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "stopWindowMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "stopHoldMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "stopAccMean"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "stopAccStd"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "stopGyro"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "stopGyroAccMeanMax"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeAccMean"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeAccStd"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeGyro"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeConfirmMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeRampMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeSlowMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "resumeSlowCap"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnMinDeg"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnTolDeg"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnBehindM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnAheadM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnWindowMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnHoldEnabled"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "roadSnap"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "roadSnapGps"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "turnHoldMaxS"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "offRouteM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "offRouteHoldMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "offRouteFastM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "offRouteFastDeg"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "offRouteFastHoldMs"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "arriveM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "suspectNearM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "gateMaxSpeedKmh"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "speedPlan"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "signalSnap"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "blindDeviationEnabled"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "blindDeviationMinDeg"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "blindDeviationDelayS"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "missedTurnEnabled"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "missedTurnM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "cameraShowM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "cameraWarnM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "cameraBeepM"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "cameraSpeedTolKmh"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "trailSeconds"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "labelScale"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "maxLogMb"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    const-string v0, "logKeepDays"

    invoke-virtual {v1, v0, v2}, Lha/p0;->l(Ljava/lang/String;Z)V

    sput-object v1, Lua/nav/Tuning$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    const/16 p0, 0x2e

    new-array p0, p0, [Lkotlinx/serialization/KSerializer;

    sget-object v0, Lha/a1;->a:Lha/a1;

    const/4 v1, 0x0

    aput-object v0, p0, v1

    sget-object v0, Lha/i0;->a:Lha/i0;

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const/4 v1, 0x2

    aput-object v0, p0, v1

    sget-object v1, Lha/q;->a:Lha/q;

    const/4 v2, 0x3

    aput-object v1, p0, v2

    const/4 v2, 0x4

    aput-object v1, p0, v2

    const/4 v2, 0x5

    aput-object v1, p0, v2

    const/4 v2, 0x6

    aput-object v1, p0, v2

    const/4 v2, 0x7

    aput-object v1, p0, v2

    const/16 v2, 0x8

    aput-object v1, p0, v2

    const/16 v2, 0x9

    aput-object v1, p0, v2

    const/16 v2, 0xa

    aput-object v0, p0, v2

    const/16 v2, 0xb

    aput-object v0, p0, v2

    const/16 v2, 0xc

    aput-object v0, p0, v2

    const/16 v2, 0xd

    aput-object v1, p0, v2

    const/16 v2, 0xe

    aput-object v1, p0, v2

    const/16 v2, 0xf

    aput-object v1, p0, v2

    const/16 v2, 0x10

    aput-object v1, p0, v2

    const/16 v2, 0x11

    aput-object v1, p0, v2

    const/16 v2, 0x12

    aput-object v0, p0, v2

    sget-object v2, Lha/f;->a:Lha/f;

    const/16 v3, 0x13

    aput-object v2, p0, v3

    const/16 v3, 0x14

    aput-object v2, p0, v3

    const/16 v3, 0x15

    aput-object v2, p0, v3

    sget-object v3, Lha/c0;->a:Lha/c0;

    const/16 v4, 0x16

    aput-object v3, p0, v4

    const/16 v4, 0x17

    aput-object v1, p0, v4

    const/16 v4, 0x18

    aput-object v0, p0, v4

    const/16 v4, 0x19

    aput-object v1, p0, v4

    const/16 v4, 0x1a

    aput-object v1, p0, v4

    const/16 v4, 0x1b

    aput-object v0, p0, v4

    const/16 v0, 0x1c

    aput-object v1, p0, v0

    const/16 v0, 0x1d

    aput-object v1, p0, v0

    const/16 v0, 0x1e

    aput-object v1, p0, v0

    const/16 v0, 0x1f

    aput-object v2, p0, v0

    const/16 v0, 0x20

    aput-object v2, p0, v0

    const/16 v0, 0x21

    aput-object v2, p0, v0

    const/16 v0, 0x22

    aput-object v1, p0, v0

    const/16 v0, 0x23

    aput-object v3, p0, v0

    const/16 v0, 0x24

    aput-object v2, p0, v0

    const/16 v0, 0x25

    aput-object v1, p0, v0

    const/16 v0, 0x26

    aput-object v1, p0, v0

    const/16 v0, 0x27

    aput-object v1, p0, v0

    const/16 v0, 0x28

    aput-object v1, p0, v0

    const/16 v0, 0x29

    aput-object v1, p0, v0

    const/16 v0, 0x2a

    aput-object v3, p0, v0

    const/16 v0, 0x2b

    aput-object v1, p0, v0

    const/16 v0, 0x2c

    aput-object v3, p0, v0

    const/16 v0, 0x2d

    aput-object v3, p0, v0

    return-object p0
.end method

.method public bridge synthetic deserialize(Lkotlinx/serialization/encoding/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lua/nav/Tuning$$serializer;->deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/Tuning;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Lkotlinx/serialization/encoding/Decoder;)Lua/nav/Tuning;
    .locals 91

    move-object/from16 v0, p1

    const-string v1, "decoder"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lua/nav/Tuning$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v1}, Lkotlinx/serialization/encoding/Decoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lga/a;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move v10, v3

    move v11, v10

    move/from16 v49, v11

    move/from16 v50, v49

    move/from16 v51, v50

    move/from16 v52, v51

    move/from16 v69, v52

    move/from16 v70, v69

    move/from16 v71, v70

    move/from16 v74, v71

    move/from16 v75, v74

    move/from16 v86, v75

    move/from16 v89, v86

    move/from16 v90, v89

    move-object v12, v4

    move-wide v13, v5

    move-wide v15, v13

    move-wide/from16 v31, v15

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v47, v35

    move-wide/from16 v55, v47

    move-wide/from16 v61, v55

    move-wide/from16 v17, v7

    move-wide/from16 v19, v17

    move-wide/from16 v21, v19

    move-wide/from16 v23, v21

    move-wide/from16 v25, v23

    move-wide/from16 v27, v25

    move-wide/from16 v29, v27

    move-wide/from16 v37, v29

    move-wide/from16 v39, v37

    move-wide/from16 v41, v39

    move-wide/from16 v43, v41

    move-wide/from16 v45, v43

    move-wide/from16 v53, v45

    move-wide/from16 v57, v53

    move-wide/from16 v59, v57

    move-wide/from16 v63, v59

    move-wide/from16 v65, v63

    move-wide/from16 v67, v65

    move-wide/from16 v72, v67

    move-wide/from16 v76, v72

    move-wide/from16 v78, v76

    move-wide/from16 v80, v78

    move-wide/from16 v82, v80

    move-wide/from16 v84, v82

    move-wide/from16 v87, v84

    move v4, v2

    :goto_0
    if-eqz v4, :cond_0

    invoke-interface {v0, v1}, Lga/a;->q(Lkotlinx/serialization/descriptors/SerialDescriptor;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    new-instance v0, Lda/d;

    invoke-direct {v0, v5}, Lda/d;-><init>(I)V

    throw v0

    :pswitch_0
    const/16 v5, 0x2d

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v90

    or-int/lit16 v11, v11, 0x2000

    goto :goto_0

    :pswitch_1
    const/16 v5, 0x2c

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v89

    or-int/lit16 v11, v11, 0x1000

    goto :goto_0

    :pswitch_2
    const/16 v5, 0x2b

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v11, v11, 0x800

    move-wide/from16 v87, v5

    goto :goto_0

    :pswitch_3
    const/16 v5, 0x2a

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v86

    or-int/lit16 v11, v11, 0x400

    goto :goto_0

    :pswitch_4
    const/16 v5, 0x29

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v11, v11, 0x200

    move-wide/from16 v84, v5

    goto :goto_0

    :pswitch_5
    const/16 v5, 0x28

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v11, v11, 0x100

    move-wide/from16 v82, v5

    goto :goto_0

    :pswitch_6
    const/16 v5, 0x27

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v11, v11, 0x80

    move-wide/from16 v80, v5

    goto :goto_0

    :pswitch_7
    const/16 v5, 0x26

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v11, v11, 0x40

    move-wide/from16 v78, v5

    goto :goto_0

    :pswitch_8
    const/16 v5, 0x25

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v11, v11, 0x20

    move-wide/from16 v76, v5

    goto :goto_0

    :pswitch_9
    const/16 v5, 0x24

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v75

    or-int/lit8 v11, v11, 0x10

    goto :goto_0

    :pswitch_a
    const/16 v5, 0x23

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v74

    or-int/lit8 v11, v11, 0x8

    goto :goto_0

    :pswitch_b
    const/16 v5, 0x22

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v11, v11, 0x4

    move-wide/from16 v72, v5

    goto/16 :goto_0

    :pswitch_c
    const/16 v5, 0x21

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v71

    or-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    :pswitch_d
    const/16 v5, 0x20

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v70

    or-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :pswitch_e
    const/16 v5, 0x1f

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v69

    const/high16 v5, -0x80000000

    :goto_1
    or-int/2addr v10, v5

    goto/16 :goto_0

    :pswitch_f
    const/16 v5, 0x1e

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v10, v7

    move-wide/from16 v67, v5

    goto/16 :goto_0

    :pswitch_10
    const/16 v5, 0x1d

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x20000000

    or-int/2addr v10, v7

    move-wide/from16 v65, v5

    goto/16 :goto_0

    :pswitch_11
    const/16 v5, 0x1c

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x10000000

    or-int/2addr v10, v7

    move-wide/from16 v63, v5

    goto/16 :goto_0

    :pswitch_12
    const/16 v5, 0x1b

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    const/high16 v7, 0x8000000

    or-int/2addr v10, v7

    move-wide/from16 v61, v5

    goto/16 :goto_0

    :pswitch_13
    const/16 v5, 0x1a

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x4000000

    or-int/2addr v10, v7

    move-wide/from16 v59, v5

    goto/16 :goto_0

    :pswitch_14
    const/16 v5, 0x19

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x2000000

    or-int/2addr v10, v7

    move-wide/from16 v57, v5

    goto/16 :goto_0

    :pswitch_15
    const/16 v5, 0x18

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    const/high16 v7, 0x1000000

    or-int/2addr v10, v7

    move-wide/from16 v55, v5

    goto/16 :goto_0

    :pswitch_16
    const/16 v5, 0x17

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x800000

    or-int/2addr v10, v7

    move-wide/from16 v53, v5

    goto/16 :goto_0

    :pswitch_17
    const/16 v5, 0x16

    invoke-interface {v0, v1, v5}, Lga/a;->h(Lkotlinx/serialization/descriptors/SerialDescriptor;I)I

    move-result v52

    const/high16 v5, 0x400000

    goto :goto_1

    :pswitch_18
    const/16 v5, 0x15

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v51

    const/high16 v5, 0x200000

    goto :goto_1

    :pswitch_19
    const/16 v5, 0x14

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v50

    const/high16 v5, 0x100000

    goto/16 :goto_1

    :pswitch_1a
    const/16 v5, 0x13

    invoke-interface {v0, v1, v5}, Lga/a;->m(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v49

    const/high16 v5, 0x80000

    goto/16 :goto_1

    :pswitch_1b
    const/16 v5, 0x12

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    const/high16 v7, 0x40000

    or-int/2addr v10, v7

    move-wide/from16 v47, v5

    goto/16 :goto_0

    :pswitch_1c
    const/16 v5, 0x11

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x20000

    or-int/2addr v10, v7

    move-wide/from16 v45, v5

    goto/16 :goto_0

    :pswitch_1d
    const/16 v5, 0x10

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const/high16 v7, 0x10000

    or-int/2addr v10, v7

    move-wide/from16 v43, v5

    goto/16 :goto_0

    :pswitch_1e
    const/16 v5, 0xf

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    const v7, 0x8000

    or-int/2addr v10, v7

    move-wide/from16 v41, v5

    goto/16 :goto_0

    :pswitch_1f
    const/16 v5, 0xe

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v10, v10, 0x4000

    move-wide/from16 v39, v5

    goto/16 :goto_0

    :pswitch_20
    const/16 v5, 0xd

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v10, v10, 0x2000

    move-wide/from16 v37, v5

    goto/16 :goto_0

    :pswitch_21
    const/16 v5, 0xc

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    or-int/lit16 v10, v10, 0x1000

    move-wide/from16 v35, v5

    goto/16 :goto_0

    :pswitch_22
    const/16 v5, 0xb

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    or-int/lit16 v10, v10, 0x800

    move-wide/from16 v33, v5

    goto/16 :goto_0

    :pswitch_23
    const/16 v5, 0xa

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    or-int/lit16 v10, v10, 0x400

    move-wide/from16 v31, v5

    goto/16 :goto_0

    :pswitch_24
    const/16 v5, 0x9

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v10, v10, 0x200

    move-wide/from16 v29, v5

    goto/16 :goto_0

    :pswitch_25
    const/16 v5, 0x8

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v10, v10, 0x100

    move-wide/from16 v27, v5

    goto/16 :goto_0

    :pswitch_26
    const/4 v5, 0x7

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit16 v10, v10, 0x80

    move-wide/from16 v25, v5

    goto/16 :goto_0

    :pswitch_27
    const/4 v5, 0x6

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v10, v10, 0x40

    move-wide/from16 v23, v5

    goto/16 :goto_0

    :pswitch_28
    const/4 v5, 0x5

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v10, v10, 0x20

    move-wide/from16 v21, v5

    goto/16 :goto_0

    :pswitch_29
    const/4 v5, 0x4

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v10, v10, 0x10

    move-wide/from16 v19, v5

    goto/16 :goto_0

    :pswitch_2a
    const/4 v5, 0x3

    invoke-interface {v0, v1, v5}, Lga/a;->v(Lkotlinx/serialization/descriptors/SerialDescriptor;I)D

    move-result-wide v5

    or-int/lit8 v10, v10, 0x8

    move-wide/from16 v17, v5

    goto/16 :goto_0

    :pswitch_2b
    const/4 v5, 0x2

    invoke-interface {v0, v1, v5}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    or-int/lit8 v10, v10, 0x4

    move-wide v15, v5

    goto/16 :goto_0

    :pswitch_2c
    invoke-interface {v0, v1, v2}, Lga/a;->d(Lkotlinx/serialization/descriptors/SerialDescriptor;I)J

    move-result-wide v5

    or-int/lit8 v10, v10, 0x2

    move-wide v13, v5

    goto/16 :goto_0

    :pswitch_2d
    invoke-interface {v0, v1, v3}, Lga/a;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v5

    or-int/lit8 v10, v10, 0x1

    move-object v12, v5

    goto/16 :goto_0

    :pswitch_2e
    move v4, v3

    goto/16 :goto_0

    :cond_0
    invoke-interface {v0, v1}, Lga/a;->e(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    new-instance v9, Lua/nav/Tuning;

    invoke-direct/range {v9 .. v90}, Lua/nav/Tuning;-><init>(IILjava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDII)V

    return-object v9

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
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

.method public final getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;
    .locals 0

    sget-object p0, Lua/nav/Tuning$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    return-object p0
.end method

.method public bridge synthetic serialize(Lkotlinx/serialization/encoding/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lua/nav/Tuning;

    invoke-virtual {p0, p1, p2}, Lua/nav/Tuning$$serializer;->serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/Tuning;)V

    return-void
.end method

.method public final serialize(Lkotlinx/serialization/encoding/Encoder;Lua/nav/Tuning;)V
    .locals 74

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const-string v2, "encoder"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "value"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-wide v2, v1, Lua/nav/Tuning;->N:D

    iget-wide v4, v1, Lua/nav/Tuning;->M:D

    iget-wide v6, v1, Lua/nav/Tuning;->L:D

    iget-boolean v8, v1, Lua/nav/Tuning;->K:Z

    iget v9, v1, Lua/nav/Tuning;->J:I

    iget-wide v10, v1, Lua/nav/Tuning;->I:D

    iget-boolean v12, v1, Lua/nav/Tuning;->H:Z

    iget-boolean v13, v1, Lua/nav/Tuning;->G:Z

    iget-boolean v14, v1, Lua/nav/Tuning;->F:Z

    move-wide v15, v2

    iget-wide v2, v1, Lua/nav/Tuning;->E:D

    move-wide/from16 v17, v4

    iget-wide v4, v1, Lua/nav/Tuning;->D:D

    move-wide/from16 v19, v6

    iget-wide v6, v1, Lua/nav/Tuning;->C:D

    move/from16 p0, v8

    move/from16 v21, v9

    iget-wide v8, v1, Lua/nav/Tuning;->B:J

    move-wide/from16 v22, v10

    iget-wide v10, v1, Lua/nav/Tuning;->A:D

    move/from16 v24, v12

    move/from16 v25, v13

    iget-wide v12, v1, Lua/nav/Tuning;->z:D

    move/from16 v26, v14

    move-wide/from16 v27, v15

    iget-wide v14, v1, Lua/nav/Tuning;->y:J

    move-wide/from16 v29, v2

    iget-wide v2, v1, Lua/nav/Tuning;->x:D

    move-wide/from16 v31, v4

    iget v4, v1, Lua/nav/Tuning;->w:I

    iget-boolean v5, v1, Lua/nav/Tuning;->v:Z

    move-wide/from16 v33, v6

    iget-boolean v6, v1, Lua/nav/Tuning;->u:Z

    iget-boolean v7, v1, Lua/nav/Tuning;->t:Z

    move-wide/from16 v35, v8

    iget-wide v8, v1, Lua/nav/Tuning;->s:J

    move-wide/from16 v37, v10

    iget-wide v10, v1, Lua/nav/Tuning;->r:D

    move-wide/from16 v39, v12

    iget-wide v12, v1, Lua/nav/Tuning;->q:D

    move-wide/from16 v41, v14

    iget-wide v14, v1, Lua/nav/Tuning;->p:D

    move-wide/from16 v43, v2

    iget-wide v2, v1, Lua/nav/Tuning;->o:D

    move/from16 v16, v4

    move/from16 v45, v5

    iget-wide v4, v1, Lua/nav/Tuning;->n:D

    move/from16 v46, v6

    move/from16 v47, v7

    iget-wide v6, v1, Lua/nav/Tuning;->m:J

    move-wide/from16 v48, v8

    iget-wide v8, v1, Lua/nav/Tuning;->l:J

    move-wide/from16 v50, v10

    iget-wide v10, v1, Lua/nav/Tuning;->k:J

    move-wide/from16 v52, v12

    iget-wide v12, v1, Lua/nav/Tuning;->j:D

    move-wide/from16 v54, v14

    iget-wide v14, v1, Lua/nav/Tuning;->i:D

    move-wide/from16 v56, v2

    iget-wide v2, v1, Lua/nav/Tuning;->h:D

    move-wide/from16 v58, v4

    iget-wide v4, v1, Lua/nav/Tuning;->g:D

    move-wide/from16 v60, v6

    iget-wide v6, v1, Lua/nav/Tuning;->f:D

    move-wide/from16 v62, v8

    iget-wide v8, v1, Lua/nav/Tuning;->e:D

    move-wide/from16 v64, v10

    iget-wide v10, v1, Lua/nav/Tuning;->d:D

    move-wide/from16 v66, v12

    iget-wide v12, v1, Lua/nav/Tuning;->c:J

    move-wide/from16 v68, v14

    iget-wide v14, v1, Lua/nav/Tuning;->b:J

    move-wide/from16 v70, v2

    iget-object v2, v1, Lua/nav/Tuning;->a:Ljava/lang/String;

    .line 2
    sget-object v3, Lua/nav/Tuning$$serializer;->descriptor:Lkotlinx/serialization/descriptors/SerialDescriptor;

    invoke-interface {v0, v3}, Lkotlinx/serialization/encoding/Encoder;->a(Lkotlinx/serialization/descriptors/SerialDescriptor;)Lja/q;

    move-result-object v0

    sget-object v72, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    .line 3
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v72

    if-eqz v72, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-string v1, "default"

    .line 5
    invoke-static {v2, v1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lja/q;->w(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v72, 0x3e8

    cmp-long v1, v14, v72

    if-eqz v1, :cond_3

    :goto_1
    invoke-virtual {v0, v3, v2, v14, v15}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_3
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const-wide/16 v14, 0x5dc

    cmp-long v1, v12, v14

    if-eqz v1, :cond_5

    :goto_2
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1, v12, v13}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_5
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const-wide/high16 v12, 0x3fd0000000000000L    # 0.25

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_7

    :goto_3
    const/4 v1, 0x3

    invoke-virtual {v0, v3, v1, v10, v11}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_7
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    :cond_8
    const-wide v10, 0x3fd3333333333333L    # 0.3

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    const/4 v1, 0x4

    invoke-virtual {v0, v3, v1, v8, v9}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_9
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_b

    :goto_5
    const/4 v1, 0x5

    invoke-virtual {v0, v3, v1, v6, v7}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_b
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-eqz v1, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_d

    :goto_6
    const/4 v1, 0x6

    invoke-virtual {v0, v3, v1, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_d
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    move-wide/from16 v4, v70

    if-eqz v1, :cond_e

    goto :goto_7

    :cond_e
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_f

    :goto_7
    const/4 v1, 0x7

    invoke-virtual {v0, v3, v1, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_f
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const/16 v4, 0x8

    move-wide/from16 v8, v68

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_11

    :goto_8
    invoke-virtual {v0, v3, v4, v8, v9}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_11
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-wide/from16 v7, v66

    goto :goto_9

    :cond_12
    const-wide v5, 0x3fb999999999999aL    # 0.1

    move-wide/from16 v7, v66

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_13

    :goto_9
    const/16 v1, 0x9

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_13
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    const-wide/16 v5, 0x2bc

    cmp-long v1, v64, v5

    if-eqz v1, :cond_15

    :goto_a
    const/16 v1, 0xa

    move-wide/from16 v5, v64

    invoke-virtual {v0, v3, v1, v5, v6}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_15
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const-wide/16 v5, 0x1f40

    if-eqz v1, :cond_16

    goto :goto_b

    :cond_16
    cmp-long v1, v62, v5

    if-eqz v1, :cond_17

    :goto_b
    const/16 v1, 0xb

    move-wide/from16 v7, v62

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_17
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const-wide/16 v7, 0xbb8

    if-eqz v1, :cond_18

    goto :goto_c

    :cond_18
    cmp-long v1, v60, v7

    if-eqz v1, :cond_19

    :goto_c
    const/16 v1, 0xc

    move-wide/from16 v9, v60

    invoke-virtual {v0, v3, v1, v9, v10}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_19
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1a

    move-wide/from16 v11, v58

    goto :goto_d

    :cond_1a
    const-wide v9, 0x3fe3333333333333L    # 0.6

    move-wide/from16 v11, v58

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1b

    :goto_d
    const/16 v1, 0xd

    invoke-virtual {v0, v3, v1, v11, v12}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_1b
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_1c

    move-wide/from16 v11, v56

    goto :goto_e

    :cond_1c
    const-wide v9, 0x4041800000000000L    # 35.0

    move-wide/from16 v11, v56

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1d

    :goto_e
    const/16 v1, 0xe

    invoke-virtual {v0, v3, v1, v11, v12}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_1d
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const/16 v9, 0xf

    if-eqz v1, :cond_1e

    move-wide/from16 v12, v54

    goto :goto_f

    :cond_1e
    const-wide/high16 v10, 0x4039000000000000L    # 25.0

    move-wide/from16 v12, v54

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_1f

    :goto_f
    invoke-virtual {v0, v3, v9, v12, v13}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_1f
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_20

    move-wide/from16 v12, v52

    goto :goto_10

    :cond_20
    const-wide/high16 v10, 0x4079000000000000L    # 400.0

    move-wide/from16 v12, v52

    invoke-static {v12, v13, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_21

    :goto_10
    const/16 v1, 0x10

    invoke-virtual {v0, v3, v1, v12, v13}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_21
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const-wide v10, 0x4072c00000000000L    # 300.0

    move-wide/from16 v12, v50

    if-eqz v1, :cond_22

    goto :goto_11

    :cond_22
    invoke-static {v12, v13, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_23

    :goto_11
    const/16 v1, 0x11

    invoke-virtual {v0, v3, v1, v12, v13}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_23
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_12

    :cond_24
    const-wide/16 v12, 0x1770

    cmp-long v1, v48, v12

    if-eqz v1, :cond_25

    :goto_12
    const/16 v1, 0x12

    move-wide/from16 v12, v48

    invoke-virtual {v0, v3, v1, v12, v13}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_25
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_26

    move/from16 v1, v47

    goto :goto_13

    :cond_26
    move/from16 v1, v47

    if-eq v1, v2, :cond_27

    :goto_13
    const/16 v12, 0x13

    invoke-virtual {v0, v3, v12, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_27
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const/16 v12, 0x14

    if-eqz v1, :cond_28

    move/from16 v1, v46

    goto :goto_14

    :cond_28
    move/from16 v1, v46

    if-eq v1, v2, :cond_29

    :goto_14
    invoke-virtual {v0, v3, v12, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_29
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move/from16 v1, v45

    goto :goto_15

    :cond_2a
    move/from16 v1, v45

    if-eq v1, v2, :cond_2b

    :goto_15
    const/16 v13, 0x15

    invoke-virtual {v0, v3, v13, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_2b
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const/16 v13, 0x19

    if-eqz v1, :cond_2c

    move/from16 v1, v16

    goto :goto_16

    :cond_2c
    move/from16 v1, v16

    if-eq v1, v13, :cond_2d

    :goto_16
    const/16 v14, 0x16

    invoke-virtual {v0, v14, v1, v3}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_2d
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_2e

    move-wide/from16 v45, v5

    move-wide/from16 v5, v43

    goto :goto_17

    :cond_2e
    const-wide/high16 v14, 0x4049000000000000L    # 50.0

    move-wide/from16 v45, v5

    move-wide/from16 v5, v43

    invoke-static {v5, v6, v14, v15}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_2f

    :goto_17
    const/16 v1, 0x17

    invoke-virtual {v0, v3, v1, v5, v6}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_2f
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_30

    goto :goto_18

    :cond_30
    cmp-long v1, v41, v45

    if-eqz v1, :cond_31

    :goto_18
    const/16 v1, 0x18

    move-wide/from16 v5, v41

    invoke-virtual {v0, v3, v1, v5, v6}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_31
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    const-wide/high16 v5, 0x403e000000000000L    # 30.0

    move-wide/from16 v14, v39

    if-eqz v1, :cond_32

    goto :goto_19

    :cond_32
    invoke-static {v14, v15, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_33

    :goto_19
    invoke-virtual {v0, v3, v13, v14, v15}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_33
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_34

    move-wide v15, v7

    move-wide/from16 v7, v37

    goto :goto_1a

    :cond_34
    const-wide/high16 v13, 0x4044000000000000L    # 40.0

    move-wide v15, v7

    move-wide/from16 v7, v37

    invoke-static {v7, v8, v13, v14}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_35

    :goto_1a
    const/16 v1, 0x1a

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_35
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto :goto_1b

    :cond_36
    cmp-long v1, v35, v15

    if-eqz v1, :cond_37

    :goto_1b
    const/16 v1, 0x1b

    move-wide/from16 v7, v35

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->t(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_37
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    move-wide/from16 v7, v33

    if-eqz v1, :cond_38

    goto :goto_1c

    :cond_38
    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_39

    :goto_1c
    const/16 v1, 0x1c

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_39
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3a

    move-wide/from16 v7, v31

    goto :goto_1d

    :cond_3a
    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    move-wide/from16 v7, v31

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3b

    :goto_1d
    const/16 v1, 0x1d

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_3b
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3c

    move-wide/from16 v7, v29

    goto :goto_1e

    :cond_3c
    const-wide v5, 0x4062c00000000000L    # 150.0

    move-wide/from16 v7, v29

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_3d

    :goto_1e
    const/16 v1, 0x1e

    invoke-virtual {v0, v3, v1, v7, v8}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_3d
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_3e

    move/from16 v1, v26

    goto :goto_1f

    :cond_3e
    move/from16 v1, v26

    if-eq v1, v2, :cond_3f

    :goto_1f
    const/16 v5, 0x1f

    invoke-virtual {v0, v3, v5, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_3f
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_40

    move/from16 v1, v25

    goto :goto_20

    :cond_40
    move/from16 v1, v25

    if-eq v1, v2, :cond_41

    :goto_20
    const/16 v5, 0x20

    invoke-virtual {v0, v3, v5, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_41
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_42

    move/from16 v1, v24

    goto :goto_21

    :cond_42
    move/from16 v1, v24

    if-eq v1, v2, :cond_43

    :goto_21
    const/16 v2, 0x21

    invoke-virtual {v0, v3, v2, v1}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_43
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_44

    move-wide/from16 v5, v22

    goto :goto_22

    :cond_44
    const-wide v1, 0x4056800000000000L    # 90.0

    move-wide/from16 v5, v22

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_45

    :goto_22
    const/16 v1, 0x22

    invoke-virtual {v0, v3, v1, v5, v6}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_45
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_46

    move/from16 v1, v21

    goto :goto_23

    :cond_46
    move/from16 v1, v21

    if-eq v1, v4, :cond_47

    :goto_23
    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1, v3}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_47
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_24

    :cond_48
    if-eqz p0, :cond_49

    :goto_24
    const/16 v1, 0x24

    move/from16 v2, p0

    invoke-virtual {v0, v3, v1, v2}, Lja/q;->o(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_49
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4a

    move-wide/from16 v4, v19

    goto :goto_25

    :cond_4a
    const-wide v1, 0x406f400000000000L    # 250.0

    move-wide/from16 v4, v19

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4b

    :goto_25
    const/16 v1, 0x25

    invoke-virtual {v0, v3, v1, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_4b
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4c

    move-wide/from16 v4, v17

    goto :goto_26

    :cond_4c
    const-wide v1, 0x409f400000000000L    # 2000.0

    move-wide/from16 v4, v17

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4d

    :goto_26
    const/16 v1, 0x26

    invoke-virtual {v0, v3, v1, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_4d
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_4e

    move-wide/from16 v4, v27

    goto :goto_27

    :cond_4e
    const-wide v1, 0x4085e00000000000L    # 700.0

    move-wide/from16 v4, v27

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v1

    if-eqz v1, :cond_4f

    :goto_27
    const/16 v1, 0x27

    invoke-virtual {v0, v3, v1, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_4f
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v1

    if-eqz v1, :cond_50

    move-object/from16 v1, p2

    goto :goto_28

    :cond_50
    move-object/from16 v1, p2

    iget-wide v4, v1, Lua/nav/Tuning;->O:D

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_51

    :goto_28
    iget-wide v4, v1, Lua/nav/Tuning;->O:D

    const/16 v2, 0x28

    invoke-virtual {v0, v3, v2, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_51
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_52

    goto :goto_29

    :cond_52
    iget-wide v4, v1, Lua/nav/Tuning;->P:D

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_53

    :goto_29
    iget-wide v4, v1, Lua/nav/Tuning;->P:D

    const/16 v2, 0x29

    invoke-virtual {v0, v3, v2, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_53
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_2a

    :cond_54
    iget v2, v1, Lua/nav/Tuning;->Q:I

    if-eq v2, v12, :cond_55

    :goto_2a
    iget v2, v1, Lua/nav/Tuning;->Q:I

    const/16 v4, 0x2a

    invoke-virtual {v0, v4, v2, v3}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_55
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_56

    goto :goto_2b

    :cond_56
    iget-wide v4, v1, Lua/nav/Tuning;->R:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_57

    :goto_2b
    iget-wide v4, v1, Lua/nav/Tuning;->R:D

    const/16 v2, 0x2b

    invoke-virtual {v0, v3, v2, v4, v5}, Lja/q;->p(Lkotlinx/serialization/descriptors/SerialDescriptor;ID)V

    :cond_57
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_58

    goto :goto_2c

    :cond_58
    iget v2, v1, Lua/nav/Tuning;->S:I

    if-eq v2, v9, :cond_59

    :goto_2c
    iget v2, v1, Lua/nav/Tuning;->S:I

    const/16 v4, 0x2c

    invoke-virtual {v0, v4, v2, v3}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_59
    invoke-virtual {v0, v3}, Lja/q;->y(Lkotlinx/serialization/descriptors/SerialDescriptor;)Z

    move-result v2

    if-eqz v2, :cond_5a

    goto :goto_2d

    :cond_5a
    iget v2, v1, Lua/nav/Tuning;->T:I

    if-eqz v2, :cond_5b

    :goto_2d
    iget v1, v1, Lua/nav/Tuning;->T:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1, v3}, Lja/q;->s(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    .line 6
    :cond_5b
    invoke-virtual {v0, v3}, Lja/q;->x(Lkotlinx/serialization/descriptors/SerialDescriptor;)V

    return-void
.end method

.method public bridge typeParametersSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer;"
        }
    .end annotation

    sget-object p0, Lha/n0;->b:[Lkotlinx/serialization/KSerializer;

    return-object p0
.end method
