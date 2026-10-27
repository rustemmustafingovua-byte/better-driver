.class public final synthetic Lod/i1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Lsc/q0;

.field public final synthetic o:Li9/c;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;Lsc/q0;Li9/c;I)V
    .locals 0

    iput p4, p0, Lod/i1;->l:I

    iput-object p1, p0, Lod/i1;->m:Lua/nav/c;

    iput-object p2, p0, Lod/i1;->n:Lsc/q0;

    iput-object p3, p0, Lod/i1;->o:Li9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lod/i1;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lsc/d;->m:Lsc/d;

    iget-object v1, p0, Lod/i1;->m:Lua/nav/c;

    invoke-virtual {v1, v0}, Lua/nav/c;->R(Lsc/d;)V

    iget-object v0, p0, Lod/i1;->n:Lsc/q0;

    iget-object v0, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lod/i1;->o:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    sget-object v0, Lsc/d;->l:Lsc/d;

    iget-object v1, p0, Lod/i1;->m:Lua/nav/c;

    invoke-virtual {v1, v0}, Lua/nav/c;->R(Lsc/d;)V

    iget-object v0, p0, Lod/i1;->n:Lsc/q0;

    iget-object v0, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lod/i1;->o:Li9/c;

    invoke-interface {p0, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
