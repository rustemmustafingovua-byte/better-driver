.class public final synthetic Lod/r6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/routing/i;

.field public final synthetic n:Lua/nav/routing/RoutingPackInfo;


# direct methods
.method public synthetic constructor <init>(Lua/nav/routing/i;Lua/nav/routing/RoutingPackInfo;I)V
    .locals 0

    iput p3, p0, Lod/r6;->l:I

    iput-object p1, p0, Lod/r6;->m:Lua/nav/routing/i;

    iput-object p2, p0, Lod/r6;->n:Lua/nav/routing/RoutingPackInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lod/r6;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lod/r6;->n:Lua/nav/routing/RoutingPackInfo;

    iget-object v0, v0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    iget-object p0, p0, Lod/r6;->m:Lua/nav/routing/i;

    invoke-virtual {p0, v0}, Lua/nav/routing/i;->a(Ljava/lang/String;)V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Lod/r6;->n:Lua/nav/routing/RoutingPackInfo;

    iget-object v0, v0, Lua/nav/routing/RoutingPackInfo;->a:Ljava/lang/String;

    iget-object p0, p0, Lod/r6;->m:Lua/nav/routing/i;

    invoke-virtual {p0, v0}, Lua/nav/routing/i;->a(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
