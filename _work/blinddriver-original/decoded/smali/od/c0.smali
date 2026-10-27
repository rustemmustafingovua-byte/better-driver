.class public final Lod/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lod/b0;


# instance fields
.field public final a:Lua/nav/routing/Route;

.field public final b:[D

.field public final c:[D

.field public final d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lod/b0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lod/c0;->Companion:Lod/b0;

    return-void
.end method

.method public constructor <init>(Lua/nav/routing/Route;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lod/c0;->a:Lua/nav/routing/Route;

    iget-object v1, v1, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, v0, Lod/c0;->b:[D

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, v0, Lod/c0;->c:[D

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v2, :cond_0

    iget-object v6, v0, Lod/c0;->b:[D

    add-int/lit8 v7, v4, -0x1

    aget-wide v8, v6, v7

    sget-object v10, Ldd/t0;->Companion:Ldd/s0;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    iget-wide v12, v11, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    iget-wide v14, v11, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    move-object/from16 v20, v6

    iget-wide v5, v11, Lua/nav/routing/GeoPoint;->a:D

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lua/nav/routing/GeoPoint;

    move/from16 v22, v4

    const/16 v21, 0x1

    iget-wide v3, v11, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v18, v3

    move-wide/from16 v16, v5

    invoke-static/range {v12 .. v19}, Ldd/s0;->a(DDDD)D

    move-result-wide v3

    add-double/2addr v8, v3

    aput-wide v8, v20, v22

    move/from16 v3, v22

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/GeoPoint;

    iget-wide v4, v4, Lua/nav/routing/GeoPoint;->b:D

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iget-wide v8, v6, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iget-wide v8, v6, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    const/4 v6, 0x2

    int-to-double v10, v6

    div-double/2addr v8, v10

    const-wide v12, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double/2addr v8, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D

    move-result-wide v8

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iget-wide v14, v6, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    div-double/2addr v14, v10

    add-double/2addr v14, v12

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->log(D)D

    move-result-wide v10

    sub-double/2addr v8, v10

    iget-object v6, v0, Lod/c0;->c:[D

    aget-wide v10, v6, v7

    mul-double/2addr v4, v4

    mul-double/2addr v8, v8

    add-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    add-double/2addr v4, v10

    aput-wide v4, v6, v3

    add-int/lit8 v4, v3, 0x1

    goto/16 :goto_0

    :cond_0
    const/16 v21, 0x1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v6, 0x2

    if-lt v3, v6, :cond_3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v5, v21

    :goto_1
    if-ge v5, v4, :cond_3

    iget-object v6, v0, Lod/c0;->b:[D

    aget-wide v7, v6, v5

    aget-wide v9, v6, v3

    sub-double/2addr v7, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    cmpl-double v6, v7, v9

    if-gez v6, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v5, v6, :cond_2

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v5

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lu8/m;->A0(Ljava/util/List;)[I

    move-result-object v1

    iput-object v1, v0, Lod/c0;->d:[I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object p0, p0, Lod/c0;->d:[I

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
