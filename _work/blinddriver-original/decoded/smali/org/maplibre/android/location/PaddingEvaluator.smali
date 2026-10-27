.class public final Lorg/maplibre/android/location/PaddingEvaluator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[D>;"
    }
.end annotation


# instance fields
.field private final padding:[D


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/maplibre/android/location/PaddingEvaluator;->padding:[D

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p2, [D

    check-cast p3, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/maplibre/android/location/PaddingEvaluator;->evaluate(F[D[D)[D

    move-result-object p0

    return-object p0
.end method

.method public evaluate(F[D[D)[D
    .locals 16

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "startValue"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "endValue"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, p0

    .line 2
    iget-object v2, v2, Lorg/maplibre/android/location/PaddingEvaluator;->padding:[D

    const/4 v3, 0x0

    aget-wide v4, v0, v3

    aget-wide v6, v1, v3

    sub-double/2addr v6, v4

    move/from16 v8, p1

    float-to-double v12, v8

    mul-double/2addr v6, v12

    add-double/2addr v6, v4

    aput-wide v6, v2, v3

    const/4 v3, 0x1

    .line 3
    aget-wide v10, v0, v3

    aget-wide v8, v1, v3

    move-wide v14, v10

    invoke-static/range {v8 .. v15}, Lm/a;->b(DDDD)D

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    .line 4
    aget-wide v10, v0, v3

    aget-wide v8, v1, v3

    move-wide v14, v10

    invoke-static/range {v8 .. v15}, Lm/a;->b(DDDD)D

    move-result-wide v4

    aput-wide v4, v2, v3

    const/4 v3, 0x3

    .line 5
    aget-wide v10, v0, v3

    aget-wide v8, v1, v3

    move-wide v14, v10

    invoke-static/range {v8 .. v15}, Lm/a;->b(DDDD)D

    move-result-wide v0

    aput-wide v0, v2, v3

    return-object v2
.end method
