.class public final synthetic Lid/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/routing/Route;


# direct methods
.method public synthetic constructor <init>(Lua/nav/routing/Route;I)V
    .locals 0

    iput p2, p0, Lid/o0;->l:I

    iput-object p1, p0, Lid/o0;->m:Lua/nav/routing/Route;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lid/o0;->l:I

    iget-object v0, v0, Lid/o0;->m:Lua/nav/routing/Route;

    packed-switch v1, :pswitch_data_0

    iget-object v0, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_0
    if-ge v3, v2, :cond_0

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    aget-wide v7, v1, v4

    sget-object v4, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v9, v5, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v5, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v13, v6, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, v6, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v5

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v4

    add-double/2addr v7, v4

    aput-wide v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_0
    iget-object v0, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [D

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    :goto_1
    if-ge v3, v2, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/GeoPoint;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    aget-wide v7, v1, v4

    sget-object v4, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v9, v5, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v5, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v13, v6, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v5, v6, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v5

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v4

    add-double/2addr v7, v4

    aput-wide v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
